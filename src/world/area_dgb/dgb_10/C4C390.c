#include "dgb_10.h"
#include "message_ids.h"

EntryList N(entryList) = {
    { 300.0f, 0.0f, -50.0f, 0.0f },
    { 375.0f, 0.0f, -240.0f, 0.0f },
};

MapConfig N(config) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .tattle = { MSG_dgb_10_tattle },
};

EvtSource N(80240250) = SCRIPT({
    match EVT_STORY_PROGRESS {
        < STORY_CH3_TUBBA_WOKE_UP {
            SetMusicTrack(0, SONG_TUBBAS_MANOR, 0, 8);
        }
        < STORY_CH3_DEFEATED_TUBBA_BLUBBA {
            SetMusicTrack(0, SONG_TUBBA_ESCAPE, 0, 8);
        } else {
            SetMusicTrack(0, SONG_TUBBAS_MANOR, 0, 8);
        }
    }
});

static s32 N(pad_2E8)[] = {
    0x00000000, 0x00000000,
};

EvtSource N(exitWalk_802402F0) = EXIT_WALK_SCRIPT(40,  0, "dgb_09",  3);

EvtSource N(8024034C) = SCRIPT({
    bind N(exitWalk_802402F0) TRIGGER_FLOOR_ABOVE 8;
});

EvtSource N(enterWalk_80240378) = SCRIPT({
    GetEntryID(EVT_VAR(0));
    match EVT_VAR(0) {
        == 0 {
            EVT_VAR(0) = N(8024034C);
            spawn EnterWalk;
            sleep 1;
        }
        == 1 {
            UseSettingsFrom(0, 375, 0, -188);
            SetPanTarget(0, 375, 0, -188);
            SetCamSpeed(0, 90.0);
            PanToTarget(0, 0, 1);
            DisablePlayerInput(TRUE);
            DisablePlayerPhysics(TRUE);
            SetPlayerActionState(3);
            sleep 1;
            SetPlayerJumpscale(0.7001953125);
            PlayerJump(375, 0, -188, 20);
            PanToTarget(0, 0, 0);
            DisablePlayerPhysics(FALSE);
            DisablePlayerInput(FALSE);
            SetPlayerActionState(0);
            spawn N(8024034C);
        }
    }
});

EvtSource N(main) = SCRIPT({
    EVT_WORLD_LOCATION = LOCATION_TUBBAS_MANOR;
    SetSpriteShading(-1);
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamLeadPlayer(0, 0);
    SetCamEnabled(0, 1);
    await N(makeEntities);
    spawn N(80240E68);
    spawn N(80240250);
    ModifyColliderFlags(0, 9, 0x7FFFFE00);
    EnableModel(6, 0);
    EnableModel(12, 0);
    EnableModel(18, 0);
    ModifyColliderFlags(0, 12, 0x7FFFFE00);
    ModifyColliderFlags(0, 13, 0x7FFFFE00);
    ModifyColliderFlags(0, 14, 0x7FFFFE00);
    spawn N(enterWalk_80240378);
});

static s32 N(pad_66C) = {
    0x00000000,
};

EvtSource N(80240670) = SCRIPT({
    buf_use EVT_VAR(0);
    arr_new 6 EVT_VAR(10);
    buf_read EVT_VAR(0);
    EVT_ARRAY(0) = EVT_VAR(0);
    buf_read EVT_VAR(0);
    EVT_ARRAY(1) = EVT_VAR(0);
    buf_read EVT_VAR(0);
    EVT_ARRAY(2) = EVT_VAR(0);
    buf_read EVT_VAR(0);
    EVT_ARRAY(3) = EVT_VAR(0);
    buf_read EVT_VAR(0);
    EVT_ARRAY(4) = EVT_VAR(0);
    buf_read EVT_VAR(0);
    EVT_ARRAY(5) = EVT_VAR(0);
    EVT_VAR(0) = EVT_VAR(10);
    bind N(80240770) TRIGGER_FLOOR_TOUCH 0xF4ACD480; // TODO: what is this id? see also below TODO
});

