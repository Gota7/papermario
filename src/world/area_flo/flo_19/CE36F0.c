#include "flo_19.h"
#include "message_ids.h"

EntryList N(entryList) = {
    {   0.0f,    0.0f, 100.0f,  90.0f },
    { 460.0f,    0.0f,   0.0f, 270.0f },
    {   0.0f, -500.0f,   0.0f,   0.0f },
    {   0.0f,    0.0f,   0.0f,   0.0f },
};

MapConfig N(config) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .background = &gBackgroundImage,
    .tattle = { MSG_flo_19_tattle },
};

// Extraneous END_CASE_MULTI
#ifdef NON_MATCHING
EvtSource N(802409C0) = SCRIPT({
    GetEntryID(EVT_VAR(0));
    match EVT_VAR(0) {
        0, 1 {
            SetMusicTrack(0, SONG_CLOUDY_CLIMB, 0, 8);
        }
        2, 7 {}
        == 3 {
            if (EVT_AREA_FLAG(44) != 0) {
            } else {
                FadeOutMusic(1, 3000);
                FadeInMusic(0, 50, 0, 3000, 0, 127);
            }
        }
    }
});
#else
EvtSource N(802409C0) = {
    EVT_CMD(EVT_OP_CALL, GetEntryID, EVT_VAR(0)),
    EVT_CMD(EVT_OP_SWITCH, EVT_VAR(0)),
        EVT_CMD(EVT_OP_CASE_OR_EQ, 0),
        EVT_CMD(EVT_OP_CASE_OR_EQ, 1),
            EVT_CMD(EVT_OP_CALL, SetMusicTrack, 0, SONG_CLOUDY_CLIMB, 0, 8),
        EVT_CMD(EVT_OP_END_CASE_GROUP),
        EVT_CMD(EVT_OP_CASE_OR_EQ, 2),
        EVT_CMD(EVT_OP_CASE_OR_EQ, 7),
        EVT_CMD(EVT_OP_END_CASE_GROUP),
        EVT_CMD(EVT_OP_CASE_EQ, 3),
            EVT_CMD(EVT_OP_IF_NE, EVT_AREA_FLAG(44), 0),
            EVT_CMD(EVT_OP_ELSE),
                EVT_CMD(EVT_OP_CALL, FadeOutMusic, 1, 3000),
                EVT_CMD(EVT_OP_CALL, FadeInMusic, 0, 50, 0, 3000, 0, 127),
            EVT_CMD(EVT_OP_END_IF),
        EVT_CMD(EVT_OP_END_CASE_GROUP),
    EVT_CMD(EVT_OP_END_SWITCH),
    EVT_CMD(EVT_OP_RETURN),
    EVT_CMD(EVT_OP_END)
};
#endif

static s32 N(pad_ABC) = {
    0x00000000,
};

EvtSource N(80240AC0) = SCRIPT({
    MakeItemEntity(ITEM_S_JUMP_CHG, -200, 160, -213, 17, EVT_SAVE_FLAG(1391));
});

static s32 N(pad_AF4)[] = {
    0x00000000, 0x00000000, 0x00000000,
};

