#include "flo_07.h"
#include "message_ids.h"
#include "sprite/npc/posie.h"

enum {
    NPC_POSIE,
};

EntryList N(entryList) = {
    { 375.0f, 0.0f, 0.0f, 270.0f },
    { 325.0f, 0.0f, 0.0f, 270.0f },
};

MapConfig N(config) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .background = &gBackgroundImage,
    .tattle = { MSG_flo_07_tattle },
};

EvtSource N(802407A0) = SCRIPT({
    GetEntryID(EVT_VAR(0));
    if (EVT_VAR(0) == 1) {
        SetMusicTrack(0, SONG_SUNSHINE_RETURNS, 0, 8);
    } else {
        match EVT_STORY_PROGRESS {
            < STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE {
                SetMusicTrack(0, SONG_FLOWER_FIELDS_CLOUDY, 0, 8);
            } else {
                SetMusicTrack(0, SONG_FLOWER_FIELDS_SUNNY, 0, 8);
            }
        }
    }
    PlaySound(0x80000021);
});

EvtSource N(8024086C) = SCRIPT({
    PushSong(137, 1);
});

EvtSource N(80240890) = SCRIPT({
    FadeOutMusic(0, 250);
    sleep 10;
    PopSong();
});

static s32 N(pad_8CC) = {
    0x00000000,
};

EvtSource N(updateTexturePan_802408D0) = SCRIPT({
    group 0;
    if (EVT_VAR(5) == 1) {
        if (EVT_VAR(6) == 1) {
            if (EVT_VAR(7) == 1) {
                if (EVT_VAR(8) == 1) {
                    N(UnkTexturePanFunc)();
                    return;
                }
            }
        }
    }
    N(UnkTexturePanFunc2)();
});