EvtSource N(80240770) = SCRIPT({
    arr_use EVT_VAR(0);
    N(func_80240000_C4C390)();
    if (EVT_VAR(0) == 0) {
        return;
    }
    loop 5 {
        ModifyColliderFlags(1, EVT_ARRAY(0), 0x7FFFFE00);
        EnableModel(EVT_ARRAY(1), 1);
        sleep 1;
        ModifyColliderFlags(0, EVT_ARRAY(0), 0x7FFFFE00);
        EnableModel(EVT_ARRAY(1), 0);
        sleep 1;
    }
    if (EVT_ARRAY(5) != 0) {
        await 0xF4ACD485; // TODO: what is this?
    }
});

EvtSource N(80240860) = SCRIPT({
    buf_use EVT_VAR(0);
    arr_new 6 EVT_VAR(9);
    buf_read EVT_VAR(1);
    EVT_ARRAY(0) = EVT_VAR(1);
    buf_read EVT_VAR(1);
    EVT_ARRAY(1) = EVT_VAR(1);
    buf_read EVT_VAR(1);
    EVT_ARRAY(2) = EVT_VAR(1);
    buf_read EVT_VAR(1);
    EVT_ARRAY(3) = EVT_VAR(1);
    buf_read EVT_VAR(1);
    EVT_ARRAY(4) = EVT_VAR(1);
    buf_read EVT_VAR(1);
    EVT_ARRAY(5) = EVT_VAR(1);
    ParentColliderToModel(EVT_ARRAY(1), EVT_ARRAY(0));
0:
1:
    GetPlayerActionState(EVT_VAR(10));
    if (EVT_VAR(10) == 13) {
        goto 2;
    }
    if (EVT_VAR(10) == 15) {
        goto 2;
    }
    sleep 1;
    goto 0;
2:
    GetPlayerPos(EVT_VAR(1), EVT_VAR(2), EVT_VAR(3));
    sleep 1;
    if (EVT_VAR(2) != EVT_ARRAY(3)) {
        goto 2;
    }
    N(func_802400A0_C4C430)();
    if (EVT_VAR(0) == 1) {
        await N(80240AF4);
    }
    if (EVT_VAR(0) == 2) {
        await N(80240CB8);
    }
3:
    GetPlayerActionState(EVT_VAR(0));
    sleep 1;
    if (EVT_VAR(0) == 13) {
        goto 3;
    }
    if (EVT_VAR(0) == 15) {
        goto 3;
    }
    goto 0;
});

EvtSource N(80240AF4) = SCRIPT({
    arr_use EVT_VAR(9);
    GetPlayerPos(EVT_VAR(2), EVT_VAR(3), EVT_VAR(4));
    MakeLerp(0, 5, 3, 1);
2:
    UpdateLerp();
    TranslateModel(EVT_ARRAY(0), 0, EVT_VAR(0), 0);
    EVT_VAR(5) = EVT_VAR(3);
    EVT_VAR(5) += EVT_VAR(0);
    SetPlayerPos(EVT_VAR(2), EVT_VAR(5), EVT_VAR(4));
    UpdateColliderTransform(EVT_ARRAY(1));
    sleep 1;
    if (EVT_VAR(1) == 1) {
        goto 2;
    }
    MakeLerp(5, 0, 3, 1);
3:
    UpdateLerp();
    TranslateModel(EVT_ARRAY(0), 0, EVT_VAR(0), 0);
    EVT_VAR(5) = EVT_VAR(3);
    EVT_VAR(5) += EVT_VAR(0);
    SetPlayerPos(EVT_VAR(2), EVT_VAR(5), EVT_VAR(4));
    UpdateColliderTransform(EVT_ARRAY(1));
    sleep 1;
    if (EVT_VAR(1) == 1) {
        goto 3;
    }
});