EvtSource N(updateTexturePan_80240B00) = SCRIPT({
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

EvtSource N(exitWalk_80240B9C) = EXIT_WALK_SCRIPT(60,  1, "flo_21",  0);

EvtSource N(80240BF8) = SCRIPT({
    bind N(exitWalk_80240B9C) TRIGGER_FLOOR_ABOVE 0;
});

EvtSource N(main) = SCRIPT({
    EVT_WORLD_LOCATION = LOCATION_CLOUDY_CLIMB;
    SetSpriteShading(-1);
    SetCamLeadPlayer(0, 0);
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamEnabled(0, 1);
    EVT_SAVE_FLAG(1985) = 1;
    await N(80240AC0);
    ParentColliderToModel(12, 86);
    HidePlayerShadow(TRUE);
    spawn N(80242FD0);
    spawn N(80241780);
    ModifyColliderFlags(3, 5, 0x00000007);
    EnableTexPanning(17, 1);
    EnableTexPanning(18, 1);
    spawn {
        EVT_VAR(0) = 1;
        EVT_VAR(1) = -120;
        EVT_VAR(2) = 0;
        EVT_VAR(3) = 0;
        EVT_VAR(4) = 0;
        EVT_VAR(5) = 1;
        EVT_VAR(6) = 0;
        EVT_VAR(7) = 0;
        EVT_VAR(8) = 0;
        EVT_VAR(9) = 0;
        EVT_VAR(10) = 0;
        EVT_VAR(11) = 0;
        EVT_VAR(12) = 0;
        spawn N(updateTexturePan_80240B00);
    }
    spawn {
        EVT_VAR(0) = 2;
        EVT_VAR(1) = -90;
        EVT_VAR(2) = 0;
        EVT_VAR(3) = 0;
        EVT_VAR(4) = 0;
        EVT_VAR(5) = 1;
        EVT_VAR(6) = 0;
        EVT_VAR(7) = 0;
        EVT_VAR(8) = 0;
        EVT_VAR(9) = 0;
        EVT_VAR(10) = 0;
        EVT_VAR(11) = 0;
        EVT_VAR(12) = 0;
        spawn N(updateTexturePan_80240B00);
    }
    GetEntryID(EVT_VAR(0));
    if (EVT_VAR(0) != 3) {
        EVT_AREA_FLAG(44) = 0;
    }
    match EVT_VAR(0) {
        == 0 {
            spawn N(80240BF8);
        }
        == 1 {
            ModifyColliderFlags(0, 1, 0x7FFFFE00);
            EVT_VAR(0) = N(80240BF8);
            spawn EnterWalk;
        }
        == 2 {
            spawn N(80242A2C);
            spawn N(80240BF8);
        }
        == 3 {
            spawn N(80241CC4);
            spawn N(80240BF8);
        }
    }
    await N(802409C0);
    if (EVT_STORY_PROGRESS >= STORY_CH6_DESTROYED_PUFF_PUFF_MACHINE) {
        N(func_8024030C_CE39FC)();
    }
});

static s32 N(pad_1044)[] = {
    0x00000000, 0x00000000, 0x00000000,
};

EvtSource N(80241050) = SCRIPT({
    group 239;
    EVT_VAR(15) = 0;
0:
    EVT_VAR(0) = -215.4375;
    EVT_VAR(1) = 128.59375;
    EVT_VAR(2) = -200.0;
    EVT_VAR(1) += (float) EVT_MAP_VAR(12);
    TranslateGroup(28, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) = -79.859375;
    N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(1), 5.0, 136.765625, 300, 0, 0);
    EVT_VAR(2) = -200.0;
    EVT_VAR(1) += (float) EVT_MAP_VAR(13);
    TranslateGroup(32, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) = -364.265625;
    N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(1), 5.0, 106.765625, 300, 0, 0);
    EVT_VAR(2) = 10.0;
    EVT_VAR(1) += (float) EVT_MAP_VAR(14);
    TranslateGroup(36, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    EVT_VAR(0) = 295.734375;
    N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(1), 65.0, 86.984375, 200, 0, 0);
    EVT_VAR(2) = -80.0;
    EVT_VAR(1) += (float) EVT_MAP_VAR(15);
    TranslateGroup(40, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2));
    N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(2), 0.96875, 1.03125, 15, 0, 0);
    N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(3), 1.03125, 0.96875, 15, 0, 0);
    EVT_VAR(0) = (float) EVT_MAP_VAR(12);
    EVT_VAR(1) = (float) EVT_MAP_VAR(12);
    EVT_VAR(0) *= -0.01953125;
    EVT_VAR(1) *= 0.0400390625;
    EVT_VAR(0) += (float) EVT_VAR(2);
    EVT_VAR(1) += (float) EVT_VAR(3);
    ScaleGroup(28, EVT_VAR(0), EVT_VAR(1), 1);
    EVT_VAR(0) = (float) EVT_MAP_VAR(13);
    EVT_VAR(1) = (float) EVT_MAP_VAR(13);
    EVT_VAR(0) *= -0.01953125;
    EVT_VAR(1) *= 0.0400390625;
    EVT_VAR(0) += (float) EVT_VAR(2);
    EVT_VAR(1) += (float) EVT_VAR(3);
    ScaleGroup(32, EVT_VAR(0), EVT_VAR(1), 1);
    EVT_VAR(0) = (float) EVT_MAP_VAR(14);
    EVT_VAR(1) = (float) EVT_MAP_VAR(14);
    EVT_VAR(0) *= -0.01953125;
    EVT_VAR(1) *= 0.0400390625;
    EVT_VAR(0) += (float) EVT_VAR(2);
    EVT_VAR(1) += (float) EVT_VAR(3);
    ScaleGroup(36, EVT_VAR(0), EVT_VAR(1), 1);
    EVT_VAR(0) = (float) EVT_MAP_VAR(15);
    EVT_VAR(1) = (float) EVT_MAP_VAR(15);
    EVT_VAR(0) *= -0.01953125;
    EVT_VAR(1) *= 0.0400390625;
    EVT_VAR(0) += (float) EVT_VAR(2);
    EVT_VAR(1) += (float) EVT_VAR(3);
    ScaleGroup(40, EVT_VAR(0), EVT_VAR(1), 1);
    UpdateColliderTransform(8);
    UpdateColliderTransform(9);
    UpdateColliderTransform(7);
    UpdateColliderTransform(10);
    EVT_VAR(15) += 1;
    if (EVT_VAR(15) >= 1200) {
        EVT_VAR(15) = 0;
    }
    EVT_VAR(0) = (float) EVT_VAR(10);
    EVT_VAR(1) = (float) EVT_VAR(11);
    EVT_VAR(2) = (float) EVT_VAR(12);
    EVT_VAR(3) = (float) EVT_VAR(13);
    EVT_VAR(0) *= -0.046875;
    EVT_VAR(1) *= -0.09375;
    EVT_VAR(2) *= -0.09375;
    EVT_VAR(3) *= -0.09375;
    EVT_MAP_VAR(12) += (float) EVT_VAR(0);
    EVT_MAP_VAR(13) += (float) EVT_VAR(1);
    EVT_MAP_VAR(14) += (float) EVT_VAR(2);
    EVT_MAP_VAR(15) += (float) EVT_VAR(3);
    EVT_MAP_VAR(12) *= 0.84375;
    EVT_MAP_VAR(13) *= 0.84375;
    EVT_MAP_VAR(14) *= 0.84375;
    EVT_MAP_VAR(15) *= 0.84375;
    EVT_VAR(10) += (float) EVT_MAP_VAR(12);
    EVT_VAR(11) += (float) EVT_MAP_VAR(13);
    EVT_VAR(12) += (float) EVT_MAP_VAR(14);
    EVT_VAR(13) += (float) EVT_MAP_VAR(15);
    sleep 1;
    goto 0;
});