EvtSource N(8024096C) = SCRIPT({
    group 11;
    EVT_VAR(10) = EVT_VAR(0);
    EVT_VAR(11) = EVT_VAR(1);
    EVT_VAR(12) = EVT_VAR(2);
    EVT_VAR(13) = EVT_VAR(3);
    EVT_VAR(14) = EVT_VAR(4);
    EVT_VAR(12) -= EVT_VAR(0);
    EVT_VAR(13) -= EVT_VAR(1);
    EVT_VAR(0) = (float) EVT_VAR(12);
    EVT_VAR(0) /= 100.0;
    EVT_VAR(15) = 100.0;
    EVT_VAR(15) /= (float) EVT_VAR(0);
    EVT_VAR(15) += 11;
    EVT_VAR(5) = 200;
    EVT_VAR(5) /= EVT_VAR(15);
    EVT_VAR(5) += 1;
    loop EVT_VAR(5) {
        RandInt(EVT_VAR(12), EVT_VAR(0));
        RandInt(EVT_VAR(13), EVT_VAR(1));
        RandInt(199, EVT_VAR(2));
        EVT_VAR(3) = 210;
        EVT_VAR(3) -= EVT_VAR(2);
        EVT_VAR(0) += EVT_VAR(10);
        EVT_VAR(1) += EVT_VAR(11);
        EVT_VAR(2) += EVT_VAR(14);
        PlayEffect(0xD, EVT_VAR(0), EVT_VAR(2), EVT_VAR(1), EVT_VAR(3), 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }
    sleep EVT_VAR(15);
0:
    RandInt(EVT_VAR(12), EVT_VAR(0));
    RandInt(EVT_VAR(13), EVT_VAR(1));
    EVT_VAR(0) += EVT_VAR(10);
    EVT_VAR(1) += EVT_VAR(11);
    PlayEffect(0xD, EVT_VAR(0), EVT_VAR(14), EVT_VAR(1), 200, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sleep EVT_VAR(15);
    goto 0;
});

EvtSource N(exitWalk_80240C18) = EXIT_WALK_SCRIPT(60,  0, "flo_25",  1);

EvtSource N(80240C74) = SCRIPT({
    bind N(exitWalk_80240C18) TRIGGER_FLOOR_ABOVE 0;
});

EvtSource N(main) = SCRIPT({
    EVT_WORLD_LOCATION = LOCATION_FLOWER_FIELDS;
    SetSpriteShading(-1);
    SetCamLeadPlayer(0, 0);
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamEnabled(0, 1);
    EVT_AREA_FLAG(6) = 0;
    MakeNpcs(0, N(npcGroupList_80242B0C));
    await N(802428C4);
    ModifyColliderFlags(3, 6, 0x00000006);
    EVT_VAR(0) = 297;
    EVT_VAR(1) = -95;
    EVT_VAR(2) = 383;
    EVT_VAR(3) = -65;
    EVT_VAR(4) = 0;
    spawn N(8024096C);
    EVT_VAR(0) = 293;
    EVT_VAR(1) = 71;
    EVT_VAR(2) = 378;
    EVT_VAR(3) = 113;
    EVT_VAR(4) = 0;
    spawn N(8024096C);
    EVT_VAR(0) = 21;
    EVT_VAR(1) = -346;
    EVT_VAR(2) = 147;
    EVT_VAR(3) = -242;
    EVT_VAR(4) = 20;
    spawn N(8024096C);
    EVT_VAR(0) = -350;
    EVT_VAR(1) = -190;
    EVT_VAR(2) = -81;
    EVT_VAR(3) = -106;
    EVT_VAR(4) = 0;
    spawn N(8024096C);
    EVT_VAR(0) = -380;
    EVT_VAR(1) = 85;
    EVT_VAR(2) = -95;
    EVT_VAR(3) = 150;
    EVT_VAR(4) = 0;
    spawn N(8024096C);
    EnableTexPanning(51, 1);
    EnableTexPanning(49, 1);
    EnableTexPanning(50, 1);
    spawn {
        EVT_VAR(0) = 2;
        EVT_VAR(1) = -100;
        EVT_VAR(2) = 100;
        EVT_VAR(3) = 0;
        EVT_VAR(4) = 0;
        EVT_VAR(5) = 1;
        EVT_VAR(6) = 1;
        EVT_VAR(7) = 0;
        EVT_VAR(8) = 0;
        EVT_VAR(9) = 0;
        EVT_VAR(10) = 0;
        EVT_VAR(11) = 0;
        EVT_VAR(12) = 0;
        spawn N(updateTexturePan_802408D0);
    }
    spawn {
        EVT_VAR(0) = 3;
        EVT_VAR(1) = 0;
        EVT_VAR(2) = -1200;
        EVT_VAR(3) = 0;
        EVT_VAR(4) = 0;
        EVT_VAR(5) = 0;
        EVT_VAR(6) = 1;
        EVT_VAR(7) = 0;
        EVT_VAR(8) = 0;
        EVT_VAR(9) = 0;
        EVT_VAR(10) = 0;
        EVT_VAR(11) = 0;
        EVT_VAR(12) = 0;
        spawn N(updateTexturePan_802408D0);
    }
    GetEntryID(EVT_VAR(0));
    if (EVT_VAR(0) == 1) {
        spawn N(80241C14);
    } else {
        ModifyColliderFlags(0, 1, 0x7FFFFE00);
        EVT_VAR(0) = N(80240C74);
        spawn EnterWalk;
        spawn N(802424F4);
    }
    await N(802407A0);
    if (EVT_STORY_PROGRESS >= STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE) {
        N(SpawnSunEffect)();
    }
    N(func_80240344_CAC534)();
});

static s32 N(pad_1214)[] = {
    0x00000000, 0x00000000, 0x00000000,
};

NpcSettings N(npcSettings_80241220) = {
    .height = 56,
    .radius = 40,
    .level = 99,
};

#include "world/common/foliage.inc.c"

s32** N(D_80241BB0_CADDA0) = NULL;

EvtSource N(80241BB4) = SCRIPT({
    ShowGotItem(EVT_VAR(0), 1, 0);
    return;
});

EvtSource N(80241BE4) = SCRIPT({
    ShowGotItem(EVT_VAR(0), 1, 16);
    return;
});

EvtSource N(80241C14) = SCRIPT({
    DisablePlayerInput(TRUE);
    DisablePlayerPhysics(TRUE);
    GetNpcPos(NPC_POSIE, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    UseSettingsFrom(0, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) += 30;
    SetPanTarget(0, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    SetCamDistance(0, 300);
    SetCamPitch(0, 11.0, -11.0);
    SetCamSpeed(0, 90.0);
    PanToTarget(0, 0, 1);
    WaitForCam(0, 1.0);
    sleep 20;
    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x00C5));
    sleep 10;
    GotoMap("flo_10", 1);
    sleep 100;
});

EvtSource N(80241D6C) = SCRIPT({
0:
    ShakeCam(0, 0, 1, 1.0);
    sleep 1;
    goto 0;
});

EvtSource N(80241DBC) = SCRIPT({
    if (EVT_AREA_FLAG(6) == 1) {
        return;
    }
    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x0068));
    spawn {
        SetCamDistance(0, 300);
        SetCamPitch(0, 18.0, -7.5);
        SetCamSpeed(0, 0.5);
        PanToTarget(0, 0, 1);
    }
    PlaySound(0x8000006B);
    EVT_MAP_VAR(0) = spawn N(80241D6C);
    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_6, NPC_ANIM_posie_Palette_00_Anim_6, 0, MESSAGE_ID(0x11, 0x0069));
    kill EVT_MAP_VAR(0);
    SetCamDistance(0, 350);
    SetCamPitch(0, 18.0, -7.5);
    SetCamSpeed(0, 8.0);
    PanToTarget(0, 0, 1);
    WaitForCam(0, 1.0);
    sleep 10;
    GetPlayerPos(EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) -= EVT_VAR(2);
    if (EVT_VAR(0) < -250) {
        MakeItemEntity(ITEM_CRYSTAL_BERRY, -225, 100, -25, 13, EVT_SAVE_FLAG(1374));
    } else {
        MakeItemEntity(ITEM_CRYSTAL_BERRY, -265, 100, 54, 13, EVT_SAVE_FLAG(1374));
        EVT_SAVE_FLAG(1396) = 1;
    }
    PlaySound(0x7BC);
    func_802D62E4(956);
    EVT_AREA_FLAG(6) = 1;
    sleep 20;
    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x006A));
    EVT_STORY_PROGRESS = STORY_CH6_GOT_CRYSTAL_BERRY;
});