EvtSource N(80240CB8) = SCRIPT({
    arr_use EVT_VAR(9);
    MakeItemEntity(EVT_ARRAY(5), EVT_ARRAY(2), EVT_ARRAY(3), EVT_ARRAY(4), 3, 0);
    EVT_VAR(2) = 0;
    MakeLerp(0, 150, 19, 4);
2:
    UpdateLerp();
    TranslateModel(EVT_ARRAY(0), 0, EVT_VAR(0), 0);
    EVT_VAR(2) += 45;
    RotateModel(EVT_ARRAY(0), EVT_VAR(2), 1, 0, 0);
    sleep 1;
    if (EVT_VAR(1) == 1) {
        goto 2;
    }
    MakeLerp(150, 0, 19, 4);
3:
    UpdateLerp();
    TranslateModel(EVT_ARRAY(0), 0, EVT_VAR(0), 0);
    EVT_VAR(2) += 45;
    RotateModel(EVT_ARRAY(0), EVT_VAR(2), 1, 0, 0);
    sleep 1;
    if (EVT_VAR(1) == 1) {
        goto 3;
    }
});

EvtSource N(80240E68) = SCRIPT({
    N(func_8024013C_C4C4CC)();
    func_802CA988(0, EVT_VAR(2), EVT_VAR(3), EVT_VAR(4), EVT_VAR(5));
    N(func_802401C0_C4C550)();
    func_802D2B6C();
    GotoMap("dgb_11", EVT_VAR(0));
    sleep 100;
});

static s32 N(pad_EDC) = {
    0x00000000,
};

EvtSource N(80240EE0) = SCRIPT({
    EVT_SAVE_FLAG(1052) = 1;
});

EvtSource N(80240F00) = SCRIPT({
    EVT_SAVE_FLAG(1053) = 1;
});

EvtSource N(80240F20) = SCRIPT({
    EVT_SAVE_FLAG(1054) = 1;
});

EvtSource N(makeEntities) = SCRIPT({
    if (EVT_SAVE_FLAG(1052) == 0) {
        MakeEntity(0x802BCE84, 500, 0, -100, 0, MAKE_ENTITY_END);
        AssignScript(N(80240EE0));
    }
    if (EVT_SAVE_FLAG(1053) == 0) {
        MakeEntity(0x802BCE84, 500, 0, -250, 0, MAKE_ENTITY_END);
        AssignScript(N(80240F00));
    }
    if (EVT_SAVE_FLAG(1054) == 0) {
        MakeEntity(0x802BCE84, 375, 0, -250, 0, MAKE_ENTITY_END);
        AssignScript(N(80240F20));
    }
});

ApiStatus N(func_80240000_C4C390)(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32* array = script->array;
    f32 distance = dist2D(playerStatus->position.x, playerStatus->position.z, array[2], array[3]);

    script->varTable[0] = 1;
    if ((playerStatus->actionState != 14) && (playerStatus->actionState != 16)) {
        script->varTable[0] = 0;
    }
    if (script->array[4] <= distance) {
        script->varTable[0] = 0;
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_802400A0_C4C430)(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    f32 distance;
    s32* array = script->array;

    distance = dist2D(playerStatus->position.x, playerStatus->position.z, array[2], array[4]);
    script->varTable[0] = 0;
    if (distance < 112.5f) {
        script->varTable[0] = 2;
    }
    if (distance < 37.5f) {
        script->varTable[0] = 1;
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_8024013C_C4C4CC)(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 var;

    if (playerStatus->position.y >= 0.0f) {
        return 0;
    }

    if (playerStatus->position.x < 440.0f) {
        var = 3;
    } else if (playerStatus->position.z < -170.0f) {
        var = 2;
    } else {
        var = 1;
    }
    script->varTable[0] = var;

    return ApiStatus_DONE2;
}

ApiStatus N(func_802401C0_C4C550)(Evt* script, s32 isInitialCall) {
    if (gPlayerStatus.position.y > -60.0f) {
        return ApiStatus_BLOCK;
    }
    return ApiStatus_DONE2;
}