EvtSource N(80241650) = SCRIPT({
    spawn {
        EVT_MAP_VAR(12) += -1.5;
        sleep 1;
        EVT_MAP_VAR(12) += -1.5;
    }
});

EvtSource N(8024169C) = SCRIPT({
    spawn {
        EVT_MAP_VAR(13) += -1.5;
        sleep 1;
        EVT_MAP_VAR(13) += -1.5;
    }
});

EvtSource N(802416E8) = SCRIPT({
    spawn {
        EVT_MAP_VAR(14) += -1.5;
        sleep 1;
        EVT_MAP_VAR(14) += -1.5;
    }
});

EvtSource N(80241734) = SCRIPT({
    spawn {
        EVT_MAP_VAR(15) += -1.5;
        sleep 1;
        EVT_MAP_VAR(15) += -1.5;
    }
});

EvtSource N(80241780) = SCRIPT({
    ParentColliderToModel(8, 28);
    ParentColliderToModel(9, 32);
    ParentColliderToModel(7, 36);
    ParentColliderToModel(10, 40);
    SetModelFlags(28, 256, 1);
    SetModelFlags(32, 256, 1);
    SetModelFlags(36, 256, 1);
    SetModelFlags(40, 256, 1);
    spawn N(80241050);
    bind N(80241650) TRIGGER_FLOOR_TOUCH 8;
    bind N(8024169C) TRIGGER_FLOOR_TOUCH 9;
    bind N(802416E8) TRIGGER_FLOOR_TOUCH 7;
    bind N(80241734) TRIGGER_FLOOR_TOUCH 10;
    spawn {
        EVT_VAR(15) = 0;
0:
        N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(0), 0.96875, 1.03125, 15, 0, 0);
        N(func_80240340_CE3A30)(EVT_VAR(15), EVT_VAR(1), 1.03125, 0.96875, 15, 0, 0);
        ScaleModel(70, EVT_VAR(1), EVT_VAR(0), 1);
        ScaleModel(60, EVT_VAR(1), EVT_VAR(0), 1);
        ScaleModel(64, EVT_VAR(0), EVT_VAR(1), 1);
        ScaleModel(68, EVT_VAR(0), EVT_VAR(1), 1);
        ScaleModel(66, EVT_VAR(0), EVT_VAR(1), 1);
        ScaleModel(58, EVT_VAR(1), EVT_VAR(0), 1);
        ScaleModel(62, EVT_VAR(0), EVT_VAR(1), 1);
        ScaleModel(72, EVT_VAR(0), EVT_VAR(1), 1);
        EVT_VAR(15) += 1;
        if (EVT_VAR(15) >= 30) {
            EVT_VAR(15) = 0;
        }
        sleep 1;
        goto 0;
    }
});

