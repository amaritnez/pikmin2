#include "Game/BaseHIOParms.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .sdata, "wa"  # 0x80514680 - 0x80514D80
    .global sEntryOpt__Q24Game12BaseHIOParms
    sEntryOpt__Q24Game12BaseHIOParms:
        .byte 0x1
    .global sEntryOptMapRoom__Q24Game12BaseHIOParms
    sEntryOptMapRoom__Q24Game12BaseHIOParms:
        .byte 0x1
    .global sDrawParticle__Q24Game12BaseHIOParms
    sDrawParticle__Q24Game12BaseHIOParms:
        .byte 0x1
    .global sMabikiEfx__Q24Game12BaseHIOParms
    sMabikiEfx__Q24Game12BaseHIOParms:
        .byte 0x1
    .global sMapRoomFinal__Q24Game12BaseHIOParms
    sMapRoomFinal__Q24Game12BaseHIOParms:
        .byte 0x1
    .global sTekiChappyFlag__Q24Game12BaseHIOParms
    sTekiChappyFlag__Q24Game12BaseHIOParms:
        .byte 0x1
        .byte 0x0
        .byte 0x0
*/

namespace Game {
s8 BaseHIOParms::sEntryOpt          = 1;
s8 BaseHIOParms::sEntryOptMapRoom   = 1;
s8 BaseHIOParms::sDrawParticle      = 1;
s8 BaseHIOParms::sMabikiEfx         = 1;
s8 BaseHIOParms::sMapRoomFinal      = 1;
s8 BaseHIOParms::sTekiChappyFlag[3] = { 1, 0, 0 };
} // namespace Game