EvtSource N(interact_80242044) = SCRIPT({
    await N(8024086C);
    NpcFacePlayer(NPC_SELF, 1);
    match EVT_STORY_PROGRESS {
        < STORY_CH6_GOT_MAGICAL_BEAN {
            if (EVT_AREA_FLAG(5) == 0) {
                SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                              0x0070));
                EVT_AREA_FLAG(5) = 1;
            } else {
                SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                              0x0071));
            }
        }
        < STORY_CH6_GOT_FERTILE_SOIL {
            AdjustCam(0, 4.0, 0, 350.0, 18.0, -7.5);
            SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x0065));
            SetNpcAnimation(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_5);
            sleep 20;
            SetNpcAnimation(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_0);
            EVT_VAR(0) = 89;
            EVT_VAR(1) = 1;
            await N(80241BB4);
            AddKeyItem(ITEM_FERTILE_SOIL);
            EVT_STORY_PROGRESS = STORY_CH6_GOT_FERTILE_SOIL;
            SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x0066));
            if (EVT_SAVE_FLAG(1379) == 1) {
                await N(80241DBC);
            }
            ResetCam(0, 4.0);
        }
        < STORY_CH6_GOT_CRYSTAL_BERRY {
            if (EVT_SAVE_FLAG(1379) == 1) {
                if (EVT_AREA_FLAG(6) == 0) {
                    AdjustCam(0, 4.0, 0, 350.0, 18.0, -7.5);
                    await N(80241DBC);
                    ResetCam(0, 4.0);
                } else {
                    SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                                  0x0072));
                }
            } else {
                SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                              0x0072));
            }
        }
        < STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE {
            if (EVT_SAVE_FLAG(1374) == 0) {
                SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                              0x0072));
            } else {
                if (EVT_STORY_PROGRESS < STORY_CH6_GOT_WATER_STONE) {
                    SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                                  0x0073));
                } else {
                    SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                                  0x0074));
                }
                ContinueSpeech(-1, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                               0x0075));
            }
        }
        < STORY_CH6_RETURNED_TO_TOAD_TOWN {
            SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x0076));
        } else {
            SpeakToPlayer(NPC_SELF, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                          0x0077));
        }
    }
    await N(80240890);
});

EvtSource N(init_80242428) = SCRIPT({
    if (EVT_STORY_PROGRESS == STORY_CH6_GOT_CRYSTAL_BERRY) {
        if (EVT_SAVE_FLAG(1374) == 0) {
            if (EVT_SAVE_FLAG(1396) == 0) {
                MakeItemEntity(ITEM_CRYSTAL_BERRY, -225, 0, -25, 17, EVT_SAVE_FLAG(1374));
            } else {
                MakeItemEntity(ITEM_CRYSTAL_BERRY, -265, 0, 54, 17, EVT_SAVE_FLAG(1374));
            }
        }
    }
    EVT_AREA_FLAG(5) = 0;
    BindNpcInteract(NPC_SELF, N(interact_80242044));
});

EvtSource N(802424F4) = SCRIPT({
    if (EVT_AREA_VAR(3) != 0) {
        DisablePlayerInput(TRUE);
        sleep 10;
        if (EVT_AREA_VAR(3) < 5) {
            SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                          0x006E));
            GetPlayerPos(EVT_VAR(1), EVT_VAR(2), EVT_VAR(3));
            PlayerMoveTo(410, EVT_VAR(3), 10);
            EVT_AREA_VAR(3) += 1;
        } else {
            SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_2, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                          0x006F));
            EVT_AREA_VAR(3) = 0;
        }
        DisablePlayerInput(FALSE);
    }
});