static s32 N(pad_1A68)[] = {
    0x00000000, 0x00000000,
};

EvtSource N(80241A70) = SCRIPT({
    EVT_VAR(0) = 0;
10:
    N(func_80240784_CE3E74)();
    EVT_VAR(0) += 25;
    sleep 1;
    if (EVT_VAR(0) < 255) {
        goto 10;
    }
    EVT_VAR(0) = 255;
    N(func_80240784_CE3E74)();
    sleep 1;
});

EvtSource N(80241B10) = SCRIPT({
    EVT_VAR(0) = 255;
10:
    N(func_80240784_CE3E74)();
    EVT_VAR(0) -= 25;
    sleep 1;
    if (EVT_VAR(0) > 0) {
        goto 10;
    }
    EVT_VAR(0) = 0;
    N(func_80240784_CE3E74)();
    sleep 1;
});

EvtSource N(80241BB0) = SCRIPT({
    TranslateGroup(79, 0, EVT_VAR(0), 0);
    TranslateGroup(92, 0, EVT_VAR(0), 0);
    EVT_VAR(1) = (float) EVT_VAR(0);
    EVT_VAR(1) *= -12.0;
    RotateGroup(79, EVT_VAR(1), 0, 1, 0);
    RotateGroup(92, EVT_VAR(1), 0, 1, 0);
});

EvtSource N(80241C58) = SCRIPT({
    TranslateGroup(84, 0, EVT_VAR(0), 0);
    EVT_VAR(1) = (float) EVT_VAR(0);
    EVT_VAR(1) *= -12.0;
    RotateGroup(84, EVT_VAR(1), 0, 1, 0);
});

