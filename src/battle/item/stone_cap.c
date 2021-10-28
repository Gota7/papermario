#include "stone_cap.h"
#include "effects.h"

#include "ItemRefund.inc.c"

ApiStatus N(func_802A123C_7217DC)(Evt* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 i;

    if (isInitialCall) {
        script->functionTemp[0] = 0;
    }

    switch (script->functionTemp[0]) {
        case 0:
            inflict_status(player, STATUS_STONE, script->varTable[0]);
            player->status = 0;
            script->functionTemp[1] = 3;
            script->functionTemp[0] = 1;
            break;

        case 1:
            for (i = 0; i < 10; i++) {
                f32 x = player->currentPos.x + ((rand_int(20) - 10) * player->scalingFactor);
                f32 y = player->currentPos.y + ((rand_int(20) + 10) * player->scalingFactor);
                f32 z = player->currentPos.z + 5.0f;
                playFX_69(0, x, y, z, 1.0f, 25);
            }

            if (script->functionTemp[1] == 0) {
                BattleStatus* battleStatus2 = &gBattleStatus;

                battleStatus2->flags1 &= ~0x04000000;
                battleStatus->hustleTurns = 0;
                battleStatus->itemUsesLeft = 0;

                return ApiStatus_DONE2;
            }

            script->functionTemp[1]--;
            break;
    }

    return ApiStatus_BLOCK;
}

#include "UseItem.inc.c"

EvtSource N(main) = {
    EVT_SET_CONST(EVT_VAR(10), 0x00000088)
    EVT_EXEC_WAIT(N(UseItemWithEffect))
    EVT_CALL(PlaySound, SOUND_UNKNOWN_361)
    EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_30009)
    EVT_WAIT_FRAMES(30)
    EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_CROUCH)
    EVT_CALL(GetItemPower, ITEM_STONE_CAP, EVT_VAR(0), EVT_VAR(1))
    EVT_CALL(PlaySound, SOUND_UNKNOWN_362)
    EVT_CALL(N(func_802A123C_7217DC))
    EVT_CALL(GetActorPos, ACTOR_PLAYER, EVT_VAR(0), EVT_VAR(1), EVT_VAR(2))
    EVT_WAIT_FRAMES(20)
    EVT_RETURN
    EVT_END
};