const char N(flo_25_name_hack)[];

EvtSource N(tree1_Callback) = SCRIPT({
    DisablePlayerInput(TRUE);
    if (EVT_STORY_PROGRESS < STORY_CH6_GOT_CRYSTAL_BERRY) {
        NpcFacePlayer(NPC_POSIE, 1);
        sleep 10;
        SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_4, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                      0x0067));
        if (EVT_STORY_PROGRESS == STORY_CH6_GOT_FERTILE_SOIL) {
            if (EVT_SAVE_FLAG(1379) == 1) {
                UseSettingsFrom(0, -250, 0, 0);
                SetPanTarget(0, -250, 0, 0);
                SetCamDistance(0, 350);
                PanToTarget(0, 0, 1);
                await N(80241DBC);
                ResetCam(0, 4.0);
            }
        }
    } else {
        if (EVT_SAVE_FLAG(1374) == 0) {
            NpcFacePlayer(NPC_POSIE, 1);
            sleep 10;
            SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_4, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11,
                          0x0067));
        } else {
            EVT_AREA_VAR(2) += 1;
            match EVT_AREA_VAR(2) {
                < 2 {
                    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_3, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x006B));
                }
                < 5 {
                    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_3, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x006C));
                }
                >= 5 {
                    SpeakToPlayer(NPC_POSIE, NPC_ANIM_posie_Palette_00_Anim_3, NPC_ANIM_posie_Palette_00_Anim_1, 0, MESSAGE_ID(0x11, 0x006D));
                    EVT_AREA_VAR(3) = 1;
                    GotoMap(N(flo_25_name_hack), 1);
                    sleep 100;
                }
            }
        }
    }
    ResetCam(0, 4.0);
    DisablePlayerInput(FALSE);
});

FoliageModelList N(tree1_Leaves) = {
    .count = 3,
    .models = { 19, 20, 21 }
};

FoliageModelList N(tree1_Trunk) = {
    .count = 1,
    .models = { 18 }
};

ShakeTreeConfig N(tree1) = {
    .leaves = &N(tree1_Leaves),
    .trunk = &N(tree1_Trunk),
    .callback = &N(tree1_Callback),
};

Vec4f N(triggerCoord_802428B4) = { -309.0f, 0.0f, 31.0f, 0.0f };

EvtSource N(802428C4) = SCRIPT({
    EVT_VAR(0) = N(tree1);
    bind N(shakeTree) TRIGGER_WALL_HAMMER 4;
    bind N(shakeTree) TRIGGER_POINT_BOMB N(triggerCoord_802428B4);
});

StaticNpc N(npcGroup_8024291C) = {
    .id = NPC_POSIE,
    .settings = &N(npcSettings_80241220),
    .pos = { -260.0f, 0.0f, 0.0f },
    .flags = NPC_FLAG_PASSIVE | NPC_FLAG_100 | NPC_FLAG_LOCK_ANIMS | NPC_FLAG_NO_Y_MOVEMENT,
    .init = &N(init_80242428),
    .yaw = 90,
    .dropFlags = 0x80,
    .heartDrops = NO_DROPS,
    .flowerDrops = NO_DROPS,
    .animations = {
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
        NPC_ANIM_posie_Palette_00_Anim_1,
    },
    .tattle = MESSAGE_ID(0x1A, 0x00DE),
};

NpcGroupList N(npcGroupList_80242B0C) = {
    NPC_GROUP(N(npcGroup_8024291C), BATTLE_ID(0, 0, 0, 0)),
    {},
};

ApiStatus N(func_8024061C_CAC80C)(Evt* script, s32 isInitialCall) {
    s32 i;

    if (N(D_80241BB0_CADDA0) == NULL) {
        N(D_80241BB0_CADDA0) = heap_malloc(16 * sizeof(s32));
        for (i = 0; i < 16; i++) {
            N(D_80241BB0_CADDA0)[i] = script->varTable[i];
        }
    } else {
        for (i = 0; i < 16; i++) {
            script->varTable[i] = N(D_80241BB0_CADDA0)[i];
        }
        heap_free(N(D_80241BB0_CADDA0));
        N(D_80241BB0_CADDA0) = NULL;
    }
    return ApiStatus_DONE2;
}

#include "world/common/GetItemName.inc.c"

const char N(flo_25_name_hack)[] = "flo_25";
