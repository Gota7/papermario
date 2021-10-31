#include "common.h"

//INCLUDE_ASM(s32, "os/48020_len_a00", osPfsChecker, OSPfs* pfs);

#define ARRLEN(x) ((s32)(sizeof(x) / sizeof(x[0])))
#define CHNL_ERR(format) ((format.rxsize & CHNL_ERR_MASK) >> 4)

#define CONT_CMD_REQUEST_STATUS 0
#define CONT_CMD_READ_BUTTON 1
#define CONT_CMD_READ_MEMPACK 2
#define CONT_CMD_WRITE_MEMPACK 3
#define CONT_CMD_READ_EEPROM 4
#define CONT_CMD_WRITE_EEPROM 5
#define CONT_CMD_RESET 0xff

#define CONT_CMD_REQUEST_STATUS_TX 1
#define CONT_CMD_READ_BUTTON_TX 1
#define CONT_CMD_READ_MEMPACK_TX 3
#define CONT_CMD_WRITE_MEMPACK_TX 35
#define CONT_CMD_READ_EEPROM_TX 2
#define CONT_CMD_WRITE_EEPROM_TX 10
#define CONT_CMD_RESET_TX 1

#define CONT_CMD_REQUEST_STATUS_RX 3
#define CONT_CMD_READ_BUTTON_RX 4
#define CONT_CMD_READ_MEMPACK_RX 33
#define CONT_CMD_WRITE_MEMPACK_RX 1
#define CONT_CMD_READ_EEPROM_RX 8
#define CONT_CMD_WRITE_EEPROM_RX 1
#define CONT_CMD_RESET_RX 3

#define CONT_CMD_NOP 0xff
#define CONT_CMD_END 0xfe //indicates end of a command
#define CONT_CMD_EXE 1    //set pif ram status byte to this to do a command

#define DIR_STATUS_EMPTY 0
#define DIR_STATUS_UNKNOWN 1
#define DIR_STATUS_OCCUPIED 2

#define ERRCK(fn) \
    ret = fn;     \
    if (ret != 0) \
        return ret;

#define SET_ACTIVEBANK_TO_ZERO        \
    if (pfs->activebank != 0)         \
    {                                 \
        ERRCK(__osPfsSelectBank(pfs, 0)) \
    }

#define PFS_CHECK_ID                              \
    if (__osCheckId(pfs) == PFS_ERR_NEW_PACK) \
        return PFS_ERR_NEW_PACK;

#define PFS_CHECK_STATUS                          \
    if ((pfs->status & PFS_INITIALIZED) == 0) \
        return PFS_ERR_INVALID;

#define PFS_GET_STATUS                      \
    __osSiGetAccess();                      \
    ret = __osPfsGetStatus(queue, channel); \
    __osSiRelAccess();                      \
    if (ret != 0)                           \
        return ret;

typedef struct
{
    /* 0x0 */ u32 ramarray[15];
    /* 0x3C */ u32 pifstatus;
} OSPifRam;

typedef struct
{
    /* 0x0 */ u8 dummy;
    /* 0x1 */ u8 txsize;
    /* 0x2 */ u8 rxsize;
    /* 0x3 */ u8 cmd;
    /* 0x4 */ u16 button;
    /* 0x6 */ s8 stick_x;
    /* 0x7 */ s8 stick_y;
} __OSContReadFormat;

typedef struct
{
    /* 0x0 */ u8 dummy;
    /* 0x1 */ u8 txsize;
    /* 0x2 */ u8 rxsize;
    /* 0x3 */ u8 cmd;
    /* 0x4 */ u8 typeh;
    /* 0x5 */ u8 typel;
    /* 0x6 */ u8 status;
    /* 0x7 */ u8 dummy1;
} __OSContRequesFormat;

typedef struct
{
    /* 0x0 */ u8 txsize;
    /* 0x1 */ u8 rxsize;
    /* 0x2 */ u8 cmd;
    /* 0x3 */ u8 typeh;
    /* 0x4 */ u8 typel;
    /* 0x5 */ u8 status;
} __OSContRequesFormatShort;

typedef struct
{
    /* 0x0 */ u8 dummy;
    /* 0x1 */ u8 txsize;
    /* 0x2 */ u8 rxsize;
    /* 0x3 */ u8 cmd;
    /* 0x4 */ u16 address;
    /* 0x6 */ u8 data[BLOCKSIZE];
    /* 0x26 */ u8 datacrc;
} __OSContRamReadFormat;

typedef union {
    /* 0x0 */ struct
    {
        /* 0x0 */ u8 bank;
        /* 0x1 */ u8 page;
    } inode_t;
    /* 0x0 */ u16 ipage;
} __OSInodeUnit;

typedef struct
{
    /* 0x0 */ u32 game_code;
    /* 0x4 */ u16 company_code;
    /* 0x6 */ __OSInodeUnit start_page;
    /* 0x8 */ u8 status;
    /* 0x9 */ s8 reserved;
    /* 0xA */ u16 data_sum;
    /* 0xC */ u8 ext_name[PFS_FILE_EXT_LEN];
    /* 0x10 */ u8 game_name[PFS_FILE_NAME_LEN];
} __OSDir;

typedef struct
{
    /* 0x0 */ __OSInodeUnit inode_page[128];
} __OSInode;

typedef struct
{
    /* 0x0 */ u32 repaired;
    /* 0x4 */ u32 random;
    /* 0x8 */ u64 serial_mid;
    /* 0x10 */ u64 serial_low;
    /* 0x18 */ u16 deviceid;
    /* 0x1A */ u8 banks;
    /* 0x1B */ u8 version;
    /* 0x1C */ u16 checksum;
    /* 0x1E */ u16 inverted_checksum;
} __OSPackId;