EvtSource N(80241CC4) = SCRIPT({
    DisablePlayerInput(TRUE);
    SetPlayerActionState(10);
    DisablePartnerAI(0);
    SetNpcFlagBits(NPC_PARTNER, ((NPC_FLAG_100)), TRUE);
    ModifyColliderFlags(0, 13, 0x7FFFFE00);
    ModifyColliderFlags(0, 5, 0x7FFFFE00);
    SetCamType(0, 1, 0);
    UseSettingsFrom(0, 0, 0, 0);
    SetPanTarget(0, 0, 0, 0);
    SetCamDistance(0, 350);
    SetCamPitch(0, 17.0, 11.0);
    SetCamPosA(0, 0, 0);
    SetCamPosB(0, 0, 0);
    SetCamSpeed(0, 90.0);
    PanToTarget(0, 0, 1);
    EnableGroup(2, 0);
    EnableGroup(13, 0);
    EnableGroup(24, 0);
    EnableGroup(41, 0);
    EnableGroup(48, 0);
    EnableGroup(57, 0);
    EnableGroup(74, 0);
    EVT_VAR(9) = (int) 45.0;
    EVT_VAR(10) = (int) 28.0;
    EVT_VAR(11) = (int) 5.0;
    EVT_VAR(12) = (int) 60.0;
    EVT_VAR(13) = (int) 28.0;
    EVT_VAR(14) = (int) 10.0;
    spawn {
        sleep 5;
        SetNpcAnimation(NPC_PARTNER, 0x106);
        SetPlayerAnimation(ANIM_WALKING);
        match EVT_AREA_FLAG(16) {
            == 0 {
                InterpPlayerYaw(90, 0);
                InterpNpcYaw(NPC_PARTNER, 90, 0);
            }
            == 1 {
                InterpPlayerYaw(270, 0);
                InterpNpcYaw(NPC_PARTNER, 270, 0);
            }
        }
    }
    TranslateModel(86, 1.3134765625, 3.0, -0.56640625);
    UpdateColliderTransform(12);
    spawn {
        EVT_AREA_FLAG(45) = 0;
        SetPlayerAnimation(ANIM_WALKING);
        sleep 200;
        await N(80241A70);
        EVT_AREA_FLAG(45) = 1;
        sleep 10;
        EnableGroup(2, 1);
        EnableGroup(13, 1);
        EnableGroup(24, 1);
        EnableGroup(41, 1);
        EnableGroup(48, 1);
        EnableGroup(57, 1);
        EnableGroup(74, 1);
        SetCamDistance(0, 450);
        SetCamPitch(0, 17.0, -6.0);
        SetCamPosA(0, 0, 0);
        SetCamPosB(0, 0, 0);
        SetCamSpeed(0, 90.0);
        PanToTarget(0, 0, 1);
        WaitForCam(0, 1.0);
        await N(80241B10);
        sleep 20;
        EVT_AREA_FLAG(45) = 0;
    }
    EVT_VAR(15) = 0;
    loop 344 {
        EVT_VAR(15) += 1;
        N(UnkFloatFunc)(EVT_VAR(15), EVT_VAR(0), -210, 0, 344, 0, 0);
        EVT_VAR(1) = (float) EVT_VAR(0);
        EVT_VAR(1) *= -3.0;
        TranslateModel(86, 1.3134765625, EVT_VAR(0), -0.56640625);
        RotateModel(86, EVT_VAR(1), 0, 1, 0);
        UpdateColliderTransform(12);
        EVT_VAR(2) = (float) EVT_VAR(0);
        EVT_VAR(2) *= -3.0;
        EVT_VAR(3) = (float) EVT_VAR(0);
        N(func_80240540_CE3C30)();
        N(func_80240660_CE3D50)();
11:
        sleep 1;
        if (EVT_AREA_FLAG(45) == 1) {
            goto 11;
        }
    }
    ModifyColliderFlags(1, 13, 0x7FFFFE00);
    ModifyColliderFlags(1, 5, 0x7FFFFE00);
    EnablePartnerAI();
    ClearPartnerMoveHistory(-4);
    SetPlayerJumpscale(1.0);
    PlayerJump(100, 0, 60, 20);
    SetPlayerActionState(10);
    InterpPlayerYaw(90, 0);
    sleep 5;
    EVT_AREA_FLAG(44) = 0;
    StopSound(412);
    await N(802409C0);
    ResetCam(0, 1.0);
    DisablePlayerInput(FALSE);
});