typedef struct
{
    /* 0x0 */ u8 txsize;
    /* 0x1 */ u8 rxsize;
    /* 0x2 */ u8 cmd;
    /* 0x3 */ u8 address;
    /* 0x4 */ u8 data[EEPROM_BLOCK_SIZE];
} __OSContEepromFormat;

typedef struct
{
    /* 0x0 */ __OSInode inode;
    /* 0x100 */ u8 bank;
    /* 0x101 */ u8 map[256];
} __OSInodeCache;

s32 osPfsChecker(OSPfs *pfs) {
    int j;   //1156
    s32 ret; //1152
    __OSInodeUnit next_page;
    __OSInode checked_inode;
    __OSInode tmp_inode; //636
    __OSDir tmp_dir;
    __OSInodeUnit file_next_node[16];
    __OSInodeCache cache; //56
    int fixed;            //52
    u8 bank;              //51
    s32 cc;               //44
    s32 cl;               //40
    int offset;           //36

    fixed = 0;
    ret = __osCheckId(pfs);
    if (ret == PFS_ERR_NEW_PACK)
        ret = __osGetId(pfs);
    if (ret != 0)
        return ret;
    ERRCK(corrupted_init(pfs, &cache));
    for (j = 0; j < pfs->dir_size; j++)
    {
        ERRCK(__osContRamRead(pfs->queue, pfs->channel, pfs->dir_table + j, (u8*)&tmp_dir));
        if (tmp_dir.company_code != 0 && tmp_dir.game_code != 0)
        {
            next_page = tmp_dir.start_page;
            cc = 0;
            cl = 0;
            bank = 255;
            while (next_page.ipage >= pfs->inode_start_page && next_page.inode_t.bank < pfs->banks && next_page.inode_t.page > 0 && next_page.inode_t.page < 128)
            {
                if (bank != next_page.inode_t.bank)
                {
                    bank = next_page.inode_t.bank;
                    ret = __osPfsRWInode(pfs, &tmp_inode, OS_READ, bank);
                    if (ret != 0 && ret != PFS_ERR_INCONSISTENT)
                        return ret;
                }
                cc = corrupted(pfs, next_page, &cache) - cl;
                if (cc != 0)
                    break;
                cl = 1;
                next_page = tmp_inode.inode_page[next_page.inode_t.page];
            }
            if (cc == 0 && next_page.ipage == 1)
                continue;

            tmp_dir.company_code = 0;
            tmp_dir.game_code = 0;
            tmp_dir.start_page.ipage = 0;
            tmp_dir.status = DIR_STATUS_EMPTY;
            tmp_dir.data_sum = 0;
            SET_ACTIVEBANK_TO_ZERO;
            ERRCK(__osContRamWrite(pfs->queue, pfs->channel, pfs->dir_table + j, (u8*)&tmp_dir, FALSE));
            fixed++;
        }
        else
        {
            if (tmp_dir.company_code == 0 && tmp_dir.game_code == 0)
                continue;
            tmp_dir.company_code = 0;
            tmp_dir.game_code = 0;
            tmp_dir.start_page.ipage = 0;
            tmp_dir.status = DIR_STATUS_EMPTY;
            tmp_dir.data_sum = 0;

            SET_ACTIVEBANK_TO_ZERO;
            ERRCK(__osContRamWrite(pfs->queue, pfs->channel, pfs->dir_table + j, (u8*)&tmp_dir, FALSE));
            fixed++;
        }
    }
    for (j = 0; j < pfs->dir_size; j++)
    {
        ERRCK(__osContRamRead(pfs->queue, pfs->channel, pfs->dir_table + j, (u8*)&tmp_dir));

        if (tmp_dir.company_code != 0 && tmp_dir.game_code != 0 &&
            tmp_dir.start_page.ipage >= ((__OSInodeUnit *)&(pfs->inode_start_page) + 1)->ipage) //weird
        {
            file_next_node[j].ipage = tmp_dir.start_page.ipage;
        }
        else
        {
            file_next_node[j].ipage = 0;
        }
    }
    for (bank = 0; bank < pfs->banks; bank++)
    {
        ret = __osPfsRWInode(pfs, &tmp_inode, 0, bank);
        if (ret != 0 && ret != PFS_ERR_INCONSISTENT)
            return ret;
        if (bank > 0)
        {
            offset = 1;
        }
        else
        {
            offset = pfs->inode_start_page;
        }
        for (j = 0; j < offset; j++)
        {
            checked_inode.inode_page[j].ipage = tmp_inode.inode_page[j].ipage;
        }
        for (; j < 128; j++)
        {
            checked_inode.inode_page[j].ipage = 3;
        }
        for (j = 0; j < pfs->dir_size; j++)
        {
            while (file_next_node[j].inode_t.bank == bank && file_next_node[j].ipage >= ((__OSInodeUnit *)&(pfs->inode_start_page) + 1)->ipage)
            {
                u8 pp = file_next_node[j].inode_t.page;
                file_next_node[j] = checked_inode.inode_page[pp] = tmp_inode.inode_page[pp];
            }
        }
        ERRCK(__osPfsRWInode(pfs, &checked_inode, OS_WRITE, bank));
    }
    if (fixed)
        pfs->status |= PFS_CORRUPTED;
    else
        pfs->status &= ~PFS_CORRUPTED;

    return 0;
}

INCLUDE_ASM(s32, "os/48020_len_a00", corrupted_init);

INCLUDE_ASM(s32, "os/48020_len_a00", corrupted);

INCLUDE_ASM(s32, "os/48020_len_a00", osPfsIsPlug, OSMesgQueue* queue, u8* unk);

INCLUDE_ASM(s32, "os/48020_len_a00", osPfsRequestData);

INCLUDE_ASM(s32, "os/48020_len_a00", osPfsGetInitData);