EvtSource N(802423F8) = SCRIPT({
    if (EVT_AREA_FLAG(44) == 0) {
        DisablePlayerInput(TRUE);
        func_802D2B6C();
        sleep 15;
        DisablePartnerAI(0);
        EVT_AREA_FLAG(44) = 1;
        ModifyColliderFlags(0, 13, 0x7FFFFE00);
        ModifyColliderFlags(0, 5, 0x7FFFFE00);
        EVT_VAR(9) = (int) 45.0;
        EVT_VAR(10) = (int) 28.0;
        EVT_VAR(11) = (int) 5.0;
        EVT_VAR(12) = (int) 60.0;
        EVT_VAR(13) = (int) 28.0;
        EVT_VAR(14) = (int) 10.0;
        PlayerMoveTo(EVT_VAR(9), EVT_VAR(11), 8);
        SetNpcJumpscale(NPC_PARTNER, 0.0);
        NpcJump0(NPC_PARTNER, EVT_VAR(12), EVT_VAR(13), EVT_VAR(14), 5);
        PlaySound(0x19D);
        SetMusicTrack(0, SONG_MAGIC_BEANSTALK, 1, 8);
        SetNpcAnimation(NPC_PARTNER, 0x106);
        SetPlayerAnimation(ANIM_WALKING);
        N(func_802404D0_CE3BC0)(EVT_VAR(3), EVT_VAR(4));
        match EVT_VAR(4) {
            < 90 {
                EVT_AREA_FLAG(16) = 0;
                InterpPlayerYaw(90, 0);
                InterpNpcYaw(NPC_PARTNER, 90, 0);
            }
            >= 270 {
                EVT_AREA_FLAG(16) = 1;
                InterpPlayerYaw(270, 0);
                InterpNpcYaw(NPC_PARTNER, 270, 0);
            }
        }
        TranslateModel(86, 1.3134765625, 3.0, -0.56640625);
        UpdateColliderTransform(12);
        EVT_MAP_VAR(10) = 0;
        spawn {
            EVT_AREA_FLAG(45) = 0;
            sleep 120;
            EVT_AREA_FLAG(45) = 1;
            sleep 20;
            await N(80241A70);
            sleep 10;
            EnableGroup(2, 0);
            EnableGroup(13, 0);
            EnableGroup(24, 0);
            EnableGroup(41, 0);
            EnableGroup(48, 0);
            EnableGroup(57, 0);
            EnableGroup(74, 0);
            SetCamType(0, 1, 0);
            UseSettingsFrom(0, 0, 0, 0);
            SetPanTarget(0, 0, 0, 0);
            SetCamDistance(0, 350);
            SetCamPitch(0, 17.0, 7.0);
            SetCamSpeed(0, 90.0);
            PanToTarget(0, 0, 1);
            WaitForCam(0, 1.0);
            EVT_AREA_FLAG(45) = 0;
            await N(80241B10);
        }
        spawn {
            EVT_VAR(15) = 0;
            loop 344 {
                EVT_VAR(15) += 1;
                N(UnkFloatFunc)(EVT_VAR(15), EVT_VAR(0), 0, -210, 344, 0, 0);
                EVT_VAR(1) = (float) EVT_VAR(0);
                EVT_VAR(1) *= -3.0;
                TranslateModel(86, 1.3134765625, EVT_VAR(0), -0.56640625);
                RotateModel(86, EVT_VAR(1), 0, 1, 0);
                UpdateColliderTransform(12);
                EVT_VAR(2) = (float) EVT_VAR(0);
                EVT_VAR(2) *= -3.0;
                EVT_VAR(3) = (float) EVT_VAR(0);
                N(func_80240540_CE3C30)();
                N(func_80240660_CE3D50)();
                if (EVT_VAR(15) == 300) {
                    EVT_MAP_VAR(10) = 1;
                }
11:
                sleep 1;
                if (EVT_AREA_FLAG(45) == 1) {
                    goto 11;
                }
            }
        }
10:
        if (EVT_MAP_VAR(10) == 0) {
            sleep 1;
            goto 10;
        }
        GotoMap("flo_00", 8);
        sleep 100;
    }
});

EvtSource N(80242A2C) = SCRIPT({
    DisablePlayerInput(TRUE);
    DisablePlayerPhysics(TRUE);
    SetPlayerActionState(10);
    SetNpcFlagBits(NPC_PARTNER, ((NPC_FLAG_GRAVITY)), FALSE);
    EnableModel(86, 0);
    EnableGroup(2, 0);
    EnableGroup(13, 0);
    EnableGroup(24, 0);
    EnableGroup(41, 0);
    EnableGroup(48, 0);
    EnableGroup(57, 0);
    EnableGroup(74, 0);
    SetCamType(0, 1, 0);
    UseSettingsFrom(0, 0, 0, 0);
    SetPanTarget(0, 0, 0, 0);
    SetCamDistance(0, 800);
    SetCamPitch(0, -20.0, 8.5);
    SetCamPosA(0, 0, 0);
    SetCamPosB(0, 0, 0);
    SetCamSpeed(0, 90.0);
    PanToTarget(0, 0, 1);
    EVT_VAR(15) = 100;
    EVT_MAP_VAR(11) = EVT_VAR(15);
    EVT_AREA_FLAG(40) = 0;
    loop 400 {
        if (EVT_AREA_FLAG(40) == 0) {
            if (EVT_MAP_VAR(11) > 400) {
                EnableGroup(85, 0);
                EnableGroup(92, 0);
                EnableGroup(2, 1);
                EnableGroup(13, 1);
                EnableGroup(24, 1);
                EnableGroup(41, 1);
                EnableGroup(48, 1);
                EnableGroup(57, 1);
                EnableGroup(74, 1);
                SetCamDistance(0, 1000);
                SetCamPitch(0, 45.0, -3.0);
                SetCamPosA(0, 0, 0);
                SetCamPosB(0, 0, 0);
                SetCamSpeed(0, 90.0);
                PanToTarget(0, 0, 1);
                EVT_VAR(15) = 150;
                spawn {
                    sleep 5;
                    EnableGroup(85, 1);
                    EnableGroup(92, 1);
                    EnableModel(86, 0);
                    sleep 48;
                    PlayEffect(0xA, 0, 22, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    sleep 10;
                    PlayEffect(0xA, 0, 22, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                EVT_AREA_FLAG(40) = 1;
            }
        }
        EVT_VAR(15) += 1;
        N(UnkFloatFunc)(EVT_VAR(15), EVT_VAR(0), -350, 0, 400, 0, 0);
        EVT_MAP_VAR(11) = (float) EVT_VAR(15);
        EVT_MAP_VAR(11) *= 1.6005859375;
        EVT_VAR(2) = (float) EVT_VAR(0);
        EVT_VAR(2) *= 1.0;
        EVT_VAR(0) = (float) EVT_VAR(2);
        spawn N(80241BB0);
        EVT_VAR(2) = (float) EVT_VAR(0);
        EVT_VAR(2) *= 1.0;
        EVT_VAR(0) = (float) EVT_VAR(2);
        spawn N(80241C58);
        sleep 1;
    }
    sleep 15;
    EVT_STORY_PROGRESS = STORY_CH6_GREW_MAGIC_BEANSTALK;
    GotoMap("flo_00", 7);
});

EvtSource N(80242FD0) = SCRIPT({
    bind N(802423F8) TRIGGER_FLOOR_TOUCH 12;
});

#include "world/common/UnkTexturePanFunc.inc.c"

#include "world/common/UnkTexturePanFunc2.inc.c"

void playFX_82();

ApiStatus N(func_8024030C_CE39FC)(Evt* script, s32 isInitialCall) {
    playFX_82(1, 0, 0, 0, 0, 0);
    return ApiStatus_DONE2;
}

// Identical to UnkFloatFunc except for the presence of the fabsf
ApiStatus N(func_80240340_CE3A30)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a1 = *args++;
    s32 var0 = evt_get_variable(script, a1);
    s32 a2 = *args++;
    f32 var1 = evt_get_float_variable(script, *args++);
    f32 var2 = evt_get_float_variable(script, *args++);
    s32 var3 = evt_get_variable(script, *args++);
    s32 var4 = evt_get_variable(script, *args++);
    f32 temp = (evt_get_float_variable(script, *args++) / 180.0f) * PI;
    f32 diff = fabsf(var2 - var1) / 2;

    if (var4 != 0 && var3 < var0) {
        var0 = var3;
        evt_set_variable(script, a1, var3);
    }

    evt_set_float_variable(script, a2, (var1 + diff) - (diff * cos_rad(((var0 * PI) / var3) + temp)));

    return ApiStatus_DONE2;
}

ApiStatus N(func_802404D0_CE3BC0)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 var1 = *args++;
    s32 var2 = *args++;

    evt_set_variable(script, var1, gPlayerStatus.spriteFacingAngle);
    evt_set_variable(script, var2, gPlayerStatus.targetYaw);

    return ApiStatus_DONE2;
}

ApiStatus N(func_80240540_CE3C30)(Evt* script, s32 isInitialCall) {
    f32 temp_f20 = evt_get_variable(NULL, script->varTable[2]);
    f32 dist = dist2D(0.0f, 0.0f, script->varTable[9], script->varTable[11]);
    f32 temp_f22 = clamp_angle(atan2(0.0f, 0.0f, script->varTable[9], script->varTable[11]) - temp_f20);

    temp_f20 = sin_deg(temp_f22);
    gPlayerStatus.position.x = (dist * temp_f20) + 0.0f;
    gPlayerStatus.position.y = evt_get_variable(NULL, script->varTable[10]) + evt_get_variable(NULL, script->varTable[3]);
    temp_f20 = cos_deg(temp_f22);
    gPlayerStatus.position.z = 0.0f - (dist * temp_f20);

    return ApiStatus_DONE2;
}

ApiStatus N(func_80240660_CE3D50)(Evt* script, s32 isInitialCall) {
    Npc* npc = get_npc_by_index(0);
    f32 temp_f20 = evt_get_variable(NULL, script->varTable[2]);
    f32 dist = dist2D(0.0f, 0.0f, script->varTable[12], script->varTable[14]);
    f32 clamped = clamp_angle(atan2(0.0f, 0.0f, script->varTable[12], script->varTable[14]) - temp_f20);

    temp_f20 = sin_deg(clamped);
    npc->pos.x = (dist * temp_f20) + 0.0f;
    npc->pos.y = evt_get_variable(NULL, script->varTable[13]) + evt_get_variable(NULL, script->varTable[3]);
    temp_f20 = cos_deg(clamped);
    npc->pos.z = 0.0f - (dist * temp_f20);

    return ApiStatus_DONE2;
}

ApiStatus N(func_80240784_CE3E74)(Evt* script, s32 isInitialCall) {
    set_screen_overlay_params_back(1, script->varTable[0]);
    return ApiStatus_DONE2;
}

#include "common/UnkFloatFunc.inc.c"
