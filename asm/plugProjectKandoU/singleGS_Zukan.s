.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_singleGS_Zukan_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80482E60
lbl_80482E60:
	.skip 0xC
	.asciz "SingleGS_Zukan"
	.skip 1
.global lbl_80482E7C
lbl_80482E7C:
	.asciz "tutorial"
	.skip 3
.global lbl_80482E88
lbl_80482E88:
	.asciz "yakushima"
	.skip 2
	.4byte 0x907D8AD3
	.4byte 0x8366836F
	.4byte 0x8362834F
	.4byte 0x00000000
	.asciz "/user/Yamashita/enemyTex/arc.szs"
	.skip 3
	.asciz "ZZDummy/texture.bti"
.global lbl_80482EDC
lbl_80482EDC:
	.asciz "singleGS_Zukan.cpp"
	.skip 1
	.asciz "P2Assert"
	.skip 3
	.asciz "%s/texture.bti"
	.skip 1
.global lbl_80482F0C
lbl_80482F0C:
	.4byte 0x907D8AD3
	.4byte 0x834A8381
	.4byte 0x83890000
.global lbl_80482F18
lbl_80482F18:
	.asciz "radius:%6.3f"
	.skip 3
.global lbl_80482F28
lbl_80482F28:
	.asciz "angle :%6.3f"
	.skip 3
.global lbl_80482F38
lbl_80482F38:
	.asciz "height:%6.3f"
	.skip 3
.global lbl_80482F48
lbl_80482F48:
	.asciz "fovy  :%6.3f"
	.skip 3
.global lbl_80482F58
lbl_80482F58:
	.asciz "ExtraHeapFor2D null\n"
	.skip 3
.global lbl_80482F70
lbl_80482F70:
	.asciz "StartTeki"
	.skip 2
.global lbl_80482F7C
lbl_80482F7C:
	.asciz "StartPellet"
.global lbl_80482F88
lbl_80482F88:
	.asciz "ModeChangeToTeki"
	.skip 3
.global lbl_80482F9C
lbl_80482F9C:
	.asciz "ChangeTeki"
	.skip 1
.global lbl_80482FA8
lbl_80482FA8:
	.asciz "ModeChangeToPellet"
	.skip 1
.global lbl_80482FBC
lbl_80482FBC:
	.asciz "ChangePellet"
	.skip 3
	.4byte lbl_80482F70
	.4byte lbl_80482F7C
	.4byte lbl_80482F88
	.4byte lbl_8051A1C4
	.4byte lbl_80482F9C
	.4byte lbl_80482FA8
	.4byte lbl_8051A1CC
	.4byte lbl_80482FBC
	.4byte lbl_8051A1D4
	.asciz "PSGame.h"
	.skip 3
	.asciz "PSScene.h"
	.skip 2
	.asciz "get sound scene at\ninvalid timming\n"
	.asciz "Unknown mode : %d \n"
.global lbl_80483040
lbl_80483040:
	.asciz "Illegal next mode. %d \n"
	.asciz "READY:%d Enemy:%d Item:%d"
	.skip 2
	.asciz "enemy:%d item:%d"
	.skip 3
	.asciz "heapA %d"
	.skip 3
	.asciz "heapB %d"
	.skip 3
	.asciz "user/Yamashita/zukan/%s/%s/arc.szs"
	.skip 1
	.asciz "PSCommon.h"
	.skip 1
	.asciz "course.txt"
	.skip 1
.global lbl_804830DC
lbl_804830DC:
	.asciz "FreeSizeA :%d \n"
	.4byte 0x8379838C
	.4byte 0x83628367
	.4byte 0x919082C8
	.4byte 0x82CC82C5
	.4byte 0x8379838C
	.4byte 0x83628367
	.4byte 0x82F0838D
	.4byte 0x815B8368
	.4byte 0x82B582DC
	.4byte 0x82B72066
	.4byte 0x7265653A
	.4byte 0x2564200A
	.4byte 0x00000000
	.4byte 0x82BE82B5
	.4byte 0x82BD2066
	.4byte 0x7265653A
	.4byte 0x2564200A
	.4byte 0x00000000
	.4byte 0x934782F0
	.4byte 0x8341838D
	.4byte 0x8362834E
	.4byte 0x20256495
	.4byte 0x43814066
	.4byte 0x7265653A
	.4byte 0x2564200A
	.4byte 0x00000000
	.4byte 0x2A2A2042
	.4byte 0x49525448
	.4byte 0x20464149
	.4byte 0x4C454420
	.4byte 0x21212049
	.4byte 0x443A2564
	.4byte 0x200A0000
.global lbl_80483170
lbl_80483170:
	.4byte 0x746F6F20
	.4byte 0x6D616E79
	.4byte 0x2070656C
	.4byte 0x6C65740A
	.4byte 0x00000000
	.4byte 0x50696B69
	.4byte 0x4B696C6C
	.4byte 0x41726700
	.4byte 0x43726561
	.4byte 0x74757265
	.4byte 0x4B696C6C
	.4byte 0x41726700
	.4byte 0x50656C6C
	.4byte 0x6574496E
	.4byte 0x69744172
	.4byte 0x67000000
	.4byte 0x50696B69
	.4byte 0x496E6974
	.4byte 0x41726700
	.4byte 0x23202564
	.4byte 0x2F25640D
	.4byte 0x0A000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804C0A40
lbl_804C0A40:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000000
.global "sDirName__28@unnamed@singleGS_Zukan_cpp@"
"sDirName__28@unnamed@singleGS_Zukan_cpp@":
	.4byte lbl_80482E7C
	.4byte lbl_8051A100
	.4byte lbl_80482E88
	.4byte lbl_8051A108
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte dvdloadA__Q34Game10SingleGame10ZukanStateFv
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte dvdloadB_teki__Q34Game10SingleGame10ZukanStateFv
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte dvdloadB_pellet__Q34Game10SingleGame10ZukanStateFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q28Morimura19DispMemberZukanItem
__vt__Q28Morimura19DispMemberZukanItem:
	.4byte 0
	.4byte 0
	.4byte getSize__Q28Morimura19DispMemberZukanItemFv
	.4byte getOwnerID__Q28Morimura19DispMemberZukanItemFv
	.4byte getMemberID__Q28Morimura19DispMemberZukanItemFv
	.4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
.global __vt__Q28Morimura20DispMemberZukanEnemy
__vt__Q28Morimura20DispMemberZukanEnemy:
	.4byte 0
	.4byte 0
	.4byte getSize__Q28Morimura20DispMemberZukanEnemyFv
	.4byte getOwnerID__Q28Morimura20DispMemberZukanEnemyFv
	.4byte getMemberID__Q28Morimura20DispMemberZukanEnemyFv
	.4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
.global __vt__Q28Morimura19DispMemberZukanBase
__vt__Q28Morimura19DispMemberZukanBase:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.global "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"
"__vt__41Delegate<Q34Game10SingleGame10ZukanState>":
	.4byte 0
	.4byte 0
	.4byte "invoke__41Delegate<Q34Game10SingleGame10ZukanState>Fv"
	.4byte 0
	.4byte 0
	.4byte 0
.global __vt__Q34Game10SingleGame10ZukanState
__vt__Q34Game10SingleGame10ZukanState:
	.4byte 0
	.4byte 0
	.4byte init__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
	.4byte exec__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
	.4byte cleanup__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
	.4byte "resume__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
	.4byte "restart__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
	.4byte "transit__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSectioniPQ24Game8StateArg"
	.4byte draw__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
	.4byte onOrimaDown__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni
	.4byte onMovieStart__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
	.4byte onMovieDone__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
	.4byte onMovieCommand__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni
	.4byte onHoleIn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemCave4Item
	.4byte onNextFloor__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemHole4Item
	.4byte onFountainReturn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game15ItemBigFountain4Item
	.4byte on_section_fadeout__Q34Game10SingleGame5StateFPQ24Game17SingleGameSection
	.4byte on_demo_timer__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionUl
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.global __vt__Q34Game15IllustratedBook6Camera
__vt__Q34Game15IllustratedBook6Camera:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game15IllustratedBook6CameraFv
	.4byte getChildCount__5CNodeFv
	.4byte "getObject__17Container<5Plane>FPv"
	.4byte "getNext__22ArrayContainer<5Plane>FPv"
	.4byte "getStart__22ArrayContainer<5Plane>Fv"
	.4byte "getEnd__22ArrayContainer<5Plane>Fv"
	.4byte "get__22ArrayContainer<5Plane>FPv"
	.4byte "getAt__22ArrayContainer<5Plane>Fi"
	.4byte "getTo__22ArrayContainer<5Plane>Fv"
	.4byte writeObject__9CullPlaneFR6StreamR5Plane
	.4byte readObject__9CullPlaneFR6StreamR5Plane
	.4byte "write__22ArrayContainer<5Plane>FR6Stream"
	.4byte "read__22ArrayContainer<5Plane>FR6Stream"
	.4byte "alloc__22ArrayContainer<5Plane>Fi"
	.4byte "addOne__22ArrayContainer<5Plane>FR5Plane"
	.4byte "setArray__22ArrayContainer<5Plane>FP5Planei"
	.4byte getViewMatrix__6CameraFb
	.4byte getPosition__6CameraFv
	.4byte updatePlanes__6CameraFv
	.4byte updateScreenConstants__6CameraFv
	.4byte getLookAtPosition___12LookAtCameraFv
	.4byte getTargetDistance__6CameraFv
	.4byte getPositionPtr__6CameraFv
	.4byte on_getPositionPtr__12LookAtCameraFv
	.4byte getSoundPositionPtr__6CameraFv
	.4byte getSoundMatrixPtr__6CameraFv
	.4byte isSpecialCamera__6CameraFv
	.4byte updateMatrix__12LookAtCameraFv
	.4byte doUpdate__Q34Game15IllustratedBook6CameraFv
	.4byte startVibration__Q34Game15IllustratedBook6CameraFi
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.global __vt__Q34Game15IllustratedBook11EnemyTexMgr
__vt__Q34Game15IllustratedBook11EnemyTexMgr:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game15IllustratedBook11EnemyTexMgrFv
.global __vt__Q34Game15IllustratedBook10DebugParms
__vt__Q34Game15IllustratedBook10DebugParms:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game15IllustratedBook10DebugParmsFv
	.4byte getChildCount__5CNodeFv
	.4byte 0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global lbl_80515C48
lbl_80515C48:
	.skip 0x4
.global lbl_80515C4C
lbl_80515C4C:
	.skip 0x4
.global sParentHeapFreeSize_1
sParentHeapFreeSize_1:
	.skip 0x8

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051A100
lbl_8051A100:
	.asciz "forest"
	.skip 1
.global lbl_8051A108
lbl_8051A108:
	.asciz "last"
	.skip 3
.global lbl_8051A110
lbl_8051A110:
	.float 0.05
.global lbl_8051A114
lbl_8051A114:
	.4byte 0x42200000
.global lbl_8051A118
lbl_8051A118:
	.4byte 0xC2C80000
.global lbl_8051A11C
lbl_8051A11C:
	.float 1.0
.global lbl_8051A120
lbl_8051A120:
	.4byte 0x43960000
.global lbl_8051A124
lbl_8051A124:
	.4byte 0x42C80000
.global lbl_8051A128
lbl_8051A128:
	.4byte 0x00000000
.global lbl_8051A12C
lbl_8051A12C:
	.4byte 0x43AF0000
.global lbl_8051A130
lbl_8051A130:
	.4byte 0x43FA0000
.global lbl_8051A134
lbl_8051A134:
	.4byte 0x442F0000
.global lbl_8051A138
lbl_8051A138:
	.4byte 0x42340000
.global lbl_8051A13C
lbl_8051A13C:
	.float 0.1
.global lbl_8051A140
lbl_8051A140:
	.4byte 0x42B40000
.global lbl_8051A144
lbl_8051A144:
	.4byte 0x3F4CCCCD
.global lbl_8051A148
lbl_8051A148:
	.float 0.5
.global lbl_8051A14C
lbl_8051A14C:
	.4byte 0x3C03126F
.global lbl_8051A150
lbl_8051A150:
	.4byte 0x40E00000
.global lbl_8051A154
lbl_8051A154:
	.4byte 0x3DF5C28F
.global lbl_8051A158
lbl_8051A158:
	.4byte 0x3F733333
.global lbl_8051A15C
lbl_8051A15C:
	.4byte 0x41700000
.global lbl_8051A160
lbl_8051A160:
	.float 0.3
.global lbl_8051A164
lbl_8051A164:
	.4byte 0x3EB33333
.global lbl_8051A168
lbl_8051A168:
	.float 0.15
.global lbl_8051A16C
lbl_8051A16C:
	.4byte 0x3F2147AE
.global lbl_8051A170
lbl_8051A170:
	.4byte 0x3F451EB8
.global lbl_8051A174
lbl_8051A174:
	.4byte 0x41E80000
.global lbl_8051A178
lbl_8051A178:
	.4byte 0x47000000
.global lbl_8051A17C
lbl_8051A17C:
	.4byte 0xBF800000
.global lbl_8051A180
lbl_8051A180:
	.4byte 0x41200000
	.4byte 0x00000000
.global lbl_8051A188
lbl_8051A188:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_8051A190
lbl_8051A190:
	.4byte 0x41F00000
.global lbl_8051A194
lbl_8051A194:
	.4byte 0x43A2F983
.global lbl_8051A198
lbl_8051A198:
	.4byte 0xC3A2F983
.global lbl_8051A19C
lbl_8051A19C:
	.4byte 0x3F19999A
.global lbl_8051A1A0
lbl_8051A1A0:
	.4byte 0x40C90FDB
.global lbl_8051A1A4
lbl_8051A1A4:
	.4byte 0x38D1B717
.global lbl_8051A1A8
lbl_8051A1A8:
	.4byte 0x3F400000
.global lbl_8051A1AC
lbl_8051A1AC:
	.4byte 0x3CA3D70A
.global lbl_8051A1B0
lbl_8051A1B0:
	.4byte 0x3E4CCCCD
.global lbl_8051A1B4
lbl_8051A1B4:
	.4byte 0xBF000000
.global lbl_8051A1B8
lbl_8051A1B8:
	.4byte 0x3F666666
.global lbl_8051A1BC
lbl_8051A1BC:
	.asciz "zukan"
	.skip 2
.global lbl_8051A1C4
lbl_8051A1C4:
	.asciz "Teki"
	.skip 3
.global lbl_8051A1CC
lbl_8051A1CC:
	.asciz "Pellet"
	.skip 1
.global lbl_8051A1D4
lbl_8051A1D4:
	.asciz "None"
	.skip 3
.global lbl_8051A1DC
lbl_8051A1DC:
	.4byte 0x40400000
.global lbl_8051A1E0
lbl_8051A1E0:
	.4byte 0x41100000
	.4byte 0x00000000
.global lbl_8051A1E8
lbl_8051A1E8:
	.4byte 0x43300000
	.4byte 0x00000000
.global lbl_8051A1F0
lbl_8051A1F0:
	.float 0.25
.global lbl_8051A1F4
lbl_8051A1F4:
	.4byte 0x3BA3D70A
.global lbl_8051A1F8
lbl_8051A1F8:
	.4byte 0x75730000
.global lbl_8051A1FC
lbl_8051A1FC:
	.4byte 0xC47A0000
.global lbl_8051A200
lbl_8051A200:
	.4byte 0x447A0000
.global lbl_8051A204
lbl_8051A204:
	.4byte 0x4B435000
.global lbl_8051A208
lbl_8051A208:
	.4byte 0xCB435000
.global lbl_8051A20C
lbl_8051A20C:
	.4byte 0x42800000
.global lbl_8051A210
lbl_8051A210:
	.4byte 0x0A000000
.global lbl_8051A214
lbl_8051A214:
	.4byte 0x420C0000
.global lbl_8051A218
lbl_8051A218:
	.4byte 0x40490FDB
.global lbl_8051A21C
lbl_8051A21C:
	.4byte 0x3BB60B61
.global lbl_8051A220
lbl_8051A220:
	.4byte 0x43480000
.global lbl_8051A224
lbl_8051A224:
	.4byte 0x64616D65
	.4byte 0x6B0A0000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game15IllustratedBook6CameraFP10Controller
__ct__Q34Game15IllustratedBook6CameraFP10Controller:
/* 80221028 0021DF68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022102C 0021DF6C  7C 08 02 A6 */	mflr r0
/* 80221030 0021DF70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80221034 0021DF74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80221038 0021DF78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022103C 0021DF7C  7C 9E 23 78 */	mr r30, r4
/* 80221040 0021DF80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80221044 0021DF84  7C 7D 1B 78 */	mr r29, r3
/* 80221048 0021DF88  48 1F A4 51 */	bl __ct__12LookAtCameraFv
/* 8022104C 0021DF8C  3C 60 80 4C */	lis r3, __vt__Q34Game15IllustratedBook6Camera@ha
/* 80221050 0021DF90  3C A0 80 51 */	lis r5, "zero__10Vector3<f>"@ha
/* 80221054 0021DF94  38 03 0C 3C */	addi r0, r3, __vt__Q34Game15IllustratedBook6Camera@l
/* 80221058 0021DF98  C0 62 BD C8 */	lfs f3, lbl_8051A128@sda21(r2)
/* 8022105C 0021DF9C  90 1D 00 00 */	stw r0, 0(r29)
/* 80221060 0021DFA0  3B E5 41 E4 */	addi r31, r5, "zero__10Vector3<f>"@l
/* 80221064 0021DFA4  3C 60 80 12 */	lis r3, "__ct__10Vector3<f>Fv"@ha
/* 80221068 0021DFA8  38 00 00 00 */	li r0, 0
/* 8022106C 0021DFAC  93 DD 01 98 */	stw r30, 0x198(r29)
/* 80221070 0021DFB0  38 83 F3 48 */	addi r4, r3, "__ct__10Vector3<f>Fv"@l
/* 80221074 0021DFB4  C0 42 BD CC */	lfs f2, lbl_8051A12C@sda21(r2)
/* 80221078 0021DFB8  38 7D 01 FC */	addi r3, r29, 0x1fc
/* 8022107C 0021DFBC  90 1D 01 9C */	stw r0, 0x19c(r29)
/* 80221080 0021DFC0  38 A0 00 00 */	li r5, 0
/* 80221084 0021DFC4  C0 22 BD D0 */	lfs f1, lbl_8051A130@sda21(r2)
/* 80221088 0021DFC8  38 C0 00 0C */	li r6, 0xc
/* 8022108C 0021DFCC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80221090 0021DFD0  38 E0 00 0A */	li r7, 0xa
/* 80221094 0021DFD4  D0 1D 01 A0 */	stfs f0, 0x1a0(r29)
/* 80221098 0021DFD8  C0 02 BD D4 */	lfs f0, lbl_8051A134@sda21(r2)
/* 8022109C 0021DFDC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 802210A0 0021DFE0  D0 9D 01 A4 */	stfs f4, 0x1a4(r29)
/* 802210A4 0021DFE4  C0 9F 00 08 */	lfs f4, 8(r31)
/* 802210A8 0021DFE8  D0 9D 01 A8 */	stfs f4, 0x1a8(r29)
/* 802210AC 0021DFEC  C0 9F 00 00 */	lfs f4, 0(r31)
/* 802210B0 0021DFF0  D0 9D 01 AC */	stfs f4, 0x1ac(r29)
/* 802210B4 0021DFF4  C0 9F 00 04 */	lfs f4, 4(r31)
/* 802210B8 0021DFF8  D0 9D 01 B0 */	stfs f4, 0x1b0(r29)
/* 802210BC 0021DFFC  C0 9F 00 08 */	lfs f4, 8(r31)
/* 802210C0 0021E000  D0 9D 01 B4 */	stfs f4, 0x1b4(r29)
/* 802210C4 0021E004  C0 9F 00 00 */	lfs f4, 0(r31)
/* 802210C8 0021E008  D0 9D 01 B8 */	stfs f4, 0x1b8(r29)
/* 802210CC 0021E00C  C0 9F 00 04 */	lfs f4, 4(r31)
/* 802210D0 0021E010  D0 9D 01 BC */	stfs f4, 0x1bc(r29)
/* 802210D4 0021E014  C0 9F 00 08 */	lfs f4, 8(r31)
/* 802210D8 0021E018  D0 9D 01 C0 */	stfs f4, 0x1c0(r29)
/* 802210DC 0021E01C  D0 7D 01 C4 */	stfs f3, 0x1c4(r29)
/* 802210E0 0021E020  D0 5D 01 C8 */	stfs f2, 0x1c8(r29)
/* 802210E4 0021E024  D0 3D 01 CC */	stfs f1, 0x1cc(r29)
/* 802210E8 0021E028  D0 7D 01 D0 */	stfs f3, 0x1d0(r29)
/* 802210EC 0021E02C  D0 1D 01 D4 */	stfs f0, 0x1d4(r29)
/* 802210F0 0021E030  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802210F4 0021E034  D0 1D 01 D8 */	stfs f0, 0x1d8(r29)
/* 802210F8 0021E038  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802210FC 0021E03C  D0 1D 01 DC */	stfs f0, 0x1dc(r29)
/* 80221100 0021E040  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80221104 0021E044  D0 1D 01 E0 */	stfs f0, 0x1e0(r29)
/* 80221108 0021E048  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8022110C 0021E04C  D0 1D 01 E4 */	stfs f0, 0x1e4(r29)
/* 80221110 0021E050  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80221114 0021E054  D0 1D 01 E8 */	stfs f0, 0x1e8(r29)
/* 80221118 0021E058  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8022111C 0021E05C  D0 1D 01 EC */	stfs f0, 0x1ec(r29)
/* 80221120 0021E060  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80221124 0021E064  D0 1D 01 F0 */	stfs f0, 0x1f0(r29)
/* 80221128 0021E068  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8022112C 0021E06C  D0 1D 01 F4 */	stfs f0, 0x1f4(r29)
/* 80221130 0021E070  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80221134 0021E074  D0 1D 01 F8 */	stfs f0, 0x1f8(r29)
/* 80221138 0021E078  4B EA 07 05 */	bl __construct_array
/* 8022113C 0021E07C  38 00 00 00 */	li r0, 0
/* 80221140 0021E080  3C 60 80 51 */	lis r3, "zero__10Vector3<f>"@ha
/* 80221144 0021E084  90 1D 02 74 */	stw r0, 0x274(r29)
/* 80221148 0021E088  38 83 41 E4 */	addi r4, r3, "zero__10Vector3<f>"@l
/* 8022114C 0021E08C  C0 A2 BD C8 */	lfs f5, lbl_8051A128@sda21(r2)
/* 80221150 0021E090  3C 60 80 48 */	lis r3, lbl_80482F0C@ha
/* 80221154 0021E094  38 03 2F 0C */	addi r0, r3, lbl_80482F0C@l
/* 80221158 0021E098  C0 82 BD D8 */	lfs f4, lbl_8051A138@sda21(r2)
/* 8022115C 0021E09C  D0 BD 02 78 */	stfs f5, 0x278(r29)
/* 80221160 0021E0A0  7F A3 EB 78 */	mr r3, r29
/* 80221164 0021E0A4  C0 62 BD DC */	lfs f3, lbl_8051A13C@sda21(r2)
/* 80221168 0021E0A8  D0 BD 02 7C */	stfs f5, 0x27c(r29)
/* 8022116C 0021E0AC  C0 42 BD E0 */	lfs f2, lbl_8051A140@sda21(r2)
/* 80221170 0021E0B0  D0 BD 02 80 */	stfs f5, 0x280(r29)
/* 80221174 0021E0B4  C0 22 BD E4 */	lfs f1, lbl_8051A144@sda21(r2)
/* 80221178 0021E0B8  D0 BD 02 84 */	stfs f5, 0x284(r29)
/* 8022117C 0021E0BC  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80221180 0021E0C0  D0 9D 02 88 */	stfs f4, 0x288(r29)
/* 80221184 0021E0C4  D0 7D 02 8C */	stfs f3, 0x28c(r29)
/* 80221188 0021E0C8  D0 5D 02 90 */	stfs f2, 0x290(r29)
/* 8022118C 0021E0CC  D0 BD 02 94 */	stfs f5, 0x294(r29)
/* 80221190 0021E0D0  D0 BD 02 98 */	stfs f5, 0x298(r29)
/* 80221194 0021E0D4  D0 3D 02 9C */	stfs f1, 0x29c(r29)
/* 80221198 0021E0D8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8022119C 0021E0DC  D0 3D 02 A0 */	stfs f1, 0x2a0(r29)
/* 802211A0 0021E0E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802211A4 0021E0E4  D0 3D 02 A4 */	stfs f1, 0x2a4(r29)
/* 802211A8 0021E0E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802211AC 0021E0EC  D0 3D 02 A8 */	stfs f1, 0x2a8(r29)
/* 802211B0 0021E0F0  C0 24 00 00 */	lfs f1, 0(r4)
/* 802211B4 0021E0F4  D0 3D 02 AC */	stfs f1, 0x2ac(r29)
/* 802211B8 0021E0F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802211BC 0021E0FC  D0 3D 02 B0 */	stfs f1, 0x2b0(r29)
/* 802211C0 0021E100  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802211C4 0021E104  D0 3D 02 B4 */	stfs f1, 0x2b4(r29)
/* 802211C8 0021E108  C0 24 00 00 */	lfs f1, 0(r4)
/* 802211CC 0021E10C  D0 3D 02 B8 */	stfs f1, 0x2b8(r29)
/* 802211D0 0021E110  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802211D4 0021E114  D0 3D 02 BC */	stfs f1, 0x2bc(r29)
/* 802211D8 0021E118  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802211DC 0021E11C  D0 3D 02 C0 */	stfs f1, 0x2c0(r29)
/* 802211E0 0021E120  C0 24 00 00 */	lfs f1, 0(r4)
/* 802211E4 0021E124  D0 3D 02 C4 */	stfs f1, 0x2c4(r29)
/* 802211E8 0021E128  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802211EC 0021E12C  D0 3D 02 C8 */	stfs f1, 0x2c8(r29)
/* 802211F0 0021E130  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802211F4 0021E134  D0 3D 02 CC */	stfs f1, 0x2cc(r29)
/* 802211F8 0021E138  D0 1D 02 D0 */	stfs f0, 0x2d0(r29)
/* 802211FC 0021E13C  D0 BD 02 D4 */	stfs f5, 0x2d4(r29)
/* 80221200 0021E140  D0 BD 02 D8 */	stfs f5, 0x2d8(r29)
/* 80221204 0021E144  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80221208 0021E148  48 00 02 7D */	bl "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
/* 8022120C 0021E14C  C0 62 BD E8 */	lfs f3, lbl_8051A148@sda21(r2)
/* 80221210 0021E150  7F A3 EB 78 */	mr r3, r29
/* 80221214 0021E154  C0 02 BD B0 */	lfs f0, lbl_8051A110@sda21(r2)
/* 80221218 0021E158  D0 7D 02 DC */	stfs f3, 0x2dc(r29)
/* 8022121C 0021E15C  C0 42 BD EC */	lfs f2, lbl_8051A14C@sda21(r2)
/* 80221220 0021E160  D0 7D 02 E0 */	stfs f3, 0x2e0(r29)
/* 80221224 0021E164  C0 22 BD F0 */	lfs f1, lbl_8051A150@sda21(r2)
/* 80221228 0021E168  D0 1D 02 E4 */	stfs f0, 0x2e4(r29)
/* 8022122C 0021E16C  C0 02 BD F4 */	lfs f0, lbl_8051A154@sda21(r2)
/* 80221230 0021E170  D0 5D 02 E8 */	stfs f2, 0x2e8(r29)
/* 80221234 0021E174  C0 42 BD F8 */	lfs f2, lbl_8051A158@sda21(r2)
/* 80221238 0021E178  D0 3D 02 EC */	stfs f1, 0x2ec(r29)
/* 8022123C 0021E17C  C0 22 BD DC */	lfs f1, lbl_8051A13C@sda21(r2)
/* 80221240 0021E180  D0 1D 02 F0 */	stfs f0, 0x2f0(r29)
/* 80221244 0021E184  C0 02 BD FC */	lfs f0, lbl_8051A15C@sda21(r2)
/* 80221248 0021E188  D0 5D 02 F4 */	stfs f2, 0x2f4(r29)
/* 8022124C 0021E18C  C0 42 BE 00 */	lfs f2, lbl_8051A160@sda21(r2)
/* 80221250 0021E190  D0 3D 02 F8 */	stfs f1, 0x2f8(r29)
/* 80221254 0021E194  C0 22 BD E4 */	lfs f1, lbl_8051A144@sda21(r2)
/* 80221258 0021E198  D0 1D 02 FC */	stfs f0, 0x2fc(r29)
/* 8022125C 0021E19C  C0 02 BE 04 */	lfs f0, lbl_8051A164@sda21(r2)
/* 80221260 0021E1A0  D0 5D 03 00 */	stfs f2, 0x300(r29)
/* 80221264 0021E1A4  C0 42 BE 08 */	lfs f2, lbl_8051A168@sda21(r2)
/* 80221268 0021E1A8  D0 3D 03 04 */	stfs f1, 0x304(r29)
/* 8022126C 0021E1AC  C0 22 BE 0C */	lfs f1, lbl_8051A16C@sda21(r2)
/* 80221270 0021E1B0  D0 1D 03 08 */	stfs f0, 0x308(r29)
/* 80221274 0021E1B4  C0 02 BE 10 */	lfs f0, lbl_8051A170@sda21(r2)
/* 80221278 0021E1B8  D0 5D 03 0C */	stfs f2, 0x30c(r29)
/* 8022127C 0021E1BC  D0 5D 03 10 */	stfs f2, 0x310(r29)
/* 80221280 0021E1C0  D0 3D 03 14 */	stfs f1, 0x314(r29)
/* 80221284 0021E1C4  D0 7D 03 18 */	stfs f3, 0x318(r29)
/* 80221288 0021E1C8  D0 1D 03 1C */	stfs f0, 0x31c(r29)
/* 8022128C 0021E1CC  D0 7D 03 20 */	stfs f3, 0x320(r29)
/* 80221290 0021E1D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80221294 0021E1D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80221298 0021E1D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8022129C 0021E1DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802212A0 0021E1E0  7C 08 03 A6 */	mtlr r0
/* 802212A4 0021E1E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802212A8 0021E1E8  4E 80 00 20 */	blr 

.global startVibration__Q34Game15IllustratedBook6CameraFi
startVibration__Q34Game15IllustratedBook6CameraFi:
/* 802212AC 0021E1EC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802212B0 0021E1F0  7C 08 02 A6 */	mflr r0
/* 802212B4 0021E1F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802212B8 0021E1F8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802212BC 0021E1FC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 802212C0 0021E200  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802212C4 0021E204  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 802212C8 0021E208  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802212CC 0021E20C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 802212D0 0021E210  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802212D4 0021E214  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 802212D8 0021E218  3C 00 43 30 */	lis r0, 0x4330
/* 802212DC 0021E21C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802212E0 0021E220  7C 7F 1B 78 */	mr r31, r3
/* 802212E4 0021E224  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 802212E8 0021E228  90 01 00 08 */	stw r0, 8(r1)
/* 802212EC 0021E22C  C0 02 BE 14 */	lfs f0, lbl_8051A174@sda21(r2)
/* 802212F0 0021E230  C8 21 00 08 */	lfd f1, 8(r1)
/* 802212F4 0021E234  EC 21 10 28 */	fsubs f1, f1, f2
/* 802212F8 0021E238  EF A1 00 24 */	fdivs f29, f1, f0
/* 802212FC 0021E23C  4B EA 82 A5 */	bl rand
/* 80221300 0021E240  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80221304 0021E244  3C 00 43 30 */	lis r0, 0x4330
/* 80221308 0021E248  90 61 00 14 */	stw r3, 0x14(r1)
/* 8022130C 0021E24C  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80221310 0021E250  90 01 00 10 */	stw r0, 0x10(r1)
/* 80221314 0021E254  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80221318 0021E258  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8022131C 0021E25C  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80221320 0021E260  EC 42 18 28 */	fsubs f2, f2, f3
/* 80221324 0021E264  EC 22 08 24 */	fdivs f1, f2, f1
/* 80221328 0021E268  EF C1 00 28 */	fsubs f30, f1, f0
/* 8022132C 0021E26C  4B EA 82 75 */	bl rand
/* 80221330 0021E270  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80221334 0021E274  3C 00 43 30 */	lis r0, 0x4330
/* 80221338 0021E278  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8022133C 0021E27C  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80221340 0021E280  90 01 00 18 */	stw r0, 0x18(r1)
/* 80221344 0021E284  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80221348 0021E288  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8022134C 0021E28C  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80221350 0021E290  EC 42 18 28 */	fsubs f2, f2, f3
/* 80221354 0021E294  EC 22 08 24 */	fdivs f1, f2, f1
/* 80221358 0021E298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022135C 0021E29C  40 80 00 0C */	bge lbl_80221368
/* 80221360 0021E2A0  C3 E2 BE 1C */	lfs f31, lbl_8051A17C@sda21(r2)
/* 80221364 0021E2A4  48 00 00 08 */	b lbl_8022136C
lbl_80221368:
/* 80221368 0021E2A8  C3 E2 BD BC */	lfs f31, lbl_8051A11C@sda21(r2)
lbl_8022136C:
/* 8022136C 0021E2AC  4B EA 82 35 */	bl rand
/* 80221370 0021E2B0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80221374 0021E2B4  3C 00 43 30 */	lis r0, 0x4330
/* 80221378 0021E2B8  90 61 00 24 */	stw r3, 0x24(r1)
/* 8022137C 0021E2BC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80221380 0021E2C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80221384 0021E2C4  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80221388 0021E2C8  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8022138C 0021E2CC  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80221390 0021E2D0  EC 42 18 28 */	fsubs f2, f2, f3
/* 80221394 0021E2D4  EC 22 08 24 */	fdivs f1, f2, f1
/* 80221398 0021E2D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8022139C 0021E2DC  EF E0 07 F2 */	fmuls f31, f0, f31
/* 802213A0 0021E2E0  4B EA 82 01 */	bl rand
/* 802213A4 0021E2E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802213A8 0021E2E8  3C 00 43 30 */	lis r0, 0x4330
/* 802213AC 0021E2EC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802213B0 0021E2F0  EC 9F 07 F2 */	fmuls f4, f31, f31
/* 802213B4 0021E2F4  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802213B8 0021E2F8  EC BE 07 B2 */	fmuls f5, f30, f30
/* 802213BC 0021E2FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 802213C0 0021E300  C0 42 BE 18 */	lfs f2, lbl_8051A178@sda21(r2)
/* 802213C4 0021E304  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802213C8 0021E308  C0 22 BD E8 */	lfs f1, lbl_8051A148@sda21(r2)
/* 802213CC 0021E30C  EC 60 18 28 */	fsubs f3, f0, f3
/* 802213D0 0021E310  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802213D4 0021E314  EC 43 10 24 */	fdivs f2, f3, f2
/* 802213D8 0021E318  EC 42 08 28 */	fsubs f2, f2, f1
/* 802213DC 0021E31C  EC 22 20 BA */	fmadds f1, f2, f2, f4
/* 802213E0 0021E320  EC 25 08 2A */	fadds f1, f5, f1
/* 802213E4 0021E324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802213E8 0021E328  40 81 00 14 */	ble lbl_802213FC
/* 802213EC 0021E32C  40 81 00 14 */	ble lbl_80221400
/* 802213F0 0021E330  FC 00 08 34 */	frsqrte f0, f1
/* 802213F4 0021E334  EC 20 00 72 */	fmuls f1, f0, f1
/* 802213F8 0021E338  48 00 00 08 */	b lbl_80221400
lbl_802213FC:
/* 802213FC 0021E33C  FC 20 00 90 */	fmr f1, f0
lbl_80221400:
/* 80221400 0021E340  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221404 0021E344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221408 0021E348  40 81 00 18 */	ble lbl_80221420
/* 8022140C 0021E34C  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80221410 0021E350  EC 00 08 24 */	fdivs f0, f0, f1
/* 80221414 0021E354  EC 42 00 32 */	fmuls f2, f2, f0
/* 80221418 0021E358  EF FF 00 32 */	fmuls f31, f31, f0
/* 8022141C 0021E35C  EF DE 00 32 */	fmuls f30, f30, f0
lbl_80221420:
/* 80221420 0021E360  C0 22 BE 20 */	lfs f1, lbl_8051A180@sda21(r2)
/* 80221424 0021E364  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80221428 0021E368  EC 21 07 72 */	fmuls f1, f1, f29
/* 8022142C 0021E36C  EC 42 00 72 */	fmuls f2, f2, f1
/* 80221430 0021E370  EF FF 00 72 */	fmuls f31, f31, f1
/* 80221434 0021E374  EF DE 00 72 */	fmuls f30, f30, f1
/* 80221438 0021E378  EC 00 10 2A */	fadds f0, f0, f2
/* 8022143C 0021E37C  D0 1F 02 D0 */	stfs f0, 0x2d0(r31)
/* 80221440 0021E380  C0 1F 02 D4 */	lfs f0, 0x2d4(r31)
/* 80221444 0021E384  EC 00 F8 2A */	fadds f0, f0, f31
/* 80221448 0021E388  D0 1F 02 D4 */	stfs f0, 0x2d4(r31)
/* 8022144C 0021E38C  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 80221450 0021E390  EC 00 F0 2A */	fadds f0, f0, f30
/* 80221454 0021E394  D0 1F 02 D8 */	stfs f0, 0x2d8(r31)
/* 80221458 0021E398  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8022145C 0021E39C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80221460 0021E3A0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80221464 0021E3A4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80221468 0021E3A8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8022146C 0021E3AC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80221470 0021E3B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80221474 0021E3B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80221478 0021E3B8  7C 08 03 A6 */	mtlr r0
/* 8022147C 0021E3BC  38 21 00 70 */	addi r1, r1, 0x70
/* 80221480 0021E3C0  4E 80 00 20 */	blr 

.global "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
"move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>":
/* 80221484 0021E3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221488 0021E3C8  7C 08 02 A6 */	mflr r0
/* 8022148C 0021E3CC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80221490 0021E3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221494 0021E3D4  38 00 00 00 */	li r0, 0
/* 80221498 0021E3D8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8022149C 0021E3DC  90 03 01 9C */	stw r0, 0x19c(r3)
/* 802214A0 0021E3E0  D0 03 01 D8 */	stfs f0, 0x1d8(r3)
/* 802214A4 0021E3E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 802214A8 0021E3E8  D0 23 01 DC */	stfs f1, 0x1dc(r3)
/* 802214AC 0021E3EC  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 802214B0 0021E3F0  C0 03 01 D8 */	lfs f0, 0x1d8(r3)
/* 802214B4 0021E3F4  D0 03 01 B8 */	stfs f0, 0x1b8(r3)
/* 802214B8 0021E3F8  C0 03 01 DC */	lfs f0, 0x1dc(r3)
/* 802214BC 0021E3FC  D0 03 01 BC */	stfs f0, 0x1bc(r3)
/* 802214C0 0021E400  C0 03 01 E0 */	lfs f0, 0x1e0(r3)
/* 802214C4 0021E404  D0 03 01 C0 */	stfs f0, 0x1c0(r3)
/* 802214C8 0021E408  C0 03 01 B8 */	lfs f0, 0x1b8(r3)
/* 802214CC 0021E40C  D0 03 01 AC */	stfs f0, 0x1ac(r3)
/* 802214D0 0021E410  C0 03 01 BC */	lfs f0, 0x1bc(r3)
/* 802214D4 0021E414  D0 03 01 B0 */	stfs f0, 0x1b0(r3)
/* 802214D8 0021E418  C0 03 01 C0 */	lfs f0, 0x1c0(r3)
/* 802214DC 0021E41C  D0 03 01 B4 */	stfs f0, 0x1b4(r3)
/* 802214E0 0021E420  C0 03 01 AC */	lfs f0, 0x1ac(r3)
/* 802214E4 0021E424  D0 03 01 80 */	stfs f0, 0x180(r3)
/* 802214E8 0021E428  C0 03 01 B0 */	lfs f0, 0x1b0(r3)
/* 802214EC 0021E42C  D0 03 01 84 */	stfs f0, 0x184(r3)
/* 802214F0 0021E430  C0 03 01 B4 */	lfs f0, 0x1b4(r3)
/* 802214F4 0021E434  D0 03 01 88 */	stfs f0, 0x188(r3)
/* 802214F8 0021E438  48 00 01 3D */	bl resetControl__Q34Game15IllustratedBook6CameraFv
/* 802214FC 0021E43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221500 0021E440  7C 08 03 A6 */	mtlr r0
/* 80221504 0021E444  38 21 00 10 */	addi r1, r1, 0x10
/* 80221508 0021E448  4E 80 00 20 */	blr 

.global setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature
setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature:
/* 8022150C 0021E44C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80221510 0021E450  7C 08 02 A6 */	mflr r0
/* 80221514 0021E454  28 04 00 00 */	cmplwi r4, 0
/* 80221518 0021E458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022151C 0021E45C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80221520 0021E460  7C 7F 1B 78 */	mr r31, r3
/* 80221524 0021E464  41 82 00 8C */	beq lbl_802215B0
/* 80221528 0021E468  90 9F 01 9C */	stw r4, 0x19c(r31)
/* 8022152C 0021E46C  38 81 00 08 */	addi r4, r1, 8
/* 80221530 0021E470  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 80221534 0021E474  81 83 00 00 */	lwz r12, 0(r3)
/* 80221538 0021E478  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8022153C 0021E47C  7D 89 03 A6 */	mtctr r12
/* 80221540 0021E480  4E 80 04 21 */	bctrl 
/* 80221544 0021E484  C0 01 00 08 */	lfs f0, 8(r1)
/* 80221548 0021E488  7F E3 FB 78 */	mr r3, r31
/* 8022154C 0021E48C  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 80221550 0021E490  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80221554 0021E494  D0 1F 01 DC */	stfs f0, 0x1dc(r31)
/* 80221558 0021E498  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8022155C 0021E49C  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 80221560 0021E4A0  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80221564 0021E4A4  D0 1F 01 B8 */	stfs f0, 0x1b8(r31)
/* 80221568 0021E4A8  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 8022156C 0021E4AC  D0 1F 01 BC */	stfs f0, 0x1bc(r31)
/* 80221570 0021E4B0  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80221574 0021E4B4  D0 1F 01 C0 */	stfs f0, 0x1c0(r31)
/* 80221578 0021E4B8  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8022157C 0021E4BC  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 80221580 0021E4C0  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80221584 0021E4C4  D0 1F 01 B0 */	stfs f0, 0x1b0(r31)
/* 80221588 0021E4C8  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8022158C 0021E4CC  D0 1F 01 B4 */	stfs f0, 0x1b4(r31)
/* 80221590 0021E4D0  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80221594 0021E4D4  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 80221598 0021E4D8  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 8022159C 0021E4DC  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 802215A0 0021E4E0  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 802215A4 0021E4E4  D0 1F 01 88 */	stfs f0, 0x188(r31)
/* 802215A8 0021E4E8  48 00 00 8D */	bl resetControl__Q34Game15IllustratedBook6CameraFv
/* 802215AC 0021E4EC  48 00 00 74 */	b lbl_80221620
lbl_802215B0:
/* 802215B0 0021E4F0  38 00 00 00 */	li r0, 0
/* 802215B4 0021E4F4  3C 80 80 51 */	lis r4, "zero__10Vector3<f>"@ha
/* 802215B8 0021E4F8  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 802215BC 0021E4FC  C4 04 41 E4 */	lfsu f0, "zero__10Vector3<f>"@l(r4)
/* 802215C0 0021E500  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 802215C4 0021E504  C0 04 00 04 */	lfs f0, 4(r4)
/* 802215C8 0021E508  D0 1F 01 DC */	stfs f0, 0x1dc(r31)
/* 802215CC 0021E50C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802215D0 0021E510  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 802215D4 0021E514  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 802215D8 0021E518  D0 1F 01 B8 */	stfs f0, 0x1b8(r31)
/* 802215DC 0021E51C  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 802215E0 0021E520  D0 1F 01 BC */	stfs f0, 0x1bc(r31)
/* 802215E4 0021E524  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 802215E8 0021E528  D0 1F 01 C0 */	stfs f0, 0x1c0(r31)
/* 802215EC 0021E52C  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 802215F0 0021E530  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 802215F4 0021E534  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 802215F8 0021E538  D0 1F 01 B0 */	stfs f0, 0x1b0(r31)
/* 802215FC 0021E53C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80221600 0021E540  D0 1F 01 B4 */	stfs f0, 0x1b4(r31)
/* 80221604 0021E544  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80221608 0021E548  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8022160C 0021E54C  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80221610 0021E550  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 80221614 0021E554  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80221618 0021E558  D0 1F 01 88 */	stfs f0, 0x188(r31)
/* 8022161C 0021E55C  48 00 00 19 */	bl resetControl__Q34Game15IllustratedBook6CameraFv
lbl_80221620:
/* 80221620 0021E560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80221624 0021E564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80221628 0021E568  7C 08 03 A6 */	mtlr r0
/* 8022162C 0021E56C  38 21 00 20 */	addi r1, r1, 0x20
/* 80221630 0021E570  4E 80 00 20 */	blr 

.global resetControl__Q34Game15IllustratedBook6CameraFv
resetControl__Q34Game15IllustratedBook6CameraFv:
/* 80221634 0021E574  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80221638 0021E578  7C 08 02 A6 */	mflr r0
/* 8022163C 0021E57C  3C 80 80 51 */	lis r4, "zero__10Vector3<f>"@ha
/* 80221640 0021E580  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221644 0021E584  90 01 00 34 */	stw r0, 0x34(r1)
/* 80221648 0021E588  38 00 00 00 */	li r0, 0
/* 8022164C 0021E58C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80221650 0021E590  7C 7F 1B 78 */	mr r31, r3
/* 80221654 0021E594  38 64 41 E4 */	addi r3, r4, "zero__10Vector3<f>"@l
/* 80221658 0021E598  C0 23 00 00 */	lfs f1, 0(r3)
/* 8022165C 0021E59C  D0 3F 01 F0 */	stfs f1, 0x1f0(r31)
/* 80221660 0021E5A0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80221664 0021E5A4  D0 3F 01 F4 */	stfs f1, 0x1f4(r31)
/* 80221668 0021E5A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8022166C 0021E5AC  D0 3F 01 F8 */	stfs f1, 0x1f8(r31)
/* 80221670 0021E5B0  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80221674 0021E5B4  D0 3F 01 FC */	stfs f1, 0x1fc(r31)
/* 80221678 0021E5B8  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 8022167C 0021E5BC  D0 3F 02 00 */	stfs f1, 0x200(r31)
/* 80221680 0021E5C0  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80221684 0021E5C4  D0 3F 02 04 */	stfs f1, 0x204(r31)
/* 80221688 0021E5C8  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8022168C 0021E5CC  D0 3F 02 08 */	stfs f1, 0x208(r31)
/* 80221690 0021E5D0  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80221694 0021E5D4  D0 3F 02 0C */	stfs f1, 0x20c(r31)
/* 80221698 0021E5D8  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8022169C 0021E5DC  D0 3F 02 10 */	stfs f1, 0x210(r31)
/* 802216A0 0021E5E0  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 802216A4 0021E5E4  D0 3F 02 14 */	stfs f1, 0x214(r31)
/* 802216A8 0021E5E8  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 802216AC 0021E5EC  D0 3F 02 18 */	stfs f1, 0x218(r31)
/* 802216B0 0021E5F0  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 802216B4 0021E5F4  D0 3F 02 1C */	stfs f1, 0x21c(r31)
/* 802216B8 0021E5F8  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 802216BC 0021E5FC  D0 3F 02 20 */	stfs f1, 0x220(r31)
/* 802216C0 0021E600  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 802216C4 0021E604  D0 3F 02 24 */	stfs f1, 0x224(r31)
/* 802216C8 0021E608  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 802216CC 0021E60C  D0 3F 02 28 */	stfs f1, 0x228(r31)
/* 802216D0 0021E610  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 802216D4 0021E614  D0 3F 02 2C */	stfs f1, 0x22c(r31)
/* 802216D8 0021E618  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 802216DC 0021E61C  D0 3F 02 30 */	stfs f1, 0x230(r31)
/* 802216E0 0021E620  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 802216E4 0021E624  D0 3F 02 34 */	stfs f1, 0x234(r31)
/* 802216E8 0021E628  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 802216EC 0021E62C  D0 3F 02 38 */	stfs f1, 0x238(r31)
/* 802216F0 0021E630  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 802216F4 0021E634  D0 3F 02 3C */	stfs f1, 0x23c(r31)
/* 802216F8 0021E638  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 802216FC 0021E63C  D0 3F 02 40 */	stfs f1, 0x240(r31)
/* 80221700 0021E640  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80221704 0021E644  D0 3F 02 44 */	stfs f1, 0x244(r31)
/* 80221708 0021E648  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 8022170C 0021E64C  D0 3F 02 48 */	stfs f1, 0x248(r31)
/* 80221710 0021E650  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80221714 0021E654  D0 3F 02 4C */	stfs f1, 0x24c(r31)
/* 80221718 0021E658  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8022171C 0021E65C  D0 3F 02 50 */	stfs f1, 0x250(r31)
/* 80221720 0021E660  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80221724 0021E664  D0 3F 02 54 */	stfs f1, 0x254(r31)
/* 80221728 0021E668  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8022172C 0021E66C  D0 3F 02 58 */	stfs f1, 0x258(r31)
/* 80221730 0021E670  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80221734 0021E674  D0 3F 02 5C */	stfs f1, 0x25c(r31)
/* 80221738 0021E678  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 8022173C 0021E67C  D0 3F 02 60 */	stfs f1, 0x260(r31)
/* 80221740 0021E680  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80221744 0021E684  D0 3F 02 64 */	stfs f1, 0x264(r31)
/* 80221748 0021E688  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8022174C 0021E68C  D0 3F 02 68 */	stfs f1, 0x268(r31)
/* 80221750 0021E690  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80221754 0021E694  D0 3F 02 6C */	stfs f1, 0x26c(r31)
/* 80221758 0021E698  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8022175C 0021E69C  D0 3F 02 70 */	stfs f1, 0x270(r31)
/* 80221760 0021E6A0  90 1F 02 74 */	stw r0, 0x274(r31)
/* 80221764 0021E6A4  D0 1F 02 7C */	stfs f0, 0x27c(r31)
/* 80221768 0021E6A8  D0 1F 02 78 */	stfs f0, 0x278(r31)
/* 8022176C 0021E6AC  D0 1F 02 84 */	stfs f0, 0x284(r31)
/* 80221770 0021E6B0  D0 1F 02 80 */	stfs f0, 0x280(r31)
/* 80221774 0021E6B4  C0 BF 01 C4 */	lfs f5, 0x1c4(r31)
/* 80221778 0021E6B8  FC 20 28 90 */	fmr f1, f5
/* 8022177C 0021E6BC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80221780 0021E6C0  40 80 00 08 */	bge lbl_80221788
/* 80221784 0021E6C4  FC 20 28 50 */	fneg f1, f5
lbl_80221788:
/* 80221788 0021E6C8  C0 62 BE 34 */	lfs f3, lbl_8051A194@sda21(r2)
/* 8022178C 0021E6CC  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80221790 0021E6D0  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221794 0021E6D4  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 80221798 0021E6D8  EC 41 00 F2 */	fmuls f2, f1, f3
/* 8022179C 0021E6DC  C0 DF 01 C8 */	lfs f6, 0x1c8(r31)
/* 802217A0 0021E6E0  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 802217A4 0021E6E4  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 802217A8 0021E6E8  C0 9F 01 BC */	lfs f4, 0x1bc(r31)
/* 802217AC 0021E6EC  FC 00 10 1E */	fctiwz f0, f2
/* 802217B0 0021E6F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 802217B4 0021E6F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802217B8 0021E6F8  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802217BC 0021E6FC  7C 64 02 14 */	add r3, r4, r0
/* 802217C0 0021E700  C0 03 00 04 */	lfs f0, 4(r3)
/* 802217C4 0021E704  EC 46 08 3A */	fmadds f2, f6, f0, f1
/* 802217C8 0021E708  40 80 00 28 */	bge lbl_802217F0
/* 802217CC 0021E70C  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 802217D0 0021E710  EC 05 00 32 */	fmuls f0, f5, f0
/* 802217D4 0021E714  FC 00 00 1E */	fctiwz f0, f0
/* 802217D8 0021E718  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802217DC 0021E71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802217E0 0021E720  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802217E4 0021E724  7C 04 04 2E */	lfsx f0, r4, r0
/* 802217E8 0021E728  FC 20 00 50 */	fneg f1, f0
/* 802217EC 0021E72C  48 00 00 1C */	b lbl_80221808
lbl_802217F0:
/* 802217F0 0021E730  EC 05 00 F2 */	fmuls f0, f5, f3
/* 802217F4 0021E734  FC 00 00 1E */	fctiwz f0, f0
/* 802217F8 0021E738  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802217FC 0021E73C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80221800 0021E740  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80221804 0021E744  7C 24 04 2E */	lfsx f1, r4, r0
lbl_80221808:
/* 80221808 0021E748  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8022180C 0021E74C  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 80221810 0021E750  D0 1F 01 A0 */	stfs f0, 0x1a0(r31)
/* 80221814 0021E754  D0 9F 01 A4 */	stfs f4, 0x1a4(r31)
/* 80221818 0021E758  D0 5F 01 A8 */	stfs f2, 0x1a8(r31)
/* 8022181C 0021E75C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80221820 0021E760  28 03 00 00 */	cmplwi r3, 0
/* 80221824 0021E764  41 82 00 24 */	beq lbl_80221848
/* 80221828 0021E768  81 83 00 04 */	lwz r12, 4(r3)
/* 8022182C 0021E76C  38 9F 01 A0 */	addi r4, r31, 0x1a0
/* 80221830 0021E770  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80221834 0021E774  7D 89 03 A6 */	mtctr r12
/* 80221838 0021E778  4E 80 04 21 */	bctrl 
/* 8022183C 0021E77C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80221840 0021E780  EC 00 08 2A */	fadds f0, f0, f1
/* 80221844 0021E784  D0 1F 01 A4 */	stfs f0, 0x1a4(r31)
lbl_80221848:
/* 80221848 0021E788  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 8022184C 0021E78C  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 80221850 0021E790  C0 7F 01 A4 */	lfs f3, 0x1a4(r31)
/* 80221854 0021E794  C0 5F 02 C8 */	lfs f2, 0x2c8(r31)
/* 80221858 0021E798  EC 21 00 2A */	fadds f1, f1, f0
/* 8022185C 0021E79C  C0 BF 01 A8 */	lfs f5, 0x1a8(r31)
/* 80221860 0021E7A0  C0 9F 02 CC */	lfs f4, 0x2cc(r31)
/* 80221864 0021E7A4  EC 43 10 2A */	fadds f2, f3, f2
/* 80221868 0021E7A8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022186C 0021E7AC  D0 3F 01 74 */	stfs f1, 0x174(r31)
/* 80221870 0021E7B0  EC 25 20 2A */	fadds f1, f5, f4
/* 80221874 0021E7B4  D0 5F 01 78 */	stfs f2, 0x178(r31)
/* 80221878 0021E7B8  D0 3F 01 7C */	stfs f1, 0x17c(r31)
/* 8022187C 0021E7BC  D0 1F 02 D0 */	stfs f0, 0x2d0(r31)
/* 80221880 0021E7C0  D0 1F 02 D4 */	stfs f0, 0x2d4(r31)
/* 80221884 0021E7C4  D0 1F 02 D8 */	stfs f0, 0x2d8(r31)
/* 80221888 0021E7C8  D0 1F 02 C4 */	stfs f0, 0x2c4(r31)
/* 8022188C 0021E7CC  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 80221890 0021E7D0  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 80221894 0021E7D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80221898 0021E7D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022189C 0021E7DC  7C 08 03 A6 */	mtlr r0
/* 802218A0 0021E7E0  38 21 00 30 */	addi r1, r1, 0x30
/* 802218A4 0021E7E4  4E 80 00 20 */	blr 

.global doUpdate__Q34Game15IllustratedBook6CameraFv
doUpdate__Q34Game15IllustratedBook6CameraFv:
/* 802218A8 0021E7E8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802218AC 0021E7EC  7C 08 02 A6 */	mflr r0
/* 802218B0 0021E7F0  90 01 01 24 */	stw r0, 0x124(r1)
/* 802218B4 0021E7F4  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 802218B8 0021E7F8  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 802218BC 0021E7FC  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 802218C0 0021E800  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 802218C4 0021E804  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 802218C8 0021E808  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 802218CC 0021E80C  93 E1 00 EC */	stw r31, 0xec(r1)
/* 802218D0 0021E810  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 802218D4 0021E814  7C 7E 1B 78 */	mr r30, r3
/* 802218D8 0021E818  3C 80 80 51 */	lis r4, "zero__10Vector3<f>"@ha
/* 802218DC 0021E81C  80 63 01 9C */	lwz r3, 0x19c(r3)
/* 802218E0 0021E820  3B E4 41 E4 */	addi r31, r4, "zero__10Vector3<f>"@l
/* 802218E4 0021E824  C3 FF 00 00 */	lfs f31, 0(r31)
/* 802218E8 0021E828  28 03 00 00 */	cmplwi r3, 0
/* 802218EC 0021E82C  C3 DF 00 04 */	lfs f30, 4(r31)
/* 802218F0 0021E830  C3 BF 00 08 */	lfs f29, 8(r31)
/* 802218F4 0021E834  41 82 00 44 */	beq lbl_80221938
/* 802218F8 0021E838  81 83 00 00 */	lwz r12, 0(r3)
/* 802218FC 0021E83C  38 81 00 24 */	addi r4, r1, 0x24
/* 80221900 0021E840  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80221904 0021E844  7D 89 03 A6 */	mtctr r12
/* 80221908 0021E848  4E 80 04 21 */	bctrl 
/* 8022190C 0021E84C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80221910 0021E850  38 81 00 24 */	addi r4, r1, 0x24
/* 80221914 0021E854  81 83 00 04 */	lwz r12, 4(r3)
/* 80221918 0021E858  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8022191C 0021E85C  7D 89 03 A6 */	mtctr r12
/* 80221920 0021E860  4E 80 04 21 */	bctrl 
/* 80221924 0021E864  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80221928 0021E868  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022192C 0021E86C  40 80 00 24 */	bge lbl_80221950
/* 80221930 0021E870  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80221934 0021E874  48 00 00 1C */	b lbl_80221950
lbl_80221938:
/* 80221938 0021E878  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 8022193C 0021E87C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80221940 0021E880  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80221944 0021E884  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80221948 0021E888  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 8022194C 0021E88C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80221950:
/* 80221950 0021E890  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 80221954 0021E894  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80221958 0021E898  EC 01 00 2A */	fadds f0, f1, f0
/* 8022195C 0021E89C  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
/* 80221960 0021E8A0  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80221964 0021E8A4  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 80221968 0021E8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8022196C 0021E8AC  D0 1E 01 DC */	stfs f0, 0x1dc(r30)
/* 80221970 0021E8B0  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 80221974 0021E8B4  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80221978 0021E8B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8022197C 0021E8BC  D0 1E 01 E0 */	stfs f0, 0x1e0(r30)
/* 80221980 0021E8C0  80 1E 02 74 */	lwz r0, 0x274(r30)
/* 80221984 0021E8C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80221988 0021E8C8  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8022198C 0021E8CC  38 63 01 FC */	addi r3, r3, 0x1fc
/* 80221990 0021E8D0  7C 7E 1A 14 */	add r3, r30, r3
/* 80221994 0021E8D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80221998 0021E8D8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8022199C 0021E8DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 802219A0 0021E8E0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802219A4 0021E8E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 802219A8 0021E8E8  80 7E 02 74 */	lwz r3, 0x274(r30)
/* 802219AC 0021E8EC  38 03 00 01 */	addi r0, r3, 1
/* 802219B0 0021E8F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 802219B4 0021E8F4  90 1E 02 74 */	stw r0, 0x274(r30)
/* 802219B8 0021E8F8  41 80 00 0C */	blt lbl_802219C4
/* 802219BC 0021E8FC  38 00 00 00 */	li r0, 0
/* 802219C0 0021E900  90 1E 02 74 */	stw r0, 0x274(r30)
lbl_802219C4:
/* 802219C4 0021E904  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 802219C8 0021E908  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 802219CC 0021E90C  EF FF 00 2A */	fadds f31, f31, f0
/* 802219D0 0021E910  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 802219D4 0021E914  EF DE 08 2A */	fadds f30, f30, f1
/* 802219D8 0021E918  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 802219DC 0021E91C  C0 5E 02 04 */	lfs f2, 0x204(r30)
/* 802219E0 0021E920  EF FF 00 2A */	fadds f31, f31, f0
/* 802219E4 0021E924  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 802219E8 0021E928  EF DE 08 2A */	fadds f30, f30, f1
/* 802219EC 0021E92C  C0 3E 02 18 */	lfs f1, 0x218(r30)
/* 802219F0 0021E930  EF BD 10 2A */	fadds f29, f29, f2
/* 802219F4 0021E934  EF FF 00 2A */	fadds f31, f31, f0
/* 802219F8 0021E938  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 802219FC 0021E93C  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A00 0021E940  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 80221A04 0021E944  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A08 0021E948  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 80221A0C 0021E94C  C0 5E 02 10 */	lfs f2, 0x210(r30)
/* 80221A10 0021E950  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A14 0021E954  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 80221A18 0021E958  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A1C 0021E95C  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80221A20 0021E960  EF BD 10 2A */	fadds f29, f29, f2
/* 80221A24 0021E964  C0 5E 02 1C */	lfs f2, 0x21c(r30)
/* 80221A28 0021E968  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A2C 0021E96C  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A30 0021E970  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 80221A34 0021E974  EF BD 10 2A */	fadds f29, f29, f2
/* 80221A38 0021E978  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 80221A3C 0021E97C  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A40 0021E980  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 80221A44 0021E984  C0 DE 02 28 */	lfs f6, 0x228(r30)
/* 80221A48 0021E988  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A4C 0021E98C  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 80221A50 0021E990  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A54 0021E994  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 80221A58 0021E998  EF BD 30 2A */	fadds f29, f29, f6
/* 80221A5C 0021E99C  C0 BE 02 34 */	lfs f5, 0x234(r30)
/* 80221A60 0021E9A0  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A64 0021E9A4  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A68 0021E9A8  C0 1E 02 68 */	lfs f0, 0x268(r30)
/* 80221A6C 0021E9AC  EF BD 28 2A */	fadds f29, f29, f5
/* 80221A70 0021E9B0  C0 3E 02 54 */	lfs f1, 0x254(r30)
/* 80221A74 0021E9B4  C0 5E 02 40 */	lfs f2, 0x240(r30)
/* 80221A78 0021E9B8  EF FF 00 2A */	fadds f31, f31, f0
/* 80221A7C 0021E9BC  C0 82 BD DC */	lfs f4, lbl_8051A13C@sda21(r2)
/* 80221A80 0021E9C0  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A84 0021E9C4  C0 3E 02 60 */	lfs f1, 0x260(r30)
/* 80221A88 0021E9C8  EF BD 10 2A */	fadds f29, f29, f2
/* 80221A8C 0021E9CC  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80221A90 0021E9D0  EF FF 01 32 */	fmuls f31, f31, f4
/* 80221A94 0021E9D4  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 80221A98 0021E9D8  EF DE 08 2A */	fadds f30, f30, f1
/* 80221A9C 0021E9DC  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 80221AA0 0021E9E0  EF BD 10 2A */	fadds f29, f29, f2
/* 80221AA4 0021E9E4  C0 5E 02 58 */	lfs f2, 0x258(r30)
/* 80221AA8 0021E9E8  EC FF 00 28 */	fsubs f7, f31, f0
/* 80221AAC 0021E9EC  C0 DE 02 64 */	lfs f6, 0x264(r30)
/* 80221AB0 0021E9F0  EF DE 08 2A */	fadds f30, f30, f1
/* 80221AB4 0021E9F4  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80221AB8 0021E9F8  EF BD 10 2A */	fadds f29, f29, f2
/* 80221ABC 0021E9FC  C0 7E 01 DC */	lfs f3, 0x1dc(r30)
/* 80221AC0 0021EA00  EC E7 01 32 */	fmuls f7, f7, f4
/* 80221AC4 0021EA04  C0 BE 02 70 */	lfs f5, 0x270(r30)
/* 80221AC8 0021EA08  EF DE 01 32 */	fmuls f30, f30, f4
/* 80221ACC 0021EA0C  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80221AD0 0021EA10  EF BD 30 2A */	fadds f29, f29, f6
/* 80221AD4 0021EA14  C0 22 BE 3C */	lfs f1, lbl_8051A19C@sda21(r2)
/* 80221AD8 0021EA18  EC 00 38 2A */	fadds f0, f0, f7
/* 80221ADC 0021EA1C  EC 7E 18 28 */	fsubs f3, f30, f3
/* 80221AE0 0021EA20  EF BD 28 2A */	fadds f29, f29, f5
/* 80221AE4 0021EA24  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80221AE8 0021EA28  EC 63 01 32 */	fmuls f3, f3, f4
/* 80221AEC 0021EA2C  EF BD 01 32 */	fmuls f29, f29, f4
/* 80221AF0 0021EA30  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 80221AF4 0021EA34  EC 00 18 2A */	fadds f0, f0, f3
/* 80221AF8 0021EA38  EC 5D 10 28 */	fsubs f2, f29, f2
/* 80221AFC 0021EA3C  D0 1E 01 F4 */	stfs f0, 0x1f4(r30)
/* 80221B00 0021EA40  EC 42 01 32 */	fmuls f2, f2, f4
/* 80221B04 0021EA44  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80221B08 0021EA48  EC 00 10 2A */	fadds f0, f0, f2
/* 80221B0C 0021EA4C  D0 1E 01 F8 */	stfs f0, 0x1f8(r30)
/* 80221B10 0021EA50  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80221B14 0021EA54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80221B18 0021EA58  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80221B1C 0021EA5C  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 80221B20 0021EA60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80221B24 0021EA64  D0 1E 01 F4 */	stfs f0, 0x1f4(r30)
/* 80221B28 0021EA68  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80221B2C 0021EA6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80221B30 0021EA70  D0 1E 01 F8 */	stfs f0, 0x1f8(r30)
/* 80221B34 0021EA74  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80221B38 0021EA78  48 1D E0 95 */	bl isAppearConfirmWindow__Q26Screen9Game2DMgrFv
/* 80221B3C 0021EA7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221B40 0021EA80  40 82 03 78 */	bne lbl_80221EB8
/* 80221B44 0021EA84  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 80221B48 0021EA88  3C 00 43 30 */	lis r0, 0x4330
/* 80221B4C 0021EA8C  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80221B50 0021EA90  7F C3 F3 78 */	mr r3, r30
/* 80221B54 0021EA94  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80221B58 0021EA98  C8 22 BE 28 */	lfd f1, lbl_8051A188@sda21(r2)
/* 80221B5C 0021EA9C  54 04 EF FE */	rlwinm r4, r0, 0x1d, 0x1f, 0x1f
/* 80221B60 0021EAA0  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 80221B64 0021EAA4  7C 04 00 50 */	subf r0, r4, r0
/* 80221B68 0021EAA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80221B6C 0021EAAC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80221B70 0021EAB0  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80221B74 0021EAB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80221B78 0021EAB8  48 00 09 21 */	bl addFovy__Q34Game15IllustratedBook6CameraFf
/* 80221B7C 0021EABC  C0 5E 02 8C */	lfs f2, 0x28c(r30)
/* 80221B80 0021EAC0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80221B84 0021EAC4  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 80221B88 0021EAC8  EC 81 10 28 */	fsubs f4, f1, f2
/* 80221B8C 0021EACC  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 80221B90 0021EAD0  EC 60 10 28 */	fsubs f3, f0, f2
/* 80221B94 0021EAD4  C0 5E 02 FC */	lfs f2, 0x2fc(r30)
/* 80221B98 0021EAD8  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 80221B9C 0021EADC  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80221BA0 0021EAE0  EF A4 18 24 */	fdivs f29, f4, f3
/* 80221BA4 0021EAE4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80221BA8 0021EAE8  D0 1E 01 CC */	stfs f0, 0x1cc(r30)
/* 80221BAC 0021EAEC  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80221BB0 0021EAF0  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 80221BB4 0021EAF4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221BB8 0021EAF8  40 80 00 08 */	bge lbl_80221BC0
/* 80221BBC 0021EAFC  D0 3E 01 CC */	stfs f1, 0x1cc(r30)
lbl_80221BC0:
/* 80221BC0 0021EB00  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80221BC4 0021EB04  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 80221BC8 0021EB08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221BCC 0021EB0C  40 81 00 08 */	ble lbl_80221BD4
/* 80221BD0 0021EB10  D0 3E 01 CC */	stfs f1, 0x1cc(r30)
lbl_80221BD4:
/* 80221BD4 0021EB14  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 80221BD8 0021EB18  C0 7E 02 F8 */	lfs f3, 0x2f8(r30)
/* 80221BDC 0021EB1C  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 80221BE0 0021EB20  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 80221BE4 0021EB24  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80221BE8 0021EB28  EC 23 08 BA */	fmadds f1, f3, f2, f1
/* 80221BEC 0021EB2C  D0 3E 01 C4 */	stfs f1, 0x1c4(r30)
/* 80221BF0 0021EB30  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 80221BF4 0021EB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221BF8 0021EB38  40 81 00 0C */	ble lbl_80221C04
/* 80221BFC 0021EB3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80221C00 0021EB40  D0 1E 01 C4 */	stfs f0, 0x1c4(r30)
lbl_80221C04:
/* 80221C04 0021EB44  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 80221C08 0021EB48  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221C0C 0021EB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221C10 0021EB50  40 80 00 10 */	bge lbl_80221C20
/* 80221C14 0021EB54  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80221C18 0021EB58  EC 01 00 2A */	fadds f0, f1, f0
/* 80221C1C 0021EB5C  D0 1E 01 C4 */	stfs f0, 0x1c4(r30)
lbl_80221C20:
/* 80221C20 0021EB60  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80221C24 0021EB64  48 1D DD E1 */	bl isZukanEnlargedWindow__Q26Screen9Game2DMgrFv
/* 80221C28 0021EB68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221C2C 0021EB6C  41 82 00 2C */	beq lbl_80221C58
/* 80221C30 0021EB70  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 80221C34 0021EB74  C0 22 BD C4 */	lfs f1, lbl_8051A124@sda21(r2)
/* 80221C38 0021EB78  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80221C3C 0021EB7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80221C40 0021EB80  D0 1E 02 7C */	stfs f0, 0x27c(r30)
/* 80221C44 0021EB84  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 80221C48 0021EB88  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80221C4C 0021EB8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80221C50 0021EB90  D0 1E 02 84 */	stfs f0, 0x284(r30)
/* 80221C54 0021EB94  48 00 00 10 */	b lbl_80221C64
lbl_80221C58:
/* 80221C58 0021EB98  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221C5C 0021EB9C  D0 1E 02 7C */	stfs f0, 0x27c(r30)
/* 80221C60 0021EBA0  D0 1E 02 84 */	stfs f0, 0x284(r30)
lbl_80221C64:
/* 80221C64 0021EBA4  C0 9E 03 10 */	lfs f4, 0x310(r30)
/* 80221C68 0021EBA8  C0 1E 03 0C */	lfs f0, 0x30c(r30)
/* 80221C6C 0021EBAC  C0 3E 02 7C */	lfs f1, 0x27c(r30)
/* 80221C70 0021EBB0  EC 60 20 28 */	fsubs f3, f0, f4
/* 80221C74 0021EBB4  C0 5E 02 78 */	lfs f2, 0x278(r30)
/* 80221C78 0021EBB8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221C7C 0021EBBC  EC 21 10 28 */	fsubs f1, f1, f2
/* 80221C80 0021EBC0  EC 7D 20 FA */	fmadds f3, f29, f3, f4
/* 80221C84 0021EBC4  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 80221C88 0021EBC8  D0 3E 02 78 */	stfs f1, 0x278(r30)
/* 80221C8C 0021EBCC  C0 3E 02 84 */	lfs f1, 0x284(r30)
/* 80221C90 0021EBD0  C0 5E 02 80 */	lfs f2, 0x280(r30)
/* 80221C94 0021EBD4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80221C98 0021EBD8  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 80221C9C 0021EBDC  D0 3E 02 80 */	stfs f1, 0x280(r30)
/* 80221CA0 0021EBE0  C0 BE 01 C4 */	lfs f5, 0x1c4(r30)
/* 80221CA4 0021EBE4  FC 20 28 90 */	fmr f1, f5
/* 80221CA8 0021EBE8  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80221CAC 0021EBEC  40 80 00 08 */	bge lbl_80221CB4
/* 80221CB0 0021EBF0  FC 20 28 50 */	fneg f1, f5
lbl_80221CB4:
/* 80221CB4 0021EBF4  C0 62 BE 34 */	lfs f3, lbl_8051A194@sda21(r2)
/* 80221CB8 0021EBF8  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80221CBC 0021EBFC  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221CC0 0021EC00  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 80221CC4 0021EC04  EC 41 00 F2 */	fmuls f2, f1, f3
/* 80221CC8 0021EC08  C0 DE 01 C8 */	lfs f6, 0x1c8(r30)
/* 80221CCC 0021EC0C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80221CD0 0021EC10  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 80221CD4 0021EC14  C0 9E 01 BC */	lfs f4, 0x1bc(r30)
/* 80221CD8 0021EC18  FC 00 10 1E */	fctiwz f0, f2
/* 80221CDC 0021EC1C  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80221CE0 0021EC20  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80221CE4 0021EC24  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80221CE8 0021EC28  7C 64 02 14 */	add r3, r4, r0
/* 80221CEC 0021EC2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80221CF0 0021EC30  EC 46 08 3A */	fmadds f2, f6, f0, f1
/* 80221CF4 0021EC34  40 80 00 28 */	bge lbl_80221D1C
/* 80221CF8 0021EC38  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 80221CFC 0021EC3C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80221D00 0021EC40  FC 00 00 1E */	fctiwz f0, f0
/* 80221D04 0021EC44  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80221D08 0021EC48  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80221D0C 0021EC4C  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80221D10 0021EC50  7C 04 04 2E */	lfsx f0, r4, r0
/* 80221D14 0021EC54  FC 20 00 50 */	fneg f1, f0
/* 80221D18 0021EC58  48 00 00 1C */	b lbl_80221D34
lbl_80221D1C:
/* 80221D1C 0021EC5C  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80221D20 0021EC60  FC 00 00 1E */	fctiwz f0, f0
/* 80221D24 0021EC64  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80221D28 0021EC68  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80221D2C 0021EC6C  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80221D30 0021EC70  7C 24 04 2E */	lfsx f1, r4, r0
lbl_80221D34:
/* 80221D34 0021EC74  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80221D38 0021EC78  38 81 00 18 */	addi r4, r1, 0x18
/* 80221D3C 0021EC7C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80221D40 0021EC80  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 80221D44 0021EC84  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80221D48 0021EC88  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80221D4C 0021EC8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80221D50 0021EC90  81 83 00 04 */	lwz r12, 4(r3)
/* 80221D54 0021EC94  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80221D58 0021EC98  7D 89 03 A6 */	mtctr r12
/* 80221D5C 0021EC9C  4E 80 04 21 */	bctrl 
/* 80221D60 0021ECA0  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80221D64 0021ECA4  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80221D68 0021ECA8  3C 80 80 51 */	lis r4, "zero__10Vector3<f>"@ha
/* 80221D6C 0021ECAC  C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 80221D70 0021ECB0  EC E0 08 2A */	fadds f7, f0, f1
/* 80221D74 0021ECB4  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 80221D78 0021ECB8  38 63 71 A0 */	addi r3, r3, sincosTable___5JMath@l
/* 80221D7C 0021ECBC  C0 62 BE 20 */	lfs f3, lbl_8051A180@sda21(r2)
/* 80221D80 0021ECC0  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80221D84 0021ECC4  39 01 00 08 */	addi r8, r1, 8
/* 80221D88 0021ECC8  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 80221D8C 0021ECCC  38 E4 41 E4 */	addi r7, r4, "zero__10Vector3<f>"@l
/* 80221D90 0021ECD0  C0 02 BE 3C */	lfs f0, lbl_8051A19C@sda21(r2)
/* 80221D94 0021ECD4  38 C0 00 00 */	li r6, 0
/* 80221D98 0021ECD8  C0 9E 01 A0 */	lfs f4, 0x1a0(r30)
/* 80221D9C 0021ECDC  38 00 FF FF */	li r0, -1
/* 80221DA0 0021ECE0  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 80221DA4 0021ECE4  38 81 00 34 */	addi r4, r1, 0x34
/* 80221DA8 0021ECE8  ED 06 20 28 */	fsubs f8, f6, f4
/* 80221DAC 0021ECEC  C0 DE 03 00 */	lfs f6, 0x300(r30)
/* 80221DB0 0021ECF0  EC E7 08 28 */	fsubs f7, f7, f1
/* 80221DB4 0021ECF4  C0 9E 01 A8 */	lfs f4, 0x1a8(r30)
/* 80221DB8 0021ECF8  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 80221DBC 0021ECFC  ED 08 01 B2 */	fmuls f8, f8, f6
/* 80221DC0 0021ED00  EC 85 20 28 */	fsubs f4, f5, f4
/* 80221DC4 0021ED04  EC E7 01 B2 */	fmuls f7, f7, f6
/* 80221DC8 0021ED08  EC 21 40 2A */	fadds f1, f1, f8
/* 80221DCC 0021ED0C  EC 84 01 B2 */	fmuls f4, f4, f6
/* 80221DD0 0021ED10  D0 3E 01 A0 */	stfs f1, 0x1a0(r30)
/* 80221DD4 0021ED14  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 80221DD8 0021ED18  EC 21 38 2A */	fadds f1, f1, f7
/* 80221DDC 0021ED1C  D0 3E 01 A4 */	stfs f1, 0x1a4(r30)
/* 80221DE0 0021ED20  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 80221DE4 0021ED24  EC 21 20 2A */	fadds f1, f1, f4
/* 80221DE8 0021ED28  D0 3E 01 A8 */	stfs f1, 0x1a8(r30)
/* 80221DEC 0021ED2C  C0 9E 01 A0 */	lfs f4, 0x1a0(r30)
/* 80221DF0 0021ED30  C0 23 08 00 */	lfs f1, 0x800(r3)
/* 80221DF4 0021ED34  D0 81 00 08 */	stfs f4, 8(r1)
/* 80221DF8 0021ED38  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80221DFC 0021ED3C  C0 9E 01 A4 */	lfs f4, 0x1a4(r30)
/* 80221E00 0021ED40  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 80221E04 0021ED44  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80221E08 0021ED48  C0 9E 01 A8 */	lfs f4, 0x1a8(r30)
/* 80221E0C 0021ED4C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80221E10 0021ED50  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80221E14 0021ED54  91 01 00 34 */	stw r8, 0x34(r1)
/* 80221E18 0021ED58  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80221E1C 0021ED5C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80221E20 0021ED60  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80221E24 0021ED64  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80221E28 0021ED68  90 C1 00 78 */	stw r6, 0x78(r1)
/* 80221E2C 0021ED6C  98 C1 00 A8 */	stb r6, 0xa8(r1)
/* 80221E30 0021ED70  98 C1 00 4D */	stb r6, 0x4d(r1)
/* 80221E34 0021ED74  98 C1 00 4C */	stb r6, 0x4c(r1)
/* 80221E38 0021ED78  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 80221E3C 0021ED7C  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80221E40 0021ED80  98 C1 00 C4 */	stb r6, 0xc4(r1)
/* 80221E44 0021ED84  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 80221E48 0021ED88  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80221E4C 0021ED8C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80221E50 0021ED90  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80221E54 0021ED94  90 C1 00 80 */	stw r6, 0x80(r1)
/* 80221E58 0021ED98  98 C1 00 4E */	stb r6, 0x4e(r1)
/* 80221E5C 0021ED9C  81 83 00 04 */	lwz r12, 4(r3)
/* 80221E60 0021EDA0  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 80221E64 0021EDA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80221E68 0021EDA8  7D 89 03 A6 */	mtctr r12
/* 80221E6C 0021EDAC  4E 80 04 21 */	bctrl 
/* 80221E70 0021EDB0  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80221E74 0021EDB4  38 81 00 08 */	addi r4, r1, 8
/* 80221E78 0021EDB8  81 83 00 04 */	lwz r12, 4(r3)
/* 80221E7C 0021EDBC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80221E80 0021EDC0  7D 89 03 A6 */	mtctr r12
/* 80221E84 0021EDC4  4E 80 04 21 */	bctrl 
/* 80221E88 0021EDC8  C0 42 BE 20 */	lfs f2, lbl_8051A180@sda21(r2)
/* 80221E8C 0021EDCC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80221E90 0021EDD0  EC 22 08 2A */	fadds f1, f2, f1
/* 80221E94 0021EDD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80221E98 0021EDD8  40 80 00 08 */	bge lbl_80221EA0
/* 80221E9C 0021EDDC  D0 21 00 0C */	stfs f1, 0xc(r1)
lbl_80221EA0:
/* 80221EA0 0021EDE0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80221EA4 0021EDE4  D0 1E 01 A0 */	stfs f0, 0x1a0(r30)
/* 80221EA8 0021EDE8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80221EAC 0021EDEC  D0 1E 01 A4 */	stfs f0, 0x1a4(r30)
/* 80221EB0 0021EDF0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80221EB4 0021EDF4  D0 1E 01 A8 */	stfs f0, 0x1a8(r30)
lbl_80221EB8:
/* 80221EB8 0021EDF8  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80221EBC 0021EDFC  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80221EC0 0021EE00  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80221EC4 0021EE04  EC 61 00 28 */	fsubs f3, f1, f0
/* 80221EC8 0021EE08  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 80221ECC 0021EE0C  C1 3E 01 D8 */	lfs f9, 0x1d8(r30)
/* 80221ED0 0021EE10  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80221ED4 0021EE14  EC 82 08 28 */	fsubs f4, f2, f1
/* 80221ED8 0021EE18  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80221EDC 0021EE1C  EC 49 00 28 */	fsubs f2, f9, f0
/* 80221EE0 0021EE20  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80221EE4 0021EE24  EC A4 01 32 */	fmuls f5, f4, f4
/* 80221EE8 0021EE28  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80221EEC 0021EE2C  EC 25 08 2A */	fadds f1, f5, f1
/* 80221EF0 0021EE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221EF4 0021EE34  40 81 00 14 */	ble lbl_80221F08
/* 80221EF8 0021EE38  40 81 00 14 */	ble lbl_80221F0C
/* 80221EFC 0021EE3C  FC 00 08 34 */	frsqrte f0, f1
/* 80221F00 0021EE40  EC 20 00 72 */	fmuls f1, f0, f1
/* 80221F04 0021EE44  48 00 00 08 */	b lbl_80221F0C
lbl_80221F08:
/* 80221F08 0021EE48  FC 20 00 90 */	fmr f1, f0
lbl_80221F0C:
/* 80221F0C 0021EE4C  C0 02 BE 44 */	lfs f0, lbl_8051A1A4@sda21(r2)
/* 80221F10 0021EE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221F14 0021EE54  40 81 00 1C */	ble lbl_80221F30
/* 80221F18 0021EE58  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80221F1C 0021EE5C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80221F20 0021EE60  ED 42 00 32 */	fmuls f10, f2, f0
/* 80221F24 0021EE64  EC 23 00 32 */	fmuls f1, f3, f0
/* 80221F28 0021EE68  ED 64 00 32 */	fmuls f11, f4, f0
/* 80221F2C 0021EE6C  48 00 00 10 */	b lbl_80221F3C
lbl_80221F30:
/* 80221F30 0021EE70  C1 42 BD C8 */	lfs f10, lbl_8051A128@sda21(r2)
/* 80221F34 0021EE74  C1 62 BE 1C */	lfs f11, lbl_8051A17C@sda21(r2)
/* 80221F38 0021EE78  FC 20 50 90 */	fmr f1, f10
lbl_80221F3C:
/* 80221F3C 0021EE7C  C0 E2 BD C8 */	lfs f7, lbl_8051A128@sda21(r2)
/* 80221F40 0021EE80  7F C3 F3 78 */	mr r3, r30
/* 80221F44 0021EE84  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80221F48 0021EE88  EC CA 01 F2 */	fmuls f6, f10, f7
/* 80221F4C 0021EE8C  C1 02 BD BC */	lfs f8, lbl_8051A11C@sda21(r2)
/* 80221F50 0021EE90  ED 81 01 F2 */	fmuls f12, f1, f7
/* 80221F54 0021EE94  C0 BE 02 A0 */	lfs f5, 0x2a0(r30)
/* 80221F58 0021EE98  C0 9E 02 78 */	lfs f4, 0x278(r30)
/* 80221F5C 0021EE9C  EC 29 00 2A */	fadds f1, f9, f0
/* 80221F60 0021EEA0  ED 2B 62 3C */	fnmsubs f9, f11, f8, f12
/* 80221F64 0021EEA4  C0 7E 02 A4 */	lfs f3, 0x2a4(r30)
/* 80221F68 0021EEA8  C0 5E 02 80 */	lfs f2, 0x280(r30)
/* 80221F6C 0021EEAC  EC CB 31 F8 */	fmsubs f6, f11, f7, f6
/* 80221F70 0021EEB0  ED A5 20 2A */	fadds f13, f5, f4
/* 80221F74 0021EEB4  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 80221F78 0021EEB8  EF A3 10 2A */	fadds f29, f3, f2
/* 80221F7C 0021EEBC  EC 66 01 F2 */	fmuls f3, f6, f7
/* 80221F80 0021EEC0  EC AA 62 38 */	fmsubs f5, f10, f8, f12
/* 80221F84 0021EEC4  ED 67 07 72 */	fmuls f11, f7, f29
/* 80221F88 0021EEC8  EC 49 0B 7A */	fmadds f2, f9, f13, f1
/* 80221F8C 0021EECC  ED 45 1A 3C */	fnmsubs f10, f5, f8, f3
/* 80221F90 0021EED0  EC 29 01 F2 */	fmuls f1, f9, f7
/* 80221F94 0021EED4  EC 4B 10 2A */	fadds f2, f11, f2
/* 80221F98 0021EED8  EC 69 1A 38 */	fmsubs f3, f9, f8, f3
/* 80221F9C 0021EEDC  EC 85 09 F8 */	fmsubs f4, f5, f7, f1
/* 80221FA0 0021EEE0  EC 2A 10 3A */	fmadds f1, f10, f0, f2
/* 80221FA4 0021EEE4  D0 3E 01 AC */	stfs f1, 0x1ac(r30)
/* 80221FA8 0021EEE8  C0 5E 01 DC */	lfs f2, 0x1dc(r30)
/* 80221FAC 0021EEEC  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 80221FB0 0021EEF0  EC 22 08 2A */	fadds f1, f2, f1
/* 80221FB4 0021EEF4  EC 26 0B 7A */	fmadds f1, f6, f13, f1
/* 80221FB8 0021EEF8  EC 28 0F 7A */	fmadds f1, f8, f29, f1
/* 80221FBC 0021EEFC  EC 24 08 3A */	fmadds f1, f4, f0, f1
/* 80221FC0 0021EF00  D0 3E 01 B0 */	stfs f1, 0x1b0(r30)
/* 80221FC4 0021EF04  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80221FC8 0021EF08  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 80221FCC 0021EF0C  EC 22 08 2A */	fadds f1, f2, f1
/* 80221FD0 0021EF10  EC 25 0B 7A */	fmadds f1, f5, f13, f1
/* 80221FD4 0021EF14  EC 2B 08 2A */	fadds f1, f11, f1
/* 80221FD8 0021EF18  EC 03 08 3A */	fmadds f0, f3, f0, f1
/* 80221FDC 0021EF1C  D0 1E 01 B4 */	stfs f0, 0x1b4(r30)
/* 80221FE0 0021EF20  48 00 01 CD */	bl updateCameraShake__Q34Game15IllustratedBook6CameraFv
/* 80221FE4 0021EF24  7F C3 F3 78 */	mr r3, r30
/* 80221FE8 0021EF28  48 00 03 C9 */	bl updateFocus__Q34Game15IllustratedBook6CameraFv
/* 80221FEC 0021EF2C  C0 62 BE 48 */	lfs f3, lbl_8051A1A8@sda21(r2)
/* 80221FF0 0021EF30  3C 60 80 51 */	lis r3, "zero__10Vector3<f>"@ha
/* 80221FF4 0021EF34  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 80221FF8 0021EF38  C0 3E 02 D0 */	lfs f1, 0x2d0(r30)
/* 80221FFC 0021EF3C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80222000 0021EF40  C0 C3 41 E4 */	lfs f6, "zero__10Vector3<f>"@l(r3)
/* 80222004 0021EF44  C0 FF 00 04 */	lfs f7, 4(r31)
/* 80222008 0021EF48  C1 1F 00 08 */	lfs f8, 8(r31)
/* 8022200C 0021EF4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80222010 0021EF50  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222014 0021EF54  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 80222018 0021EF58  C0 5E 02 D4 */	lfs f2, 0x2d4(r30)
/* 8022201C 0021EF5C  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 80222020 0021EF60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80222024 0021EF64  D0 1E 02 D4 */	stfs f0, 0x2d4(r30)
/* 80222028 0021EF68  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 8022202C 0021EF6C  C0 5E 02 D8 */	lfs f2, 0x2d8(r30)
/* 80222030 0021EF70  EC 03 00 32 */	fmuls f0, f3, f0
/* 80222034 0021EF74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80222038 0021EF78  D0 1E 02 D8 */	stfs f0, 0x2d8(r30)
/* 8022203C 0021EF7C  C0 5E 02 C4 */	lfs f2, 0x2c4(r30)
/* 80222040 0021EF80  C0 1E 02 D0 */	lfs f0, 0x2d0(r30)
/* 80222044 0021EF84  EC 02 00 2A */	fadds f0, f2, f0
/* 80222048 0021EF88  D0 1E 02 C4 */	stfs f0, 0x2c4(r30)
/* 8022204C 0021EF8C  C0 5E 02 C8 */	lfs f2, 0x2c8(r30)
/* 80222050 0021EF90  C0 1E 02 D4 */	lfs f0, 0x2d4(r30)
/* 80222054 0021EF94  EC 02 00 2A */	fadds f0, f2, f0
/* 80222058 0021EF98  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 8022205C 0021EF9C  C0 5E 02 CC */	lfs f2, 0x2cc(r30)
/* 80222060 0021EFA0  C0 1E 02 D8 */	lfs f0, 0x2d8(r30)
/* 80222064 0021EFA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80222068 0021EFA8  D0 1E 02 CC */	stfs f0, 0x2cc(r30)
/* 8022206C 0021EFAC  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 80222070 0021EFB0  C0 BE 02 CC */	lfs f5, 0x2cc(r30)
/* 80222074 0021EFB4  EC 40 30 28 */	fsubs f2, f0, f6
/* 80222078 0021EFB8  C0 9E 02 C8 */	lfs f4, 0x2c8(r30)
/* 8022207C 0021EFBC  C0 7E 03 18 */	lfs f3, 0x318(r30)
/* 80222080 0021EFC0  EC A5 40 28 */	fsubs f5, f5, f8
/* 80222084 0021EFC4  C0 1E 02 D0 */	lfs f0, 0x2d0(r30)
/* 80222088 0021EFC8  EC 84 38 28 */	fsubs f4, f4, f7
/* 8022208C 0021EFCC  EC 03 00 BC */	fnmsubs f0, f3, f2, f0
/* 80222090 0021EFD0  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 80222094 0021EFD4  C0 5E 03 1C */	lfs f2, 0x31c(r30)
/* 80222098 0021EFD8  C0 1E 02 D4 */	lfs f0, 0x2d4(r30)
/* 8022209C 0021EFDC  EC 02 01 3C */	fnmsubs f0, f2, f4, f0
/* 802220A0 0021EFE0  D0 1E 02 D4 */	stfs f0, 0x2d4(r30)
/* 802220A4 0021EFE4  C0 5E 03 20 */	lfs f2, 0x320(r30)
/* 802220A8 0021EFE8  C0 1E 02 D8 */	lfs f0, 0x2d8(r30)
/* 802220AC 0021EFEC  EC 02 01 7C */	fnmsubs f0, f2, f5, f0
/* 802220B0 0021EFF0  D0 1E 02 D8 */	stfs f0, 0x2d8(r30)
/* 802220B4 0021EFF4  C0 7E 02 D0 */	lfs f3, 0x2d0(r30)
/* 802220B8 0021EFF8  C0 5E 02 D4 */	lfs f2, 0x2d4(r30)
/* 802220BC 0021EFFC  C0 9E 02 D8 */	lfs f4, 0x2d8(r30)
/* 802220C0 0021F000  EC 03 00 F2 */	fmuls f0, f3, f3
/* 802220C4 0021F004  EC 42 00 B2 */	fmuls f2, f2, f2
/* 802220C8 0021F008  EC 84 01 32 */	fmuls f4, f4, f4
/* 802220CC 0021F00C  EC 00 10 2A */	fadds f0, f0, f2
/* 802220D0 0021F010  EC 04 00 2A */	fadds f0, f4, f0
/* 802220D4 0021F014  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802220D8 0021F018  40 81 00 20 */	ble lbl_802220F8
/* 802220DC 0021F01C  EC 03 10 FA */	fmadds f0, f3, f3, f2
/* 802220E0 0021F020  EC 64 00 2A */	fadds f3, f4, f0
/* 802220E4 0021F024  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802220E8 0021F028  40 81 00 14 */	ble lbl_802220FC
/* 802220EC 0021F02C  FC 00 18 34 */	frsqrte f0, f3
/* 802220F0 0021F030  EC 60 00 F2 */	fmuls f3, f0, f3
/* 802220F4 0021F034  48 00 00 08 */	b lbl_802220FC
lbl_802220F8:
/* 802220F8 0021F038  FC 60 08 90 */	fmr f3, f1
lbl_802220FC:
/* 802220FC 0021F03C  C0 22 BD B0 */	lfs f1, lbl_8051A110@sda21(r2)
/* 80222100 0021F040  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80222104 0021F044  C0 42 BE 20 */	lfs f2, lbl_8051A180@sda21(r2)
/* 80222108 0021F048  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 8022210C 0021F04C  D0 1E 02 94 */	stfs f0, 0x294(r30)
/* 80222110 0021F050  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 80222114 0021F054  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 80222118 0021F058  C0 9E 01 A4 */	lfs f4, 0x1a4(r30)
/* 8022211C 0021F05C  C0 7E 02 C8 */	lfs f3, 0x2c8(r30)
/* 80222120 0021F060  EC 01 00 2A */	fadds f0, f1, f0
/* 80222124 0021F064  C0 BE 01 A8 */	lfs f5, 0x1a8(r30)
/* 80222128 0021F068  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 8022212C 0021F06C  EC 64 18 2A */	fadds f3, f4, f3
/* 80222130 0021F070  D0 1E 01 74 */	stfs f0, 0x174(r30)
/* 80222134 0021F074  EC 05 08 2A */	fadds f0, f5, f1
/* 80222138 0021F078  D0 7E 01 78 */	stfs f3, 0x178(r30)
/* 8022213C 0021F07C  D0 1E 01 7C */	stfs f0, 0x17c(r30)
/* 80222140 0021F080  C0 7E 02 C4 */	lfs f3, 0x2c4(r30)
/* 80222144 0021F084  C0 9E 02 C8 */	lfs f4, 0x2c8(r30)
/* 80222148 0021F088  C0 BE 02 CC */	lfs f5, 0x2cc(r30)
/* 8022214C 0021F08C  EC 63 00 B2 */	fmuls f3, f3, f2
/* 80222150 0021F090  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 80222154 0021F094  EC 84 00 B2 */	fmuls f4, f4, f2
/* 80222158 0021F098  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 8022215C 0021F09C  EC A5 00 B2 */	fmuls f5, f5, f2
/* 80222160 0021F0A0  C0 5E 01 B4 */	lfs f2, 0x1b4(r30)
/* 80222164 0021F0A4  EC 00 18 2A */	fadds f0, f0, f3
/* 80222168 0021F0A8  EC 21 20 2A */	fadds f1, f1, f4
/* 8022216C 0021F0AC  EC 42 28 2A */	fadds f2, f2, f5
/* 80222170 0021F0B0  D0 1E 01 80 */	stfs f0, 0x180(r30)
/* 80222174 0021F0B4  D0 3E 01 84 */	stfs f1, 0x184(r30)
/* 80222178 0021F0B8  D0 5E 01 88 */	stfs f2, 0x188(r30)
/* 8022217C 0021F0BC  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80222180 0021F0C0  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80222184 0021F0C4  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80222188 0021F0C8  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8022218C 0021F0CC  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 80222190 0021F0D0  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80222194 0021F0D4  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 80222198 0021F0D8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8022219C 0021F0DC  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 802221A0 0021F0E0  7C 08 03 A6 */	mtlr r0
/* 802221A4 0021F0E4  38 21 01 20 */	addi r1, r1, 0x120
/* 802221A8 0021F0E8  4E 80 00 20 */	blr 

.global updateCameraShake__Q34Game15IllustratedBook6CameraFv
updateCameraShake__Q34Game15IllustratedBook6CameraFv:
/* 802221AC 0021F0EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802221B0 0021F0F0  7C 08 02 A6 */	mflr r0
/* 802221B4 0021F0F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802221B8 0021F0F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802221BC 0021F0FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802221C0 0021F100  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802221C4 0021F104  7C 7F 1B 78 */	mr r31, r3
/* 802221C8 0021F108  4B EA 73 D9 */	bl rand
/* 802221CC 0021F10C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802221D0 0021F110  3C 00 43 30 */	lis r0, 0x4330
/* 802221D4 0021F114  90 61 00 0C */	stw r3, 0xc(r1)
/* 802221D8 0021F118  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802221DC 0021F11C  90 01 00 08 */	stw r0, 8(r1)
/* 802221E0 0021F120  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802221E4 0021F124  C8 41 00 08 */	lfd f2, 8(r1)
/* 802221E8 0021F128  C0 1F 02 DC */	lfs f0, 0x2dc(r31)
/* 802221EC 0021F12C  EC 42 18 28 */	fsubs f2, f2, f3
/* 802221F0 0021F130  EC 22 08 24 */	fdivs f1, f2, f1
/* 802221F4 0021F134  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802221F8 0021F138  40 80 00 EC */	bge lbl_802222E4
/* 802221FC 0021F13C  C3 FF 02 E0 */	lfs f31, 0x2e0(r31)
/* 80222200 0021F140  4B EA 73 A1 */	bl rand
/* 80222204 0021F144  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80222208 0021F148  3C 00 43 30 */	lis r0, 0x4330
/* 8022220C 0021F14C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80222210 0021F150  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80222214 0021F154  90 01 00 08 */	stw r0, 8(r1)
/* 80222218 0021F158  C0 42 BE 18 */	lfs f2, lbl_8051A178@sda21(r2)
/* 8022221C 0021F15C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80222220 0021F160  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80222224 0021F164  EC 60 18 28 */	fsubs f3, f0, f3
/* 80222228 0021F168  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 8022222C 0021F16C  EC 43 10 24 */	fdivs f2, f3, f2
/* 80222230 0021F170  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 80222234 0021F174  D0 1F 02 94 */	stfs f0, 0x294(r31)
/* 80222238 0021F178  4B EA 73 69 */	bl rand
/* 8022223C 0021F17C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80222240 0021F180  3C 00 43 30 */	lis r0, 0x4330
/* 80222244 0021F184  90 61 00 14 */	stw r3, 0x14(r1)
/* 80222248 0021F188  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 8022224C 0021F18C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80222250 0021F190  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80222254 0021F194  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80222258 0021F198  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 8022225C 0021F19C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80222260 0021F1A0  EC 22 08 24 */	fdivs f1, f2, f1
/* 80222264 0021F1A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80222268 0021F1A8  40 80 00 0C */	bge lbl_80222274
/* 8022226C 0021F1AC  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 80222270 0021F1B0  EF FF 00 2A */	fadds f31, f31, f0
lbl_80222274:
/* 80222274 0021F1B4  4B EA 73 2D */	bl rand
/* 80222278 0021F1B8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022227C 0021F1BC  3C 00 43 30 */	lis r0, 0x4330
/* 80222280 0021F1C0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80222284 0021F1C4  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80222288 0021F1C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022228C 0021F1CC  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80222290 0021F1D0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80222294 0021F1D4  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80222298 0021F1D8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8022229C 0021F1DC  EC 22 08 24 */	fdivs f1, f2, f1
/* 802222A0 0021F1E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802222A4 0021F1E4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802222A8 0021F1E8  D0 1F 02 AC */	stfs f0, 0x2ac(r31)
/* 802222AC 0021F1EC  4B EA 72 F5 */	bl rand
/* 802222B0 0021F1F0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802222B4 0021F1F4  3C 00 43 30 */	lis r0, 0x4330
/* 802222B8 0021F1F8  90 61 00 24 */	stw r3, 0x24(r1)
/* 802222BC 0021F1FC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802222C0 0021F200  90 01 00 20 */	stw r0, 0x20(r1)
/* 802222C4 0021F204  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802222C8 0021F208  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 802222CC 0021F20C  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 802222D0 0021F210  EC 42 18 28 */	fsubs f2, f2, f3
/* 802222D4 0021F214  EC 22 08 24 */	fdivs f1, f2, f1
/* 802222D8 0021F218  EC 01 00 28 */	fsubs f0, f1, f0
/* 802222DC 0021F21C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802222E0 0021F220  D0 1F 02 B0 */	stfs f0, 0x2b0(r31)
lbl_802222E4:
/* 802222E4 0021F224  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 802222E8 0021F228  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 802222EC 0021F22C  C0 9F 02 F0 */	lfs f4, 0x2f0(r31)
/* 802222F0 0021F230  EC A1 00 28 */	fsubs f5, f1, f0
/* 802222F4 0021F234  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 802222F8 0021F238  C0 7F 02 B0 */	lfs f3, 0x2b0(r31)
/* 802222FC 0021F23C  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80222300 0021F240  EC A5 01 32 */	fmuls f5, f5, f4
/* 80222304 0021F244  C0 5F 02 B4 */	lfs f2, 0x2b4(r31)
/* 80222308 0021F248  EC 63 08 28 */	fsubs f3, f3, f1
/* 8022230C 0021F24C  C0 3F 02 A8 */	lfs f1, 0x2a8(r31)
/* 80222310 0021F250  EC 00 28 2A */	fadds f0, f0, f5
/* 80222314 0021F254  EC 22 08 28 */	fsubs f1, f2, f1
/* 80222318 0021F258  EC 63 01 32 */	fmuls f3, f3, f4
/* 8022231C 0021F25C  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 80222320 0021F260  EC 21 01 32 */	fmuls f1, f1, f4
/* 80222324 0021F264  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 80222328 0021F268  EC 00 18 2A */	fadds f0, f0, f3
/* 8022232C 0021F26C  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 80222330 0021F270  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 80222334 0021F274  EC 00 08 2A */	fadds f0, f0, f1
/* 80222338 0021F278  D0 1F 02 C0 */	stfs f0, 0x2c0(r31)
/* 8022233C 0021F27C  C0 3F 02 F4 */	lfs f1, 0x2f4(r31)
/* 80222340 0021F280  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 80222344 0021F284  EC 00 00 72 */	fmuls f0, f0, f1
/* 80222348 0021F288  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 8022234C 0021F28C  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 80222350 0021F290  EC 00 00 72 */	fmuls f0, f0, f1
/* 80222354 0021F294  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 80222358 0021F298  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 8022235C 0021F29C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80222360 0021F2A0  D0 1F 02 C0 */	stfs f0, 0x2c0(r31)
/* 80222364 0021F2A4  C0 3F 02 A0 */	lfs f1, 0x2a0(r31)
/* 80222368 0021F2A8  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 8022236C 0021F2AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80222370 0021F2B0  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80222374 0021F2B4  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80222378 0021F2B8  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 8022237C 0021F2BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80222380 0021F2C0  D0 1F 02 A4 */	stfs f0, 0x2a4(r31)
/* 80222384 0021F2C4  C0 3F 02 A8 */	lfs f1, 0x2a8(r31)
/* 80222388 0021F2C8  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 8022238C 0021F2CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80222390 0021F2D0  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
/* 80222394 0021F2D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80222398 0021F2D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022239C 0021F2DC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802223A0 0021F2E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802223A4 0021F2E4  7C 08 03 A6 */	mtlr r0
/* 802223A8 0021F2E8  38 21 00 40 */	addi r1, r1, 0x40
/* 802223AC 0021F2EC  4E 80 00 20 */	blr 

.global updateFocus__Q34Game15IllustratedBook6CameraFv
updateFocus__Q34Game15IllustratedBook6CameraFv:
/* 802223B0 0021F2F0  C0 23 02 88 */	lfs f1, 0x288(r3)
/* 802223B4 0021F2F4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802223B8 0021F2F8  C0 63 02 7C */	lfs f3, 0x27c(r3)
/* 802223BC 0021F2FC  EC 81 00 28 */	fsubs f4, f1, f0
/* 802223C0 0021F300  C0 43 02 78 */	lfs f2, 0x278(r3)
/* 802223C4 0021F304  C0 23 02 84 */	lfs f1, 0x284(r3)
/* 802223C8 0021F308  C0 03 02 80 */	lfs f0, 0x280(r3)
/* 802223CC 0021F30C  EC 63 10 28 */	fsubs f3, f3, f2
/* 802223D0 0021F310  FC 80 22 10 */	fabs f4, f4
/* 802223D4 0021F314  EC 41 00 28 */	fsubs f2, f1, f0
/* 802223D8 0021F318  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 802223DC 0021F31C  FC 60 1A 10 */	fabs f3, f3
/* 802223E0 0021F320  FC 20 20 18 */	frsp f1, f4
/* 802223E4 0021F324  FC 80 12 10 */	fabs f4, f2
/* 802223E8 0021F328  FC 40 18 18 */	frsp f2, f3
/* 802223EC 0021F32C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802223F0 0021F330  FC 20 20 18 */	frsp f1, f4
/* 802223F4 0021F334  41 81 00 18 */	bgt lbl_8022240C
/* 802223F8 0021F338  C0 02 BE 30 */	lfs f0, lbl_8051A190@sda21(r2)
/* 802223FC 0021F33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80222400 0021F340  41 81 00 0C */	bgt lbl_8022240C
/* 80222404 0021F344  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80222408 0021F348  40 81 00 14 */	ble lbl_8022241C
lbl_8022240C:
/* 8022240C 0021F34C  C0 23 02 94 */	lfs f1, 0x294(r3)
/* 80222410 0021F350  C0 02 BD B0 */	lfs f0, lbl_8051A110@sda21(r2)
/* 80222414 0021F354  EC 01 00 2A */	fadds f0, f1, f0
/* 80222418 0021F358  D0 03 02 94 */	stfs f0, 0x294(r3)
lbl_8022241C:
/* 8022241C 0021F35C  C0 22 BE 50 */	lfs f1, lbl_8051A1B0@sda21(r2)
/* 80222420 0021F360  C0 03 02 94 */	lfs f0, 0x294(r3)
/* 80222424 0021F364  C0 62 BE 4C */	lfs f3, lbl_8051A1AC@sda21(r2)
/* 80222428 0021F368  EC 41 00 28 */	fsubs f2, f1, f0
/* 8022242C 0021F36C  C0 23 02 98 */	lfs f1, 0x298(r3)
/* 80222430 0021F370  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80222434 0021F374  EC 23 08 BA */	fmadds f1, f3, f2, f1
/* 80222438 0021F378  D0 23 02 98 */	stfs f1, 0x298(r3)
/* 8022243C 0021F37C  C0 23 02 98 */	lfs f1, 0x298(r3)
/* 80222440 0021F380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80222444 0021F384  40 81 00 08 */	ble lbl_8022244C
/* 80222448 0021F388  D0 03 02 98 */	stfs f0, 0x298(r3)
lbl_8022244C:
/* 8022244C 0021F38C  C0 23 02 98 */	lfs f1, 0x298(r3)
/* 80222450 0021F390  C0 02 BE 54 */	lfs f0, lbl_8051A1B4@sda21(r2)
/* 80222454 0021F394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80222458 0021F398  40 80 00 08 */	bge lbl_80222460
/* 8022245C 0021F39C  D0 03 02 98 */	stfs f0, 0x298(r3)
lbl_80222460:
/* 80222460 0021F3A0  C0 43 02 98 */	lfs f2, 0x298(r3)
/* 80222464 0021F3A4  C0 23 02 9C */	lfs f1, 0x29c(r3)
/* 80222468 0021F3A8  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 8022246C 0021F3AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80222470 0021F3B0  D0 23 02 98 */	stfs f1, 0x298(r3)
/* 80222474 0021F3B4  C0 43 02 94 */	lfs f2, 0x294(r3)
/* 80222478 0021F3B8  C0 23 02 98 */	lfs f1, 0x298(r3)
/* 8022247C 0021F3BC  EC 22 08 2A */	fadds f1, f2, f1
/* 80222480 0021F3C0  D0 23 02 94 */	stfs f1, 0x294(r3)
/* 80222484 0021F3C4  C0 23 02 94 */	lfs f1, 0x294(r3)
/* 80222488 0021F3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022248C 0021F3CC  4C 81 00 20 */	blelr 
/* 80222490 0021F3D0  D0 03 02 94 */	stfs f0, 0x294(r3)
/* 80222494 0021F3D4  4E 80 00 20 */	blr 

.global addFovy__Q34Game15IllustratedBook6CameraFf
addFovy__Q34Game15IllustratedBook6CameraFf:
/* 80222498 0021F3D8  C0 43 03 04 */	lfs f2, 0x304(r3)
/* 8022249C 0021F3DC  C0 03 02 88 */	lfs f0, 0x288(r3)
/* 802224A0 0021F3E0  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 802224A4 0021F3E4  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 802224A8 0021F3E8  C0 03 02 88 */	lfs f0, 0x288(r3)
/* 802224AC 0021F3EC  C0 23 02 8C */	lfs f1, 0x28c(r3)
/* 802224B0 0021F3F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802224B4 0021F3F4  40 80 00 08 */	bge lbl_802224BC
/* 802224B8 0021F3F8  D0 23 02 88 */	stfs f1, 0x288(r3)
lbl_802224BC:
/* 802224BC 0021F3FC  C0 03 02 88 */	lfs f0, 0x288(r3)
/* 802224C0 0021F400  C0 23 02 90 */	lfs f1, 0x290(r3)
/* 802224C4 0021F404  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802224C8 0021F408  40 81 00 08 */	ble lbl_802224D0
/* 802224CC 0021F40C  D0 23 02 88 */	stfs f1, 0x288(r3)
lbl_802224D0:
/* 802224D0 0021F410  C0 03 02 88 */	lfs f0, 0x288(r3)
/* 802224D4 0021F414  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802224D8 0021F418  C0 43 03 08 */	lfs f2, 0x308(r3)
/* 802224DC 0021F41C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802224E0 0021F420  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 802224E4 0021F424  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802224E8 0021F428  4E 80 00 20 */	blr 

.global __ct__Q34Game10SingleGame10ZukanStateFv
__ct__Q34Game10SingleGame10ZukanStateFv:
/* 802224EC 0021F42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802224F0 0021F430  7C 08 02 A6 */	mflr r0
/* 802224F4 0021F434  3C 80 80 4B */	lis r4, "__vt__Q24Game36FSMState<Q24Game17SingleGameSection>"@ha
/* 802224F8 0021F438  38 A0 00 00 */	li r5, 0
/* 802224FC 0021F43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80222500 0021F440  38 04 13 18 */	addi r0, r4, "__vt__Q24Game36FSMState<Q24Game17SingleGameSection>"@l
/* 80222504 0021F444  3C 80 80 4B */	lis r4, __vt__Q34Game10SingleGame5State@ha
/* 80222508 0021F448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022250C 0021F44C  7C 7F 1B 78 */	mr r31, r3
/* 80222510 0021F450  38 84 12 D0 */	addi r4, r4, __vt__Q34Game10SingleGame5State@l
/* 80222514 0021F454  90 03 00 00 */	stw r0, 0(r3)
/* 80222518 0021F458  38 00 00 0A */	li r0, 0xa
/* 8022251C 0021F45C  3C 60 80 4C */	lis r3, __vt__Q34Game10SingleGame10ZukanState@ha
/* 80222520 0021F460  90 1F 00 04 */	stw r0, 4(r31)
/* 80222524 0021F464  38 03 0B 8C */	addi r0, r3, __vt__Q34Game10SingleGame10ZukanState@l
/* 80222528 0021F468  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8022252C 0021F46C  90 BF 00 08 */	stw r5, 8(r31)
/* 80222530 0021F470  90 9F 00 00 */	stw r4, 0(r31)
/* 80222534 0021F474  90 1F 00 00 */	stw r0, 0(r31)
/* 80222538 0021F478  48 20 22 E1 */	bl __ct__16DvdThreadCommandFv
/* 8022253C 0021F47C  38 60 00 08 */	li r3, 8
/* 80222540 0021F480  38 00 00 00 */	li r0, 0
/* 80222544 0021F484  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 80222548 0021F488  38 60 00 B0 */	li r3, 0xb0
/* 8022254C 0021F48C  90 1F 01 04 */	stw r0, 0x104(r31)
/* 80222550 0021F490  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 80222554 0021F494  4B E0 19 51 */	bl __nw__FUl
/* 80222558 0021F498  7C 60 1B 79 */	or. r0, r3, r3
/* 8022255C 0021F49C  41 82 00 10 */	beq lbl_8022256C
/* 80222560 0021F4A0  38 80 00 00 */	li r4, 0
/* 80222564 0021F4A4  48 20 28 F1 */	bl __ct__10ControllerFQ210JUTGamePad8EPadPort
/* 80222568 0021F4A8  7C 60 1B 78 */	mr r0, r3
lbl_8022256C:
/* 8022256C 0021F4AC  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80222570 0021F4B0  38 A0 00 00 */	li r5, 0
/* 80222574 0021F4B4  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222578 0021F4B8  38 00 FF FF */	li r0, -1
/* 8022257C 0021F4BC  90 BF 00 D4 */	stw r5, 0xd4(r31)
/* 80222580 0021F4C0  7F E3 FB 78 */	mr r3, r31
/* 80222584 0021F4C4  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80222588 0021F4C8  38 80 00 08 */	li r4, 8
/* 8022258C 0021F4CC  90 BF 00 D8 */	stw r5, 0xd8(r31)
/* 80222590 0021F4D0  90 BF 00 DC */	stw r5, 0xdc(r31)
/* 80222594 0021F4D4  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80222598 0021F4D8  90 BF 00 B0 */	stw r5, 0xb0(r31)
/* 8022259C 0021F4DC  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 802225A0 0021F4E0  90 BF 00 F0 */	stw r5, 0xf0(r31)
/* 802225A4 0021F4E4  D0 3F 01 08 */	stfs f1, 0x108(r31)
/* 802225A8 0021F4E8  D0 3F 00 F4 */	stfs f1, 0xf4(r31)
/* 802225AC 0021F4EC  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 802225B0 0021F4F0  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 802225B4 0021F4F4  90 1F 01 10 */	stw r0, 0x110(r31)
/* 802225B8 0021F4F8  90 1F 01 14 */	stw r0, 0x114(r31)
/* 802225BC 0021F4FC  48 00 03 89 */	bl setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
/* 802225C0 0021F500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802225C4 0021F504  7F E3 FB 78 */	mr r3, r31
/* 802225C8 0021F508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802225CC 0021F50C  7C 08 03 A6 */	mtlr r0
/* 802225D0 0021F510  38 21 00 10 */	addi r1, r1, 0x10
/* 802225D4 0021F514  4E 80 00 20 */	blr 

.if version == 1
.global init__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
init__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionPQ24Game8StateArg:
/* 802225D8 0021F518  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802225DC 0021F51C  7C 08 02 A6 */	mflr r0
/* 802225E0 0021F520  3C C0 80 48 */	lis r6, lbl_80482E60@ha
/* 802225E4 0021F524  90 01 00 54 */	stw r0, 0x54(r1)
/* 802225E8 0021F528  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 802225EC 0021F52C  7C 7C 1B 78 */	mr r28, r3
/* 802225F0 0021F530  3C 60 80 4C */	lis r3, lbl_804C0A40@ha
/* 802225F4 0021F534  7C 9D 23 78 */	mr r29, r4
/* 802225F8 0021F538  7C BE 2B 78 */	mr r30, r5
/* 802225FC 0021F53C  3B 66 2E 60 */	addi r27, r6, lbl_80482E60@l
/* 80222600 0021F540  3B E3 0A 40 */	addi r31, r3, lbl_804C0A40@l
/* 80222604 0021F544  38 80 00 00 */	li r4, 0
/* 80222608 0021F548  38 A2 BE 5C */	addi r5, r2, lbl_8051A1BC@sda21
/* 8022260C 0021F54C  38 C0 00 03 */	li r6, 3
/* 80222610 0021F550  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80222614 0021F554  90 1C 00 E0 */	stw r0, 0xe0(r28)
/* 80222618 0021F558  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022261C 0021F55C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80222620 0021F560  60 00 00 20 */	ori r0, r0, 0x20
/* 80222624 0021F564  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80222628 0021F568  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022262C 0021F56C  4B F9 29 69 */	bl setPause__Q24Game10GameSystemFbPci
/* 80222630 0021F570  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222634 0021F574  38 80 00 00 */	li r4, 0
/* 80222638 0021F578  38 A2 BE 5C */	addi r5, r2, lbl_8051A1BC@sda21
/* 8022263C 0021F57C  4B F9 29 49 */	bl setMoviePause__Q24Game10GameSystemFbPc
/* 80222640 0021F580  80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 80222644 0021F584  4B E0 11 71 */	bl getFreeSize__7JKRHeapFv
/* 80222648 0021F588  90 6D 95 D0 */	stw r3, sParentHeapFreeSize_1@sda21(r13)
/* 8022264C 0021F58C  83 5C 00 E0 */	lwz r26, 0xe0(r28)
/* 80222650 0021F590  7F 43 D3 78 */	mr r3, r26
/* 80222654 0021F594  4B E0 11 61 */	bl getFreeSize__7JKRHeapFv
/* 80222658 0021F598  7F 44 D3 78 */	mr r4, r26
/* 8022265C 0021F59C  38 A0 00 01 */	li r5, 1
/* 80222660 0021F5A0  4B DF D8 69 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80222664 0021F5A4  90 7C 00 D4 */	stw r3, 0xd4(r28)
/* 80222668 0021F5A8  80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 8022266C 0021F5AC  4B E0 0F 39 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80222670 0021F5B0  28 1E 00 00 */	cmplwi r30, 0
/* 80222674 0021F5B4  40 82 00 18 */	bne lbl_8022268C
/* 80222678 0021F5B8  38 7B 00 7C */	addi r3, r27, 0x7c
/* 8022267C 0021F5BC  38 BB 00 90 */	addi r5, r27, 0x90
/* 80222680 0021F5C0  38 80 04 01 */	li r4, 0x401
/* 80222684 0021F5C4  4C C6 31 82 */	crclr 6
/* 80222688 0021F5C8  4B E0 7F B9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022268C:
/* 8022268C 0021F5CC  3C 60 00 09 */	lis r3, 0x00096000@ha
/* 80222690 0021F5D0  80 8D 88 2C */	lwz r4, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80222694 0021F5D4  38 63 60 00 */	addi r3, r3, 0x00096000@l
/* 80222698 0021F5D8  38 A0 00 01 */	li r5, 1
/* 8022269C 0021F5DC  4B DF D8 2D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802226A0 0021F5E0  90 7C 00 F0 */	stw r3, 0xf0(r28)
/* 802226A4 0021F5E4  80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 802226A8 0021F5E8  28 00 00 00 */	cmplwi r0, 0
/* 802226AC 0021F5EC  40 82 00 18 */	bne lbl_802226C4
/* 802226B0 0021F5F0  38 7B 00 7C */	addi r3, r27, 0x7c
/* 802226B4 0021F5F4  38 BB 00 F8 */	addi r5, r27, 0xf8
/* 802226B8 0021F5F8  38 80 04 07 */	li r4, 0x407
/* 802226BC 0021F5FC  4C C6 31 82 */	crclr 6
/* 802226C0 0021F600  4B E0 7F 81 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802226C4:
/* 802226C4 0021F604  38 60 00 38 */	li r3, 0x38
/* 802226C8 0021F608  4B E0 17 DD */	bl __nw__FUl
/* 802226CC 0021F60C  28 03 00 00 */	cmplwi r3, 0
/* 802226D0 0021F610  41 82 00 94 */	beq lbl_80222764
/* 802226D4 0021F614  3C A0 80 4F */	lis r5, __vt__5CNode@ha
/* 802226D8 0021F618  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook10DebugParms@ha
/* 802226DC 0021F61C  38 05 B5 28 */	addi r0, r5, __vt__5CNode@l
/* 802226E0 0021F620  39 00 00 00 */	li r8, 0
/* 802226E4 0021F624  90 03 00 00 */	stw r0, 0(r3)
/* 802226E8 0021F628  38 FB 00 34 */	addi r7, r27, 0x34
/* 802226EC 0021F62C  38 C4 0D A4 */	addi r6, r4, __vt__Q34Game15IllustratedBook10DebugParms@l
/* 802226F0 0021F630  38 A0 00 20 */	li r5, 0x20
/* 802226F4 0021F634  91 03 00 10 */	stw r8, 0x10(r3)
/* 802226F8 0021F638  38 80 00 0A */	li r4, 0xa
/* 802226FC 0021F63C  38 00 00 FF */	li r0, 0xff
/* 80222700 0021F640  C0 A2 BD B0 */	lfs f5, lbl_8051A110@sda21(r2)
/* 80222704 0021F644  91 03 00 0C */	stw r8, 0xc(r3)
/* 80222708 0021F648  C0 82 BD B4 */	lfs f4, lbl_8051A114@sda21(r2)
/* 8022270C 0021F64C  91 03 00 08 */	stw r8, 8(r3)
/* 80222710 0021F650  C0 62 BD B8 */	lfs f3, lbl_8051A118@sda21(r2)
/* 80222714 0021F654  91 03 00 04 */	stw r8, 4(r3)
/* 80222718 0021F658  C0 42 BD BC */	lfs f2, lbl_8051A11C@sda21(r2)
/* 8022271C 0021F65C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80222720 0021F660  C0 22 BD C0 */	lfs f1, lbl_8051A120@sda21(r2)
/* 80222724 0021F664  90 C3 00 00 */	stw r6, 0(r3)
/* 80222728 0021F668  C0 02 BD C4 */	lfs f0, lbl_8051A124@sda21(r2)
/* 8022272C 0021F66C  99 03 00 34 */	stb r8, 0x34(r3)
/* 80222730 0021F670  99 03 00 35 */	stb r8, 0x35(r3)
/* 80222734 0021F674  99 03 00 34 */	stb r8, 0x34(r3)
/* 80222738 0021F678  99 03 00 35 */	stb r8, 0x35(r3)
/* 8022273C 0021F67C  98 A3 00 18 */	stb r5, 0x18(r3)
/* 80222740 0021F680  98 A3 00 19 */	stb r5, 0x19(r3)
/* 80222744 0021F684  98 83 00 1A */	stb r4, 0x1a(r3)
/* 80222748 0021F688  98 03 00 1B */	stb r0, 0x1b(r3)
/* 8022274C 0021F68C  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 80222750 0021F690  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 80222754 0021F694  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80222758 0021F698  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8022275C 0021F69C  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80222760 0021F6A0  D0 03 00 30 */	stfs f0, 0x30(r3)
lbl_80222764:
/* 80222764 0021F6A4  90 7C 01 04 */	stw r3, 0x104(r28)
/* 80222768 0021F6A8  7F A3 EB 78 */	mr r3, r29
/* 8022276C 0021F6AC  80 9C 01 04 */	lwz r4, 0x104(r28)
/* 80222770 0021F6B0  4B F4 28 41 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80222774 0021F6B4  38 60 00 14 */	li r3, 0x14
/* 80222778 0021F6B8  4B E0 17 2D */	bl __nw__FUl
/* 8022277C 0021F6BC  28 03 00 00 */	cmplwi r3, 0
/* 80222780 0021F6C0  41 82 00 44 */	beq lbl_802227C4
/* 80222784 0021F6C4  81 1F 00 2C */	lwz r8, 0x2c(r31)
/* 80222788 0021F6C8  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 8022278C 0021F6CC  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 80222790 0021F6D0  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 80222794 0021F6D4  80 DF 00 34 */	lwz r6, 0x34(r31)
/* 80222798 0021F6D8  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 8022279C 0021F6DC  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 802227A0 0021F6E0  91 01 00 20 */	stw r8, 0x20(r1)
/* 802227A4 0021F6E4  90 A3 00 00 */	stw r5, 0(r3)
/* 802227A8 0021F6E8  90 03 00 00 */	stw r0, 0(r3)
/* 802227AC 0021F6EC  93 83 00 04 */	stw r28, 4(r3)
/* 802227B0 0021F6F0  91 03 00 08 */	stw r8, 8(r3)
/* 802227B4 0021F6F4  90 E3 00 0C */	stw r7, 0xc(r3)
/* 802227B8 0021F6F8  90 E1 00 24 */	stw r7, 0x24(r1)
/* 802227BC 0021F6FC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 802227C0 0021F700  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_802227C4:
/* 802227C4 0021F704  90 7C 00 10 */	stw r3, 0x10(r28)
/* 802227C8 0021F708  38 60 00 14 */	li r3, 0x14
/* 802227CC 0021F70C  4B E0 16 D9 */	bl __nw__FUl
/* 802227D0 0021F710  28 03 00 00 */	cmplwi r3, 0
/* 802227D4 0021F714  41 82 00 44 */	beq lbl_80222818
/* 802227D8 0021F718  81 1F 00 38 */	lwz r8, 0x38(r31)
/* 802227DC 0021F71C  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 802227E0 0021F720  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 802227E4 0021F724  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 802227E8 0021F728  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 802227EC 0021F72C  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 802227F0 0021F730  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 802227F4 0021F734  91 01 00 14 */	stw r8, 0x14(r1)
/* 802227F8 0021F738  90 A3 00 00 */	stw r5, 0(r3)
/* 802227FC 0021F73C  90 03 00 00 */	stw r0, 0(r3)
/* 80222800 0021F740  93 83 00 04 */	stw r28, 4(r3)
/* 80222804 0021F744  91 03 00 08 */	stw r8, 8(r3)
/* 80222808 0021F748  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8022280C 0021F74C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80222810 0021F750  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80222814 0021F754  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_80222818:
/* 80222818 0021F758  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8022281C 0021F75C  38 60 00 14 */	li r3, 0x14
/* 80222820 0021F760  4B E0 16 85 */	bl __nw__FUl
/* 80222824 0021F764  28 03 00 00 */	cmplwi r3, 0
/* 80222828 0021F768  41 82 00 44 */	beq lbl_8022286C
/* 8022282C 0021F76C  81 1F 00 44 */	lwz r8, 0x44(r31)
/* 80222830 0021F770  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 80222834 0021F774  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 80222838 0021F778  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 8022283C 0021F77C  80 DF 00 4C */	lwz r6, 0x4c(r31)
/* 80222840 0021F780  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 80222844 0021F784  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 80222848 0021F788  91 01 00 08 */	stw r8, 8(r1)
/* 8022284C 0021F78C  90 A3 00 00 */	stw r5, 0(r3)
/* 80222850 0021F790  90 03 00 00 */	stw r0, 0(r3)
/* 80222854 0021F794  93 83 00 04 */	stw r28, 4(r3)
/* 80222858 0021F798  91 03 00 08 */	stw r8, 8(r3)
/* 8022285C 0021F79C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80222860 0021F7A0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80222864 0021F7A4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80222868 0021F7A8  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_8022286C:
/* 8022286C 0021F7AC  90 7C 00 18 */	stw r3, 0x18(r28)
/* 80222870 0021F7B0  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 80222874 0021F7B4  80 1D 00 D4 */	lwz r0, 0xf4(r29)
/* 80222878 0021F7B8  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8022287C 0021F7BC  80 7D 00 D4 */	lwz r3, 0xf4(r29)
/* 80222880 0021F7C0  48 20 94 E9 */	bl start__8WipeBaseFf
/* 80222884 0021F7C4  7F A3 EB 78 */	mr r3, r29
/* 80222888 0021F7C8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022288C 0021F7CC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80222890 0021F7D0  7D 89 03 A6 */	mtctr r12
/* 80222894 0021F7D4  4E 80 04 21 */	bctrl 
/* 80222898 0021F7D8  93 BC 00 94 */	stw r29, 0x94(r28)
/* 8022289C 0021F7DC  38 A0 00 00 */	li r5, 0
/* 802228A0 0021F7E0  38 60 FF FF */	li r3, -1
/* 802228A4 0021F7E4  38 00 00 04 */	li r0, 4
/* 802228A8 0021F7E8  98 BC 00 88 */	stb r5, 0x88(r28)
/* 802228AC 0021F7EC  38 9C 00 1C */	addi r4, r28, 0x1c
/* 802228B0 0021F7F0  90 AD 96 80 */	stw r5, shadowMgr__4Game@sda21(r13)
/* 802228B4 0021F7F4  90 7C 00 A0 */	stw r3, 0xa0(r28)
/* 802228B8 0021F7F8  90 BC 00 A4 */	stw r5, 0xa4(r28)
/* 802228BC 0021F7FC  90 7C 00 A8 */	stw r3, 0xa8(r28)
/* 802228C0 0021F800  90 BC 00 AC */	stw r5, 0xac(r28)
/* 802228C4 0021F804  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 802228C8 0021F808  90 03 00 44 */	stw r0, 0x44(r3)
/* 802228CC 0021F80C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802228D0 0021F810  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 802228D4 0021F814  48 20 06 65 */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 802228D8 0021F818  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802228DC 0021F81C  80 9C 00 90 */	lwz r4, 0x90(r28)
/* 802228E0 0021F820  48 1D 97 99 */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 802228E4 0021F824  88 1E 00 00 */	lbz r0, 0(r30)
/* 802228E8 0021F828  28 00 00 00 */	cmplwi r0, 0
/* 802228EC 0021F82C  41 82 00 14 */	beq lbl_80222900
/* 802228F0 0021F830  7F 83 E3 78 */	mr r3, r28
/* 802228F4 0021F834  38 80 00 00 */	li r4, 0
/* 802228F8 0021F838  48 00 00 4D */	bl setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
/* 802228FC 0021F83C  48 00 00 10 */	b lbl_8022290C
lbl_80222900:
/* 80222900 0021F840  7F 83 E3 78 */	mr r3, r28
/* 80222904 0021F844  38 80 00 01 */	li r4, 1
/* 80222908 0021F848  48 00 00 3D */	bl setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
lbl_8022290C:
/* 8022290C 0021F84C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80222910 0021F850  38 00 00 00 */	li r0, 0
/* 80222914 0021F854  90 7C 01 0C */	stw r3, 0x10c(r28)
/* 80222918 0021F858  90 0D 91 E0 */	stw r0, generalEnemyMgr__4Game@sda21(r13)
/* 8022291C 0021F85C  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222920 0021F860  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80222924 0021F864  80 03 02 40 */	lwz r0, 0x240(r3)
/* 80222928 0021F868  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8022292C 0021F86C  90 03 02 40 */	stw r0, 0x240(r3)
/* 80222930 0021F870  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80222934 0021F874  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80222938 0021F878  7C 08 03 A6 */	mtlr r0
/* 8022293C 0021F87C  38 21 00 50 */	addi r1, r1, 0x50
/* 80222940 0021F880  4E 80 00 20 */	blr 
.else
.global init__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
init__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionPQ24Game8StateArg:
/* 802225D8 0021F518  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802225DC 0021F51C  7C 08 02 A6 */	mflr r0
/* 802225E0 0021F520  3C C0 80 48 */	lis r6, lbl_80482E60@ha
/* 802225E4 0021F524  90 01 00 54 */	stw r0, 0x54(r1)
/* 802225E8 0021F528  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 802225EC 0021F52C  7C 7C 1B 78 */	mr r28, r3
/* 802225F0 0021F530  3C 60 80 4C */	lis r3, lbl_804C0A40@ha
/* 802225F4 0021F534  7C 9D 23 78 */	mr r29, r4
/* 802225F8 0021F538  7C BE 2B 78 */	mr r30, r5
/* 802225FC 0021F53C  3B 66 2E 60 */	addi r27, r6, lbl_80482E60@l
/* 80222600 0021F540  3B E3 0A 40 */	addi r31, r3, lbl_804C0A40@l
/* 80222604 0021F544  38 80 00 00 */	li r4, 0
/* 80222608 0021F548  38 A2 BE 5C */	addi r5, r2, lbl_8051A1BC@sda21
/* 8022260C 0021F54C  38 C0 00 03 */	li r6, 3
/* 80222610 0021F550  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80222614 0021F554  90 1C 00 E0 */	stw r0, 0xe0(r28)
/* 80222618 0021F558  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022261C 0021F55C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80222620 0021F560  60 00 00 20 */	ori r0, r0, 0x20
/* 80222624 0021F564  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80222628 0021F568  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022262C 0021F56C  4B F9 29 69 */	bl setPause__Q24Game10GameSystemFbPci
/* 80222630 0021F570  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222634 0021F574  38 80 00 00 */	li r4, 0
/* 80222638 0021F578  38 A2 BE 5C */	addi r5, r2, lbl_8051A1BC@sda21
/* 8022263C 0021F57C  4B F9 29 49 */	bl setMoviePause__Q24Game10GameSystemFbPc
/* 80222640 0021F580  80 7C 00 E0 */	lwz r3, 0xe0(r28)
/* 80222644 0021F584  4B E0 11 71 */	bl getFreeSize__7JKRHeapFv
/* 80222648 0021F588  90 6D 95 D0 */	stw r3, sParentHeapFreeSize_1@sda21(r13)
/* 8022264C 0021F58C  83 5C 00 E0 */	lwz r26, 0xe0(r28)
/* 80222650 0021F590  7F 43 D3 78 */	mr r3, r26
/* 80222654 0021F594  4B E0 11 61 */	bl getFreeSize__7JKRHeapFv
/* 80222658 0021F598  7F 44 D3 78 */	mr r4, r26
/* 8022265C 0021F59C  38 A0 00 01 */	li r5, 1
/* 80222660 0021F5A0  4B DF D8 69 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80222664 0021F5A4  90 7C 00 D4 */	stw r3, 0xd4(r28)
/* 80222668 0021F5A8  80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 8022266C 0021F5AC  4B E0 0F 39 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80222670 0021F5B0  28 1E 00 00 */	cmplwi r30, 0
/* 80222674 0021F5B4  40 82 00 18 */	bne lbl_8022268C
/* 80222678 0021F5B8  38 7B 00 7C */	addi r3, r27, 0x7c
/* 8022267C 0021F5BC  38 BB 00 90 */	addi r5, r27, 0x90
/* 80222680 0021F5C0  38 80 04 01 */	li r4, 0x401
/* 80222684 0021F5C4  4C C6 31 82 */	crclr 6
/* 80222688 0021F5C8  4B E0 7F B9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022268C:
/* 8022268C 0021F5CC  3C 60 00 09 */	lis r3, 0x00096000@ha
/* 80222690 0021F5D0  80 8D 88 2C */	lwz r4, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80222694 0021F5D4  38 63 60 00 */	addi r3, r3, 0x00096000@l
/* 80222698 0021F5D8  38 A0 00 01 */	li r5, 1
/* 8022269C 0021F5DC  4B DF D8 2D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802226A0 0021F5E0  90 7C 00 F0 */	stw r3, 0xf0(r28)
/* 802226A4 0021F5E4  80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 802226A8 0021F5E8  28 00 00 00 */	cmplwi r0, 0
/* 802226AC 0021F5EC  40 82 00 18 */	bne lbl_802226C4
/* 802226B0 0021F5F0  38 7B 00 7C */	addi r3, r27, 0x7c
/* 802226B4 0021F5F4  38 BB 00 F8 */	addi r5, r27, 0xf8
/* 802226B8 0021F5F8  38 80 04 07 */	li r4, 0x407
/* 802226BC 0021F5FC  4C C6 31 82 */	crclr 6
/* 802226C0 0021F600  4B E0 7F 81 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802226C4:
/* 802226C4 0021F604  38 60 00 38 */	li r3, 0x38
/* 802226C8 0021F608  4B E0 17 DD */	bl __nw__FUl
/* 802226CC 0021F60C  28 03 00 00 */	cmplwi r3, 0
/* 802226D0 0021F610  41 82 00 94 */	beq lbl_80222764
/* 802226D4 0021F614  3C A0 80 4F */	lis r5, __vt__5CNode@ha
/* 802226D8 0021F618  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook10DebugParms@ha
/* 802226DC 0021F61C  38 05 B5 28 */	addi r0, r5, __vt__5CNode@l
/* 802226E0 0021F620  39 00 00 00 */	li r8, 0
/* 802226E4 0021F624  90 03 00 00 */	stw r0, 0(r3)
/* 802226E8 0021F628  38 FB 00 34 */	addi r7, r27, 0x34
/* 802226EC 0021F62C  38 C4 0D A4 */	addi r6, r4, __vt__Q34Game15IllustratedBook10DebugParms@l
/* 802226F0 0021F630  38 A0 00 20 */	li r5, 0x20
/* 802226F4 0021F634  91 03 00 10 */	stw r8, 0x10(r3)
/* 802226F8 0021F638  38 80 00 0A */	li r4, 0xa
/* 802226FC 0021F63C  38 00 00 FF */	li r0, 0xff
/* 80222700 0021F640  C0 A2 BD B0 */	lfs f5, lbl_8051A110@sda21(r2)
/* 80222704 0021F644  91 03 00 0C */	stw r8, 0xc(r3)
/* 80222708 0021F648  C0 82 BD B4 */	lfs f4, lbl_8051A114@sda21(r2)
/* 8022270C 0021F64C  91 03 00 08 */	stw r8, 8(r3)
/* 80222710 0021F650  C0 62 BD B8 */	lfs f3, lbl_8051A118@sda21(r2)
/* 80222714 0021F654  91 03 00 04 */	stw r8, 4(r3)
/* 80222718 0021F658  C0 42 BD BC */	lfs f2, lbl_8051A11C@sda21(r2)
/* 8022271C 0021F65C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80222720 0021F660  C0 22 BD C0 */	lfs f1, lbl_8051A120@sda21(r2)
/* 80222724 0021F664  90 C3 00 00 */	stw r6, 0(r3)
/* 80222728 0021F668  C0 02 BD C4 */	lfs f0, lbl_8051A124@sda21(r2)
/* 8022272C 0021F66C  99 03 00 34 */	stb r8, 0x34(r3)
/* 80222730 0021F670  99 03 00 35 */	stb r8, 0x35(r3)
/* 80222734 0021F674  99 03 00 34 */	stb r8, 0x34(r3)
/* 80222738 0021F678  99 03 00 35 */	stb r8, 0x35(r3)
/* 8022273C 0021F67C  98 A3 00 18 */	stb r5, 0x18(r3)
/* 80222740 0021F680  98 A3 00 19 */	stb r5, 0x19(r3)
/* 80222744 0021F684  98 83 00 1A */	stb r4, 0x1a(r3)
/* 80222748 0021F688  98 03 00 1B */	stb r0, 0x1b(r3)
/* 8022274C 0021F68C  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 80222750 0021F690  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 80222754 0021F694  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80222758 0021F698  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8022275C 0021F69C  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80222760 0021F6A0  D0 03 00 30 */	stfs f0, 0x30(r3)
lbl_80222764:
/* 80222764 0021F6A4  90 7C 01 04 */	stw r3, 0x104(r28)
/* 80222768 0021F6A8  7F A3 EB 78 */	mr r3, r29
/* 8022276C 0021F6AC  80 9C 01 04 */	lwz r4, 0x104(r28)
/* 80222770 0021F6B0  4B F4 28 41 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80222774 0021F6B4  38 60 00 14 */	li r3, 0x14
/* 80222778 0021F6B8  4B E0 17 2D */	bl __nw__FUl
/* 8022277C 0021F6BC  28 03 00 00 */	cmplwi r3, 0
/* 80222780 0021F6C0  41 82 00 44 */	beq lbl_802227C4
/* 80222784 0021F6C4  81 1F 00 2C */	lwz r8, 0x2c(r31)
/* 80222788 0021F6C8  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 8022278C 0021F6CC  80 FF 00 30 */	lwz r7, 0x30(r31)
/* 80222790 0021F6D0  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 80222794 0021F6D4  80 DF 00 34 */	lwz r6, 0x34(r31)
/* 80222798 0021F6D8  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 8022279C 0021F6DC  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 802227A0 0021F6E0  91 01 00 20 */	stw r8, 0x20(r1)
/* 802227A4 0021F6E4  90 A3 00 00 */	stw r5, 0(r3)
/* 802227A8 0021F6E8  90 03 00 00 */	stw r0, 0(r3)
/* 802227AC 0021F6EC  93 83 00 04 */	stw r28, 4(r3)
/* 802227B0 0021F6F0  91 03 00 08 */	stw r8, 8(r3)
/* 802227B4 0021F6F4  90 E3 00 0C */	stw r7, 0xc(r3)
/* 802227B8 0021F6F8  90 E1 00 24 */	stw r7, 0x24(r1)
/* 802227BC 0021F6FC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 802227C0 0021F700  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_802227C4:
/* 802227C4 0021F704  90 7C 00 10 */	stw r3, 0x10(r28)
/* 802227C8 0021F708  38 60 00 14 */	li r3, 0x14
/* 802227CC 0021F70C  4B E0 16 D9 */	bl __nw__FUl
/* 802227D0 0021F710  28 03 00 00 */	cmplwi r3, 0
/* 802227D4 0021F714  41 82 00 44 */	beq lbl_80222818
/* 802227D8 0021F718  81 1F 00 38 */	lwz r8, 0x38(r31)
/* 802227DC 0021F71C  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 802227E0 0021F720  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 802227E4 0021F724  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 802227E8 0021F728  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 802227EC 0021F72C  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 802227F0 0021F730  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 802227F4 0021F734  91 01 00 14 */	stw r8, 0x14(r1)
/* 802227F8 0021F738  90 A3 00 00 */	stw r5, 0(r3)
/* 802227FC 0021F73C  90 03 00 00 */	stw r0, 0(r3)
/* 80222800 0021F740  93 83 00 04 */	stw r28, 4(r3)
/* 80222804 0021F744  91 03 00 08 */	stw r8, 8(r3)
/* 80222808 0021F748  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8022280C 0021F74C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80222810 0021F750  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80222814 0021F754  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_80222818:
/* 80222818 0021F758  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8022281C 0021F75C  38 60 00 14 */	li r3, 0x14
/* 80222820 0021F760  4B E0 16 85 */	bl __nw__FUl
/* 80222824 0021F764  28 03 00 00 */	cmplwi r3, 0
/* 80222828 0021F768  41 82 00 44 */	beq lbl_8022286C
/* 8022282C 0021F76C  81 1F 00 44 */	lwz r8, 0x44(r31)
/* 80222830 0021F770  3C 80 80 4B */	lis r4, __vt__9IDelegate@ha
/* 80222834 0021F774  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 80222838 0021F778  38 A4 0F 00 */	addi r5, r4, __vt__9IDelegate@l
/* 8022283C 0021F77C  80 DF 00 4C */	lwz r6, 0x4c(r31)
/* 80222840 0021F780  3C 80 80 4C */	lis r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@ha
/* 80222844 0021F784  38 04 0B 74 */	addi r0, r4, "__vt__41Delegate<Q34Game10SingleGame10ZukanState>"@l
/* 80222848 0021F788  91 01 00 08 */	stw r8, 8(r1)
/* 8022284C 0021F78C  90 A3 00 00 */	stw r5, 0(r3)
/* 80222850 0021F790  90 03 00 00 */	stw r0, 0(r3)
/* 80222854 0021F794  93 83 00 04 */	stw r28, 4(r3)
/* 80222858 0021F798  91 03 00 08 */	stw r8, 8(r3)
/* 8022285C 0021F79C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80222860 0021F7A0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80222864 0021F7A4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80222868 0021F7A8  90 C3 00 10 */	stw r6, 0x10(r3)
lbl_8022286C:
/* 8022286C 0021F7AC  90 7C 00 18 */	stw r3, 0x18(r28)
/* 80222870 0021F7B0  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 80222874 0021F7B4  80 1D 00 D4 */	lwz r0, 0xd4(r29)
/* 80222878 0021F7B8  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8022287C 0021F7BC  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 80222880 0021F7C0  48 20 94 E9 */	bl start__8WipeBaseFf
/* 80222884 0021F7C4  7F A3 EB 78 */	mr r3, r29
/* 80222888 0021F7C8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022288C 0021F7CC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80222890 0021F7D0  7D 89 03 A6 */	mtctr r12
/* 80222894 0021F7D4  4E 80 04 21 */	bctrl 
/* 80222898 0021F7D8  93 BC 00 94 */	stw r29, 0x94(r28)
/* 8022289C 0021F7DC  38 A0 00 00 */	li r5, 0
/* 802228A0 0021F7E0  38 60 FF FF */	li r3, -1
/* 802228A4 0021F7E4  38 00 00 04 */	li r0, 4
/* 802228A8 0021F7E8  98 BC 00 88 */	stb r5, 0x88(r28)
/* 802228AC 0021F7EC  38 9C 00 1C */	addi r4, r28, 0x1c
/* 802228B0 0021F7F0  90 AD 96 80 */	stw r5, shadowMgr__4Game@sda21(r13)
/* 802228B4 0021F7F4  90 7C 00 A0 */	stw r3, 0xa0(r28)
/* 802228B8 0021F7F8  90 BC 00 A4 */	stw r5, 0xa4(r28)
/* 802228BC 0021F7FC  90 7C 00 A8 */	stw r3, 0xa8(r28)
/* 802228C0 0021F800  90 BC 00 AC */	stw r5, 0xac(r28)
/* 802228C4 0021F804  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 802228C8 0021F808  90 03 00 44 */	stw r0, 0x44(r3)
/* 802228CC 0021F80C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802228D0 0021F810  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 802228D4 0021F814  48 20 06 65 */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 802228D8 0021F818  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802228DC 0021F81C  80 9C 00 90 */	lwz r4, 0x90(r28)
/* 802228E0 0021F820  48 1D 97 99 */	bl setGamePad__Q26Screen9Game2DMgrFP10Controller
/* 802228E4 0021F824  88 1E 00 00 */	lbz r0, 0(r30)
/* 802228E8 0021F828  28 00 00 00 */	cmplwi r0, 0
/* 802228EC 0021F82C  41 82 00 14 */	beq lbl_80222900
/* 802228F0 0021F830  7F 83 E3 78 */	mr r3, r28
/* 802228F4 0021F834  38 80 00 00 */	li r4, 0
/* 802228F8 0021F838  48 00 00 4D */	bl setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
/* 802228FC 0021F83C  48 00 00 10 */	b lbl_8022290C
lbl_80222900:
/* 80222900 0021F840  7F 83 E3 78 */	mr r3, r28
/* 80222904 0021F844  38 80 00 01 */	li r4, 1
/* 80222908 0021F848  48 00 00 3D */	bl setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
lbl_8022290C:
/* 8022290C 0021F84C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80222910 0021F850  38 00 00 00 */	li r0, 0
/* 80222914 0021F854  90 7C 01 0C */	stw r3, 0x10c(r28)
/* 80222918 0021F858  90 0D 91 E0 */	stw r0, generalEnemyMgr__4Game@sda21(r13)
/* 8022291C 0021F85C  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222920 0021F860  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80222924 0021F864  80 03 02 40 */	lwz r0, 0x240(r3)
/* 80222928 0021F868  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8022292C 0021F86C  90 03 02 40 */	stw r0, 0x240(r3)
/* 80222930 0021F870  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 80222934 0021F874  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80222938 0021F878  7C 08 03 A6 */	mtlr r0
/* 8022293C 0021F87C  38 21 00 50 */	addi r1, r1, 0x50
/* 80222940 0021F880  4E 80 00 20 */	blr 
.endif

.global setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode
setMode__Q34Game10SingleGame10ZukanStateFQ44Game10SingleGame10ZukanState5CMode:
/* 80222944 0021F884  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80222948 0021F888  7C 00 20 00 */	cmpw r0, r4
/* 8022294C 0021F88C  4D 82 00 20 */	beqlr 
/* 80222950 0021F890  90 83 00 9C */	stw r4, 0x9c(r3)
/* 80222954 0021F894  4E 80 00 20 */	blr 

.global exec__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
exec__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 80222958 0021F898  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8022295C 0021F89C  7C 08 02 A6 */	mflr r0
/* 80222960 0021F8A0  3C C0 80 48 */	lis r6, lbl_80482E60@ha
/* 80222964 0021F8A4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80222968 0021F8A8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8022296C 0021F8AC  3B E6 2E 60 */	addi r31, r6, lbl_80482E60@l
/* 80222970 0021F8B0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80222974 0021F8B4  7C 9E 23 78 */	mr r30, r4
/* 80222978 0021F8B8  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8022297C 0021F8BC  7C 7D 1B 78 */	mr r29, r3
/* 80222980 0021F8C0  93 81 00 90 */	stw r28, 0x90(r1)
/* 80222984 0021F8C4  80 AD 93 E8 */	lwz r5, gameSystem__4Game@sda21(r13)
/* 80222988 0021F8C8  80 65 00 40 */	lwz r3, 0x40(r5)
/* 8022298C 0021F8CC  4B F0 4A 25 */	bl isDayTime__Q24Game7TimeMgrFv
/* 80222990 0021F8D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222994 0021F8D4  41 82 00 18 */	beq lbl_802229AC
/* 80222998 0021F8D8  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022299C 0021F8DC  C0 02 BE 7C */	lfs f0, lbl_8051A1DC@sda21(r2)
/* 802229A0 0021F8E0  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802229A4 0021F8E4  D0 03 02 1C */	stfs f0, 0x21c(r3)
/* 802229A8 0021F8E8  48 00 00 14 */	b lbl_802229BC
lbl_802229AC:
/* 802229AC 0021F8EC  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 802229B0 0021F8F0  C0 02 BE 80 */	lfs f0, lbl_8051A1E0@sda21(r2)
/* 802229B4 0021F8F4  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802229B8 0021F8F8  D0 03 02 1C */	stfs f0, 0x21c(r3)
lbl_802229BC:
/* 802229BC 0021F8FC  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 802229C0 0021F900  A0 03 00 34 */	lhz r0, 0x34(r3)
/* 802229C4 0021F904  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802229C8 0021F908  40 82 00 C4 */	bne lbl_80222A8C
/* 802229CC 0021F90C  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 802229D0 0021F910  2C 00 00 03 */	cmpwi r0, 3
/* 802229D4 0021F914  40 82 00 50 */	bne lbl_80222A24
/* 802229D8 0021F918  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 802229DC 0021F91C  2C 00 00 00 */	cmpwi r0, 0
/* 802229E0 0021F920  41 80 00 38 */	blt lbl_80222A18
/* 802229E4 0021F924  2C 00 00 66 */	cmpwi r0, 0x66
/* 802229E8 0021F928  40 80 00 30 */	bge lbl_80222A18
/* 802229EC 0021F92C  88 1D 00 88 */	lbz r0, 0x88(r29)
/* 802229F0 0021F930  28 00 00 00 */	cmplwi r0, 0
/* 802229F4 0021F934  41 82 00 24 */	beq lbl_80222A18
/* 802229F8 0021F938  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802229FC 0021F93C  48 1D CD 71 */	bl getZukanEnemyCurrSelectId__Q26Screen9Game2DMgrFv
/* 80222A00 0021F940  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80222A04 0021F944  7C 00 18 00 */	cmpw r0, r3
/* 80222A08 0021F948  40 82 00 10 */	bne lbl_80222A18
/* 80222A0C 0021F94C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A10 0021F950  48 1D CF 39 */	bl requireZukanEffectOff__Q26Screen9Game2DMgrFv
/* 80222A14 0021F954  48 00 00 80 */	b lbl_80222A94
lbl_80222A18:
/* 80222A18 0021F958  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A1C 0021F95C  48 1D CE 71 */	bl requireZukanRequest__Q26Screen9Game2DMgrFv
/* 80222A20 0021F960  48 00 00 74 */	b lbl_80222A94
lbl_80222A24:
/* 80222A24 0021F964  2C 00 00 06 */	cmpwi r0, 6
/* 80222A28 0021F968  40 82 00 58 */	bne lbl_80222A80
/* 80222A2C 0021F96C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80222A30 0021F970  2C 00 00 00 */	cmpwi r0, 0
/* 80222A34 0021F974  41 80 00 40 */	blt lbl_80222A74
/* 80222A38 0021F978  48 00 10 31 */	bl getMaxPelletID__Q34Game10SingleGame10ZukanStateFv
/* 80222A3C 0021F97C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80222A40 0021F980  7C 00 18 40 */	cmplw r0, r3
/* 80222A44 0021F984  40 80 00 30 */	bge lbl_80222A74
/* 80222A48 0021F988  88 1D 00 88 */	lbz r0, 0x88(r29)
/* 80222A4C 0021F98C  28 00 00 00 */	cmplwi r0, 0
/* 80222A50 0021F990  41 82 00 24 */	beq lbl_80222A74
/* 80222A54 0021F994  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A58 0021F998  48 1D CD A5 */	bl getZukanItemCurrSelectId__Q26Screen9Game2DMgrFv
/* 80222A5C 0021F99C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80222A60 0021F9A0  7C 00 18 00 */	cmpw r0, r3
/* 80222A64 0021F9A4  40 82 00 10 */	bne lbl_80222A74
/* 80222A68 0021F9A8  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A6C 0021F9AC  48 1D CE DD */	bl requireZukanEffectOff__Q26Screen9Game2DMgrFv
/* 80222A70 0021F9B0  48 00 00 24 */	b lbl_80222A94
lbl_80222A74:
/* 80222A74 0021F9B4  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A78 0021F9B8  48 1D CE 15 */	bl requireZukanRequest__Q26Screen9Game2DMgrFv
/* 80222A7C 0021F9BC  48 00 00 18 */	b lbl_80222A94
lbl_80222A80:
/* 80222A80 0021F9C0  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A84 0021F9C4  48 1D CE 09 */	bl requireZukanRequest__Q26Screen9Game2DMgrFv
/* 80222A88 0021F9C8  48 00 00 0C */	b lbl_80222A94
lbl_80222A8C:
/* 80222A8C 0021F9CC  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A90 0021F9D0  48 1D CE B9 */	bl requireZukanEffectOff__Q26Screen9Game2DMgrFv
lbl_80222A94:
/* 80222A94 0021F9D4  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222A98 0021F9D8  48 1D D1 35 */	bl isAppearConfirmWindow__Q26Screen9Game2DMgrFv
/* 80222A9C 0021F9DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222AA0 0021F9E0  40 82 02 2C */	bne lbl_80222CCC
/* 80222AA4 0021F9E4  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222AA8 0021F9E8  48 1D CF 5D */	bl isZukanEnlargedWindow__Q26Screen9Game2DMgrFv
/* 80222AAC 0021F9EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222AB0 0021F9F0  40 82 02 1C */	bne lbl_80222CCC
/* 80222AB4 0021F9F4  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222AB8 0021F9F8  48 1D D0 31 */	bl isZukanMemoWindow__Q26Screen9Game2DMgrFv
/* 80222ABC 0021F9FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222AC0 0021FA00  40 82 02 0C */	bne lbl_80222CCC
/* 80222AC4 0021FA04  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 80222AC8 0021FA08  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80222ACC 0021FA0C  54 00 06 75 */	rlwinm. r0, r0, 0, 0x19, 0x1a
/* 80222AD0 0021FA10  41 82 01 FC */	beq lbl_80222CCC
/* 80222AD4 0021FA14  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 80222AD8 0021FA18  2C 00 00 05 */	cmpwi r0, 5
/* 80222ADC 0021FA1C  41 82 01 E0 */	beq lbl_80222CBC
/* 80222AE0 0021FA20  40 80 00 10 */	bge lbl_80222AF0
/* 80222AE4 0021FA24  2C 00 00 03 */	cmpwi r0, 3
/* 80222AE8 0021FA28  40 80 00 14 */	bge lbl_80222AFC
/* 80222AEC 0021FA2C  48 00 01 D0 */	b lbl_80222CBC
lbl_80222AF0:
/* 80222AF0 0021FA30  2C 00 00 08 */	cmpwi r0, 8
/* 80222AF4 0021FA34  40 80 01 C8 */	bge lbl_80222CBC
/* 80222AF8 0021FA38  48 00 00 E4 */	b lbl_80222BDC
lbl_80222AFC:
/* 80222AFC 0021FA3C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222B00 0021FA40  3B 80 00 00 */	li r28, 0
/* 80222B04 0021FA44  48 1D CB 01 */	bl isZukanEnemy__Q26Screen9Game2DMgrFv
/* 80222B08 0021FA48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222B0C 0021FA4C  41 82 00 A0 */	beq lbl_80222BAC
/* 80222B10 0021FA50  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 80222B14 0021FA54  2C 00 00 05 */	cmpwi r0, 5
/* 80222B18 0021FA58  41 82 00 0C */	beq lbl_80222B24
/* 80222B1C 0021FA5C  38 00 00 05 */	li r0, 5
/* 80222B20 0021FA60  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_80222B24:
/* 80222B24 0021FA64  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80222B28 0021FA68  38 C0 00 00 */	li r6, 0
/* 80222B2C 0021FA6C  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80222B30 0021FA70  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanBase@ha
/* 80222B34 0021FA74  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80222B38 0021FA78  38 83 0B 44 */	addi r4, r3, __vt__Q28Morimura19DispMemberZukanBase@l
/* 80222B3C 0021FA7C  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanItem@ha
/* 80222B40 0021FA80  38 1D 01 14 */	addi r0, r29, 0x114
/* 80222B44 0021FA84  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80222B48 0021FA88  38 A3 0B 14 */	addi r5, r3, __vt__Q28Morimura19DispMemberZukanItem@l
/* 80222B4C 0021FA8C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222B50 0021FA90  38 81 00 6C */	addi r4, r1, 0x6c
/* 80222B54 0021FA94  90 C1 00 70 */	stw r6, 0x70(r1)
/* 80222B58 0021FA98  90 C1 00 74 */	stw r6, 0x74(r1)
/* 80222B5C 0021FA9C  90 C1 00 78 */	stw r6, 0x78(r1)
/* 80222B60 0021FAA0  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 80222B64 0021FAA4  90 C1 00 80 */	stw r6, 0x80(r1)
/* 80222B68 0021FAA8  90 C1 00 84 */	stw r6, 0x84(r1)
/* 80222B6C 0021FAAC  90 C1 00 88 */	stw r6, 0x88(r1)
/* 80222B70 0021FAB0  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80222B74 0021FAB4  80 BD 00 F0 */	lwz r5, 0xf0(r29)
/* 80222B78 0021FAB8  90 A1 00 74 */	stw r5, 0x74(r1)
/* 80222B7C 0021FABC  80 BD 00 CC */	lwz r5, 0xcc(r29)
/* 80222B80 0021FAC0  90 A1 00 78 */	stw r5, 0x78(r1)
/* 80222B84 0021FAC4  80 BD 00 EC */	lwz r5, 0xec(r29)
/* 80222B88 0021FAC8  90 A1 00 80 */	stw r5, 0x80(r1)
/* 80222B8C 0021FACC  80 BD 00 E8 */	lwz r5, 0xe8(r29)
/* 80222B90 0021FAD0  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80222B94 0021FAD4  90 01 00 88 */	stw r0, 0x88(r1)
/* 80222B98 0021FAD8  48 1D C9 D1 */	bl open_ZukanItem__Q26Screen9Game2DMgrFRQ28Morimura19DispMemberZukanItem
/* 80222B9C 0021FADC  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222BA0 0021FAE0  7F A3 EB 78 */	mr r3, r29
/* 80222BA4 0021FAE4  48 00 0C D1 */	bl startWipe__Q34Game10SingleGame10ZukanStateFf
/* 80222BA8 0021FAE8  3B 80 00 01 */	li r28, 1
lbl_80222BAC:
/* 80222BAC 0021FAEC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80222BB0 0021FAF0  41 82 00 18 */	beq lbl_80222BC8
/* 80222BB4 0021FAF4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80222BB8 0021FAF8  38 80 18 1F */	li r4, 0x181f
/* 80222BBC 0021FAFC  38 A0 00 00 */	li r5, 0
/* 80222BC0 0021FB00  48 11 5A 71 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 80222BC4 0021FB04  48 00 01 08 */	b lbl_80222CCC
lbl_80222BC8:
/* 80222BC8 0021FB08  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80222BCC 0021FB0C  38 80 18 07 */	li r4, 0x1807
/* 80222BD0 0021FB10  38 A0 00 00 */	li r5, 0
/* 80222BD4 0021FB14  48 11 5A 5D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 80222BD8 0021FB18  48 00 00 F4 */	b lbl_80222CCC
lbl_80222BDC:
/* 80222BDC 0021FB1C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222BE0 0021FB20  3B 80 00 00 */	li r28, 0
/* 80222BE4 0021FB24  48 1D CA 51 */	bl isZukanItem__Q26Screen9Game2DMgrFv
/* 80222BE8 0021FB28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80222BEC 0021FB2C  41 82 00 A0 */	beq lbl_80222C8C
/* 80222BF0 0021FB30  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 80222BF4 0021FB34  2C 00 00 02 */	cmpwi r0, 2
/* 80222BF8 0021FB38  41 82 00 0C */	beq lbl_80222C04
/* 80222BFC 0021FB3C  38 00 00 02 */	li r0, 2
/* 80222C00 0021FB40  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_80222C04:
/* 80222C04 0021FB44  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80222C08 0021FB48  38 C0 00 00 */	li r6, 0
/* 80222C0C 0021FB4C  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80222C10 0021FB50  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanBase@ha
/* 80222C14 0021FB54  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80222C18 0021FB58  38 83 0B 44 */	addi r4, r3, __vt__Q28Morimura19DispMemberZukanBase@l
/* 80222C1C 0021FB5C  3C 60 80 4C */	lis r3, __vt__Q28Morimura20DispMemberZukanEnemy@ha
/* 80222C20 0021FB60  38 1D 01 10 */	addi r0, r29, 0x110
/* 80222C24 0021FB64  90 81 00 4C */	stw r4, 0x4c(r1)
/* 80222C28 0021FB68  38 A3 0B 2C */	addi r5, r3, __vt__Q28Morimura20DispMemberZukanEnemy@l
/* 80222C2C 0021FB6C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222C30 0021FB70  38 81 00 4C */	addi r4, r1, 0x4c
/* 80222C34 0021FB74  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80222C38 0021FB78  90 C1 00 54 */	stw r6, 0x54(r1)
/* 80222C3C 0021FB7C  90 C1 00 58 */	stw r6, 0x58(r1)
/* 80222C40 0021FB80  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80222C44 0021FB84  90 C1 00 60 */	stw r6, 0x60(r1)
/* 80222C48 0021FB88  90 C1 00 64 */	stw r6, 0x64(r1)
/* 80222C4C 0021FB8C  90 C1 00 68 */	stw r6, 0x68(r1)
/* 80222C50 0021FB90  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 80222C54 0021FB94  80 BD 00 F0 */	lwz r5, 0xf0(r29)
/* 80222C58 0021FB98  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80222C5C 0021FB9C  80 BD 00 CC */	lwz r5, 0xcc(r29)
/* 80222C60 0021FBA0  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80222C64 0021FBA4  80 BD 00 EC */	lwz r5, 0xec(r29)
/* 80222C68 0021FBA8  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80222C6C 0021FBAC  80 BD 00 E8 */	lwz r5, 0xe8(r29)
/* 80222C70 0021FBB0  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 80222C74 0021FBB4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80222C78 0021FBB8  48 1D C8 55 */	bl open_ZukanEnemy__Q26Screen9Game2DMgrFRQ28Morimura20DispMemberZukanEnemy
/* 80222C7C 0021FBBC  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222C80 0021FBC0  7F A3 EB 78 */	mr r3, r29
/* 80222C84 0021FBC4  48 00 0B F1 */	bl startWipe__Q34Game10SingleGame10ZukanStateFf
/* 80222C88 0021FBC8  3B 80 00 01 */	li r28, 1
lbl_80222C8C:
/* 80222C8C 0021FBCC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80222C90 0021FBD0  41 82 00 18 */	beq lbl_80222CA8
/* 80222C94 0021FBD4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80222C98 0021FBD8  38 80 18 1F */	li r4, 0x181f
/* 80222C9C 0021FBDC  38 A0 00 00 */	li r5, 0
/* 80222CA0 0021FBE0  48 11 59 91 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 80222CA4 0021FBE4  48 00 00 28 */	b lbl_80222CCC
lbl_80222CA8:
/* 80222CA8 0021FBE8  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80222CAC 0021FBEC  38 80 18 07 */	li r4, 0x1807
/* 80222CB0 0021FBF0  38 A0 00 00 */	li r5, 0
/* 80222CB4 0021FBF4  48 11 59 7D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
/* 80222CB8 0021FBF8  48 00 00 14 */	b lbl_80222CCC
lbl_80222CBC:
/* 80222CBC 0021FBFC  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80222CC0 0021FC00  38 80 18 07 */	li r4, 0x1807
/* 80222CC4 0021FC04  38 A0 00 00 */	li r5, 0
/* 80222CC8 0021FC08  48 11 59 69 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
lbl_80222CCC:
/* 80222CCC 0021FC0C  88 1D 00 88 */	lbz r0, 0x88(r29)
/* 80222CD0 0021FC10  28 00 00 00 */	cmplwi r0, 0
/* 80222CD4 0021FC14  40 82 02 30 */	bne lbl_80222F04
/* 80222CD8 0021FC18  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222CDC 0021FC1C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80222CE0 0021FC20  80 03 02 40 */	lwz r0, 0x240(r3)
/* 80222CE4 0021FC24  60 00 00 01 */	ori r0, r0, 1
/* 80222CE8 0021FC28  90 03 02 40 */	stw r0, 0x240(r3)
/* 80222CEC 0021FC2C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222CF0 0021FC30  48 1D 93 3D */	bl update__Q26Screen9Game2DMgrFv
/* 80222CF4 0021FC34  80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 80222CF8 0021FC38  2C 03 00 00 */	cmpwi r3, 0
/* 80222CFC 0021FC3C  41 82 00 0C */	beq lbl_80222D08
/* 80222D00 0021FC40  2C 03 00 01 */	cmpwi r3, 1
/* 80222D04 0021FC44  40 82 01 48 */	bne lbl_80222E4C
lbl_80222D08:
/* 80222D08 0021FC48  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80222D0C 0021FC4C  2C 00 00 02 */	cmpwi r0, 2
/* 80222D10 0021FC50  40 82 03 54 */	bne lbl_80223064
/* 80222D14 0021FC54  2C 03 00 00 */	cmpwi r3, 0
/* 80222D18 0021FC58  40 82 00 9C */	bne lbl_80222DB4
/* 80222D1C 0021FC5C  2C 03 00 02 */	cmpwi r3, 2
/* 80222D20 0021FC60  41 82 00 0C */	beq lbl_80222D2C
/* 80222D24 0021FC64  38 00 00 02 */	li r0, 2
/* 80222D28 0021FC68  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_80222D2C:
/* 80222D2C 0021FC6C  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80222D30 0021FC70  38 C0 00 00 */	li r6, 0
/* 80222D34 0021FC74  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80222D38 0021FC78  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanBase@ha
/* 80222D3C 0021FC7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80222D40 0021FC80  38 83 0B 44 */	addi r4, r3, __vt__Q28Morimura19DispMemberZukanBase@l
/* 80222D44 0021FC84  3C 60 80 4C */	lis r3, __vt__Q28Morimura20DispMemberZukanEnemy@ha
/* 80222D48 0021FC88  38 1D 01 10 */	addi r0, r29, 0x110
/* 80222D4C 0021FC8C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80222D50 0021FC90  38 A3 0B 2C */	addi r5, r3, __vt__Q28Morimura20DispMemberZukanEnemy@l
/* 80222D54 0021FC94  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222D58 0021FC98  38 81 00 2C */	addi r4, r1, 0x2c
/* 80222D5C 0021FC9C  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80222D60 0021FCA0  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80222D64 0021FCA4  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80222D68 0021FCA8  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80222D6C 0021FCAC  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80222D70 0021FCB0  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80222D74 0021FCB4  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80222D78 0021FCB8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80222D7C 0021FCBC  80 BD 00 F0 */	lwz r5, 0xf0(r29)
/* 80222D80 0021FCC0  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80222D84 0021FCC4  80 BD 00 CC */	lwz r5, 0xcc(r29)
/* 80222D88 0021FCC8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80222D8C 0021FCCC  80 BD 00 EC */	lwz r5, 0xec(r29)
/* 80222D90 0021FCD0  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80222D94 0021FCD4  80 BD 00 E8 */	lwz r5, 0xe8(r29)
/* 80222D98 0021FCD8  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80222D9C 0021FCDC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80222DA0 0021FCE0  48 1D C7 2D */	bl open_ZukanEnemy__Q26Screen9Game2DMgrFRQ28Morimura20DispMemberZukanEnemy
/* 80222DA4 0021FCE4  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222DA8 0021FCE8  7F A3 EB 78 */	mr r3, r29
/* 80222DAC 0021FCEC  48 00 0A C9 */	bl startWipe__Q34Game10SingleGame10ZukanStateFf
/* 80222DB0 0021FCF0  48 00 02 B4 */	b lbl_80223064
lbl_80222DB4:
/* 80222DB4 0021FCF4  2C 03 00 05 */	cmpwi r3, 5
/* 80222DB8 0021FCF8  41 82 00 0C */	beq lbl_80222DC4
/* 80222DBC 0021FCFC  38 00 00 05 */	li r0, 5
/* 80222DC0 0021FD00  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_80222DC4:
/* 80222DC4 0021FD04  3C 60 80 4B */	lis r3, __vt__Q32og6Screen14DispMemberBase@ha
/* 80222DC8 0021FD08  38 C0 00 00 */	li r6, 0
/* 80222DCC 0021FD0C  38 03 11 48 */	addi r0, r3, __vt__Q32og6Screen14DispMemberBase@l
/* 80222DD0 0021FD10  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanBase@ha
/* 80222DD4 0021FD14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80222DD8 0021FD18  38 83 0B 44 */	addi r4, r3, __vt__Q28Morimura19DispMemberZukanBase@l
/* 80222DDC 0021FD1C  3C 60 80 4C */	lis r3, __vt__Q28Morimura19DispMemberZukanItem@ha
/* 80222DE0 0021FD20  38 1D 01 14 */	addi r0, r29, 0x114
/* 80222DE4 0021FD24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80222DE8 0021FD28  38 A3 0B 14 */	addi r5, r3, __vt__Q28Morimura19DispMemberZukanItem@l
/* 80222DEC 0021FD2C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222DF0 0021FD30  38 81 00 0C */	addi r4, r1, 0xc
/* 80222DF4 0021FD34  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80222DF8 0021FD38  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80222DFC 0021FD3C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80222E00 0021FD40  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80222E04 0021FD44  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80222E08 0021FD48  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80222E0C 0021FD4C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80222E10 0021FD50  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80222E14 0021FD54  80 BD 00 F0 */	lwz r5, 0xf0(r29)
/* 80222E18 0021FD58  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80222E1C 0021FD5C  80 BD 00 CC */	lwz r5, 0xcc(r29)
/* 80222E20 0021FD60  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80222E24 0021FD64  80 BD 00 EC */	lwz r5, 0xec(r29)
/* 80222E28 0021FD68  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80222E2C 0021FD6C  80 BD 00 E8 */	lwz r5, 0xe8(r29)
/* 80222E30 0021FD70  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80222E34 0021FD74  90 01 00 28 */	stw r0, 0x28(r1)
/* 80222E38 0021FD78  48 1D C7 31 */	bl open_ZukanItem__Q26Screen9Game2DMgrFRQ28Morimura19DispMemberZukanItem
/* 80222E3C 0021FD7C  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80222E40 0021FD80  7F A3 EB 78 */	mr r3, r29
/* 80222E44 0021FD84  48 00 0A 31 */	bl startWipe__Q34Game10SingleGame10ZukanStateFf
/* 80222E48 0021FD88  48 00 02 1C */	b lbl_80223064
lbl_80222E4C:
/* 80222E4C 0021FD8C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80222E50 0021FD90  2C 00 00 02 */	cmpwi r0, 2
/* 80222E54 0021FD94  40 82 02 10 */	bne lbl_80223064
/* 80222E58 0021FD98  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80222E5C 0021FD9C  28 00 00 00 */	cmplwi r0, 0
/* 80222E60 0021FDA0  40 82 00 18 */	bne lbl_80222E78
/* 80222E64 0021FDA4  38 7F 01 90 */	addi r3, r31, 0x190
/* 80222E68 0021FDA8  38 BF 00 90 */	addi r5, r31, 0x90
/* 80222E6C 0021FDAC  38 80 01 D3 */	li r4, 0x1d3
/* 80222E70 0021FDB0  4C C6 31 82 */	crclr 6
/* 80222E74 0021FDB4  4B E0 77 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80222E78:
/* 80222E78 0021FDB8  83 8D 98 80 */	lwz r28, spSceneMgr__8PSSystem@sda21(r13)
/* 80222E7C 0021FDBC  28 1C 00 00 */	cmplwi r28, 0
/* 80222E80 0021FDC0  40 82 00 18 */	bne lbl_80222E98
/* 80222E84 0021FDC4  38 7F 01 90 */	addi r3, r31, 0x190
/* 80222E88 0021FDC8  38 BF 00 90 */	addi r5, r31, 0x90
/* 80222E8C 0021FDCC  38 80 01 DC */	li r4, 0x1dc
/* 80222E90 0021FDD0  4C C6 31 82 */	crclr 6
/* 80222E94 0021FDD4  4B E0 77 AD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80222E98:
/* 80222E98 0021FDD8  80 1C 00 04 */	lwz r0, 4(r28)
/* 80222E9C 0021FDDC  28 00 00 00 */	cmplwi r0, 0
/* 80222EA0 0021FDE0  40 82 00 18 */	bne lbl_80222EB8
/* 80222EA4 0021FDE4  38 7F 01 9C */	addi r3, r31, 0x19c
/* 80222EA8 0021FDE8  38 BF 00 90 */	addi r5, r31, 0x90
/* 80222EAC 0021FDEC  38 80 00 CF */	li r4, 0xcf
/* 80222EB0 0021FDF0  4C C6 31 82 */	crclr 6
/* 80222EB4 0021FDF4  4B E0 77 8D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80222EB8:
/* 80222EB8 0021FDF8  80 7C 00 04 */	lwz r3, 4(r28)
/* 80222EBC 0021FDFC  83 83 00 04 */	lwz r28, 4(r3)
/* 80222EC0 0021FE00  28 1C 00 00 */	cmplwi r28, 0
/* 80222EC4 0021FE04  40 82 00 18 */	bne lbl_80222EDC
/* 80222EC8 0021FE08  38 7F 01 9C */	addi r3, r31, 0x19c
/* 80222ECC 0021FE0C  38 BF 01 A8 */	addi r5, r31, 0x1a8
/* 80222ED0 0021FE10  38 80 00 D1 */	li r4, 0xd1
/* 80222ED4 0021FE14  4C C6 31 82 */	crclr 6
/* 80222ED8 0021FE18  4B E0 77 69 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80222EDC:
/* 80222EDC 0021FE1C  7F 83 E3 78 */	mr r3, r28
/* 80222EE0 0021FE20  48 24 4F 21 */	bl adaptObjMgr__Q23PSM13Scene_ObjectsFv
/* 80222EE4 0021FE24  38 00 00 01 */	li r0, 1
/* 80222EE8 0021FE28  98 1D 00 88 */	stb r0, 0x88(r29)
/* 80222EEC 0021FE2C  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80222EF0 0021FE30  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80222EF4 0021FE34  80 03 02 40 */	lwz r0, 0x240(r3)
/* 80222EF8 0021FE38  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80222EFC 0021FE3C  90 03 02 40 */	stw r0, 0x240(r3)
/* 80222F00 0021FE40  48 00 01 64 */	b lbl_80223064
lbl_80222F04:
/* 80222F04 0021FE44  80 DD 00 9C */	lwz r6, 0x9c(r29)
/* 80222F08 0021FE48  2C 06 00 05 */	cmpwi r6, 5
/* 80222F0C 0021FE4C  41 82 00 44 */	beq lbl_80222F50
/* 80222F10 0021FE50  40 80 00 1C */	bge lbl_80222F2C
/* 80222F14 0021FE54  2C 06 00 03 */	cmpwi r6, 3
/* 80222F18 0021FE58  41 82 00 4C */	beq lbl_80222F64
/* 80222F1C 0021FE5C  40 80 01 08 */	bge lbl_80223024
/* 80222F20 0021FE60  2C 06 00 02 */	cmpwi r6, 2
/* 80222F24 0021FE64  40 80 00 18 */	bge lbl_80222F3C
/* 80222F28 0021FE68  48 00 01 1C */	b lbl_80223044
lbl_80222F2C:
/* 80222F2C 0021FE6C  2C 06 00 07 */	cmpwi r6, 7
/* 80222F30 0021FE70  41 82 01 04 */	beq lbl_80223034
/* 80222F34 0021FE74  40 80 01 10 */	bge lbl_80223044
/* 80222F38 0021FE78  48 00 00 8C */	b lbl_80222FC4
lbl_80222F3C:
/* 80222F3C 0021FE7C  7F A3 EB 78 */	mr r3, r29
/* 80222F40 0021FE80  7F C4 F3 78 */	mr r4, r30
/* 80222F44 0021FE84  38 A0 00 03 */	li r5, 3
/* 80222F48 0021FE88  48 00 01 3D */	bl execModeChange__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionQ44Game10SingleGame10ZukanState5CMode
/* 80222F4C 0021FE8C  48 00 01 0C */	b lbl_80223058
lbl_80222F50:
/* 80222F50 0021FE90  7F A3 EB 78 */	mr r3, r29
/* 80222F54 0021FE94  7F C4 F3 78 */	mr r4, r30
/* 80222F58 0021FE98  38 A0 00 06 */	li r5, 6
/* 80222F5C 0021FE9C  48 00 01 29 */	bl execModeChange__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionQ44Game10SingleGame10ZukanState5CMode
/* 80222F60 0021FEA0  48 00 00 F8 */	b lbl_80223058
lbl_80222F64:
/* 80222F64 0021FEA4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80222F68 0021FEA8  48 20 06 CD */	bl dvdLoadSyncAllNoBlock__6SystemFv
/* 80222F6C 0021FEAC  2C 03 00 00 */	cmpwi r3, 0
/* 80222F70 0021FEB0  40 82 00 44 */	bne lbl_80222FB4
/* 80222F74 0021FEB4  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222F78 0021FEB8  38 81 00 08 */	addi r4, r1, 8
/* 80222F7C 0021FEBC  48 1D C7 6D */	bl check_ZukanEnemyRequest__Q26Screen9Game2DMgrFRi
/* 80222F80 0021FEC0  2C 03 00 03 */	cmpwi r3, 3
/* 80222F84 0021FEC4  40 82 00 30 */	bne lbl_80222FB4
/* 80222F88 0021FEC8  7F A3 EB 78 */	mr r3, r29
/* 80222F8C 0021FECC  48 00 3D C5 */	bl clearHeaps__Q34Game10SingleGame10ZukanStateFv
/* 80222F90 0021FED0  7F A3 EB 78 */	mr r3, r29
/* 80222F94 0021FED4  7F C4 F3 78 */	mr r4, r30
/* 80222F98 0021FED8  81 9D 00 00 */	lwz r12, 0(r29)
/* 80222F9C 0021FEDC  38 A0 00 01 */	li r5, 1
/* 80222FA0 0021FEE0  38 C0 00 00 */	li r6, 0
/* 80222FA4 0021FEE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80222FA8 0021FEE8  7D 89 03 A6 */	mtctr r12
/* 80222FAC 0021FEEC  4E 80 04 21 */	bctrl 
/* 80222FB0 0021FEF0  48 00 00 A8 */	b lbl_80223058
lbl_80222FB4:
/* 80222FB4 0021FEF4  7F A3 EB 78 */	mr r3, r29
/* 80222FB8 0021FEF8  7F C4 F3 78 */	mr r4, r30
/* 80222FBC 0021FEFC  48 00 03 15 */	bl execTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
/* 80222FC0 0021FF00  48 00 00 98 */	b lbl_80223058
lbl_80222FC4:
/* 80222FC4 0021FF04  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80222FC8 0021FF08  48 20 06 6D */	bl dvdLoadSyncAllNoBlock__6SystemFv
/* 80222FCC 0021FF0C  2C 03 00 00 */	cmpwi r3, 0
/* 80222FD0 0021FF10  40 82 00 44 */	bne lbl_80223014
/* 80222FD4 0021FF14  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80222FD8 0021FF18  38 81 00 08 */	addi r4, r1, 8
/* 80222FDC 0021FF1C  48 1D C6 89 */	bl check_ZukanItemRequest__Q26Screen9Game2DMgrFRi
/* 80222FE0 0021FF20  2C 03 00 03 */	cmpwi r3, 3
/* 80222FE4 0021FF24  40 82 00 30 */	bne lbl_80223014
/* 80222FE8 0021FF28  7F A3 EB 78 */	mr r3, r29
/* 80222FEC 0021FF2C  48 00 3D 65 */	bl clearHeaps__Q34Game10SingleGame10ZukanStateFv
/* 80222FF0 0021FF30  7F A3 EB 78 */	mr r3, r29
/* 80222FF4 0021FF34  7F C4 F3 78 */	mr r4, r30
/* 80222FF8 0021FF38  81 9D 00 00 */	lwz r12, 0(r29)
/* 80222FFC 0021FF3C  38 A0 00 01 */	li r5, 1
/* 80223000 0021FF40  38 C0 00 00 */	li r6, 0
/* 80223004 0021FF44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80223008 0021FF48  7D 89 03 A6 */	mtctr r12
/* 8022300C 0021FF4C  4E 80 04 21 */	bctrl 
/* 80223010 0021FF50  48 00 00 48 */	b lbl_80223058
lbl_80223014:
/* 80223014 0021FF54  7F A3 EB 78 */	mr r3, r29
/* 80223018 0021FF58  7F C4 F3 78 */	mr r4, r30
/* 8022301C 0021FF5C  48 00 09 99 */	bl execPellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
/* 80223020 0021FF60  48 00 00 38 */	b lbl_80223058
lbl_80223024:
/* 80223024 0021FF64  7F A3 EB 78 */	mr r3, r29
/* 80223028 0021FF68  7F C4 F3 78 */	mr r4, r30
/* 8022302C 0021FF6C  48 00 01 C5 */	bl execChangeTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
/* 80223030 0021FF70  48 00 00 28 */	b lbl_80223058
lbl_80223034:
/* 80223034 0021FF74  7F A3 EB 78 */	mr r3, r29
/* 80223038 0021FF78  7F C4 F3 78 */	mr r4, r30
/* 8022303C 0021FF7C  48 00 08 8D */	bl execChangePellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
/* 80223040 0021FF80  48 00 00 18 */	b lbl_80223058
lbl_80223044:
/* 80223044 0021FF84  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80223048 0021FF88  38 BF 01 CC */	addi r5, r31, 0x1cc
/* 8022304C 0021FF8C  38 80 05 79 */	li r4, 0x579
/* 80223050 0021FF90  4C C6 31 82 */	crclr 6
/* 80223054 0021FF94  4B E0 75 ED */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80223058:
/* 80223058 0021FF98  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 8022305C 0021FF9C  38 63 00 18 */	addi r3, r3, 0x18
/* 80223060 0021FFA0  4B F0 DD A9 */	bl update__Q34Game15IllustratedBook12ColorSettingFv
lbl_80223064:
/* 80223064 0021FFA4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80223068 0021FFA8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8022306C 0021FFAC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80223070 0021FFB0  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80223074 0021FFB4  83 81 00 90 */	lwz r28, 0x90(r1)
/* 80223078 0021FFB8  7C 08 03 A6 */	mtlr r0
/* 8022307C 0021FFBC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80223080 0021FFC0  4E 80 00 20 */	blr 

.global execModeChange__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionQ44Game10SingleGame10ZukanState5CMode
execModeChange__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionQ44Game10SingleGame10ZukanState5CMode:
/* 80223084 0021FFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223088 0021FFC8  7C 08 02 A6 */	mflr r0
/* 8022308C 0021FFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80223090 0021FFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223094 0021FFD4  7C BF 2B 78 */	mr r31, r5
/* 80223098 0021FFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022309C 0021FFDC  7C 9E 23 78 */	mr r30, r4
/* 802230A0 0021FFE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802230A4 0021FFE4  7C 7D 1B 78 */	mr r29, r3
/* 802230A8 0021FFE8  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 802230AC 0021FFEC  2C 00 00 01 */	cmpwi r0, 1
/* 802230B0 0021FFF0  41 82 00 50 */	beq lbl_80223100
/* 802230B4 0021FFF4  40 80 00 10 */	bge lbl_802230C4
/* 802230B8 0021FFF8  2C 00 00 00 */	cmpwi r0, 0
/* 802230BC 0021FFFC  40 80 00 14 */	bge lbl_802230D0
/* 802230C0 00220000  48 00 00 EC */	b lbl_802231AC
lbl_802230C4:
/* 802230C4 00220004  2C 00 00 03 */	cmpwi r0, 3
/* 802230C8 00220008  40 80 00 E4 */	bge lbl_802231AC
/* 802230CC 0022000C  48 00 00 A8 */	b lbl_80223174
lbl_802230D0:
/* 802230D0 00220010  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 802230D4 00220014  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 802230D8 00220018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802230DC 0022001C  4C 41 13 82 */	cror 2, 1, 2
/* 802230E0 00220020  40 82 00 CC */	bne lbl_802231AC
/* 802230E4 00220024  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802230E8 00220028  48 20 05 4D */	bl dvdLoadSyncAllNoBlock__6SystemFv
/* 802230EC 0022002C  2C 03 00 00 */	cmpwi r3, 0
/* 802230F0 00220030  40 82 00 BC */	bne lbl_802231AC
/* 802230F4 00220034  38 00 00 01 */	li r0, 1
/* 802230F8 00220038  90 1D 00 FC */	stw r0, 0xfc(r29)
/* 802230FC 0022003C  48 00 00 B0 */	b lbl_802231AC
lbl_80223100:
/* 80223100 00220040  2C 1F 00 06 */	cmpwi r31, 6
/* 80223104 00220044  41 82 00 28 */	beq lbl_8022312C
/* 80223108 00220048  40 80 00 38 */	bge lbl_80223140
/* 8022310C 0022004C  2C 1F 00 03 */	cmpwi r31, 3
/* 80223110 00220050  41 82 00 08 */	beq lbl_80223118
/* 80223114 00220054  48 00 00 2C */	b lbl_80223140
lbl_80223118:
/* 80223118 00220058  38 00 FF FF */	li r0, -1
/* 8022311C 0022005C  90 1D 00 A0 */	stw r0, 0xa0(r29)
/* 80223120 00220060  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80223124 00220064  48 00 23 BD */	bl createTeki__Q34Game10SingleGame10ZukanStateFi
/* 80223128 00220068  48 00 00 38 */	b lbl_80223160
lbl_8022312C:
/* 8022312C 0022006C  38 00 FF FF */	li r0, -1
/* 80223130 00220070  90 1D 00 A8 */	stw r0, 0xa8(r29)
/* 80223134 00220074  80 9D 00 A8 */	lwz r4, 0xa8(r29)
/* 80223138 00220078  48 00 24 8D */	bl createPellet__Q34Game10SingleGame10ZukanStateFi
/* 8022313C 0022007C  48 00 00 24 */	b lbl_80223160
lbl_80223140:
/* 80223140 00220080  3C 60 80 48 */	lis r3, lbl_80482EDC@ha
/* 80223144 00220084  3C 80 80 48 */	lis r4, lbl_80483040@ha
/* 80223148 00220088  38 A4 30 40 */	addi r5, r4, lbl_80483040@l
/* 8022314C 0022008C  7F E6 FB 78 */	mr r6, r31
/* 80223150 00220090  38 63 2E DC */	addi r3, r3, lbl_80482EDC@l
/* 80223154 00220094  38 80 05 B3 */	li r4, 0x5b3
/* 80223158 00220098  4C C6 31 82 */	crclr 6
/* 8022315C 0022009C  4B E0 74 E5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80223160:
/* 80223160 002200A0  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223164 002200A4  38 00 00 02 */	li r0, 2
/* 80223168 002200A8  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 8022316C 002200AC  90 1D 00 FC */	stw r0, 0xfc(r29)
/* 80223170 002200B0  48 00 00 3C */	b lbl_802231AC
lbl_80223174:
/* 80223174 002200B4  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 80223178 002200B8  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 8022317C 002200BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80223180 002200C0  4C 41 13 82 */	cror 2, 1, 2
/* 80223184 002200C4  40 82 00 28 */	bne lbl_802231AC
/* 80223188 002200C8  D0 3D 00 F4 */	stfs f1, 0xf4(r29)
/* 8022318C 002200CC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80223190 002200D0  48 20 04 A5 */	bl dvdLoadSyncAllNoBlock__6SystemFv
/* 80223194 002200D4  2C 03 00 00 */	cmpwi r3, 0
/* 80223198 002200D8  40 82 00 14 */	bne lbl_802231AC
/* 8022319C 002200DC  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 802231A0 002200E0  7C 00 F8 00 */	cmpw r0, r31
/* 802231A4 002200E4  41 82 00 08 */	beq lbl_802231AC
/* 802231A8 002200E8  93 FD 00 9C */	stw r31, 0x9c(r29)
lbl_802231AC:
/* 802231AC 002200EC  88 1D 00 88 */	lbz r0, 0x88(r29)
/* 802231B0 002200F0  28 00 00 00 */	cmplwi r0, 0
/* 802231B4 002200F4  41 82 00 20 */	beq lbl_802231D4
/* 802231B8 002200F8  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 802231BC 002200FC  7F C3 F3 78 */	mr r3, r30
/* 802231C0 00220100  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 802231C4 00220104  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 802231C8 00220108  EC 01 00 2A */	fadds f0, f1, f0
/* 802231CC 0022010C  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 802231D0 00220110  4B F2 86 AD */	bl doUpdate__Q24Game15BaseGameSectionFv
lbl_802231D4:
/* 802231D4 00220114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802231D8 00220118  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802231DC 0022011C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802231E0 00220120  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802231E4 00220124  7C 08 03 A6 */	mtlr r0
/* 802231E8 00220128  38 21 00 20 */	addi r1, r1, 0x20
/* 802231EC 0022012C  4E 80 00 20 */	blr 

.global execChangeTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
execChangeTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 802231F0 00220130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802231F4 00220134  7C 08 02 A6 */	mflr r0
/* 802231F8 00220138  90 01 00 14 */	stw r0, 0x14(r1)
/* 802231FC 0022013C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223200 00220140  7C 9F 23 78 */	mr r31, r4
/* 80223204 00220144  93 C1 00 08 */	stw r30, 8(r1)
/* 80223208 00220148  7C 7E 1B 78 */	mr r30, r3
/* 8022320C 0022014C  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 80223210 00220150  2C 00 00 01 */	cmpwi r0, 1
/* 80223214 00220154  41 82 00 34 */	beq lbl_80223248
/* 80223218 00220158  40 80 00 10 */	bge lbl_80223228
/* 8022321C 0022015C  2C 00 00 00 */	cmpwi r0, 0
/* 80223220 00220160  40 80 00 14 */	bge lbl_80223234
/* 80223224 00220164  48 00 00 6C */	b lbl_80223290
lbl_80223228:
/* 80223228 00220168  2C 00 00 03 */	cmpwi r0, 3
/* 8022322C 0022016C  40 80 00 64 */	bge lbl_80223290
/* 80223230 00220170  48 00 00 34 */	b lbl_80223264
lbl_80223234:
/* 80223234 00220174  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223238 00220178  38 00 00 01 */	li r0, 1
/* 8022323C 0022017C  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 80223240 00220180  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 80223244 00220184  48 00 00 4C */	b lbl_80223290
lbl_80223248:
/* 80223248 00220188  80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 8022324C 0022018C  48 00 22 95 */	bl createTeki__Q34Game10SingleGame10ZukanStateFi
/* 80223250 00220190  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223254 00220194  38 00 00 02 */	li r0, 2
/* 80223258 00220198  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 8022325C 0022019C  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 80223260 002201A0  48 00 00 30 */	b lbl_80223290
lbl_80223264:
/* 80223264 002201A4  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80223268 002201A8  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8022326C 002201AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80223270 002201B0  40 81 00 20 */	ble lbl_80223290
/* 80223274 002201B4  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 80223278 002201B8  2C 00 00 03 */	cmpwi r0, 3
/* 8022327C 002201BC  41 82 00 0C */	beq lbl_80223288
/* 80223280 002201C0  38 00 00 03 */	li r0, 3
/* 80223284 002201C4  90 1E 00 9C */	stw r0, 0x9c(r30)
lbl_80223288:
/* 80223288 002201C8  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8022328C 002201CC  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
lbl_80223290:
/* 80223290 002201D0  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 80223294 002201D4  28 00 00 00 */	cmplwi r0, 0
/* 80223298 002201D8  41 82 00 20 */	beq lbl_802232B8
/* 8022329C 002201DC  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 802232A0 002201E0  7F E3 FB 78 */	mr r3, r31
/* 802232A4 002201E4  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 802232A8 002201E8  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 802232AC 002201EC  EC 01 00 2A */	fadds f0, f1, f0
/* 802232B0 002201F0  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 802232B4 002201F4  4B F2 85 C9 */	bl doUpdate__Q24Game15BaseGameSectionFv
lbl_802232B8:
/* 802232B8 002201F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802232BC 002201FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802232C0 00220200  83 C1 00 08 */	lwz r30, 8(r1)
/* 802232C4 00220204  7C 08 03 A6 */	mtlr r0
/* 802232C8 00220208  38 21 00 10 */	addi r1, r1, 0x10
/* 802232CC 0022020C  4E 80 00 20 */	blr 

.global execTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
execTeki__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 802232D0 00220210  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802232D4 00220214  7C 08 02 A6 */	mflr r0
/* 802232D8 00220218  90 01 01 34 */	stw r0, 0x134(r1)
/* 802232DC 0022021C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 802232E0 00220220  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 802232E4 00220224  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 802232E8 00220228  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 802232EC 0022022C  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 802232F0 00220230  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 802232F4 00220234  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 802232F8 00220238  F3 81 00 F8 */	psq_st f28, 248(r1), 0, qr0
/* 802232FC 0022023C  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 80223300 00220240  F3 61 00 E8 */	psq_st f27, 232(r1), 0, qr0
/* 80223304 00220244  DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 80223308 00220248  F3 41 00 D8 */	psq_st f26, 216(r1), 0, qr0
/* 8022330C 0022024C  DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 80223310 00220250  F3 21 00 C8 */	psq_st f25, 200(r1), 0, qr0
/* 80223314 00220254  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 80223318 00220258  7C 7D 1B 78 */	mr r29, r3
/* 8022331C 0022025C  80 63 00 90 */	lwz r3, 0x90(r3)
/* 80223320 00220260  7C 9E 23 78 */	mr r30, r4
/* 80223324 00220264  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80223328 00220268  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8022332C 0022026C  41 82 03 F8 */	beq lbl_80223724
/* 80223330 00220270  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80223334 00220274  48 1D C4 39 */	bl getZukanEnemyCurrSelectId__Q26Screen9Game2DMgrFv
/* 80223338 00220278  2C 03 FF FF */	cmpwi r3, -1
/* 8022333C 0022027C  41 82 03 E8 */	beq lbl_80223724
/* 80223340 00220280  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80223344 00220284  48 1D C8 89 */	bl isAppearConfirmWindow__Q26Screen9Game2DMgrFv
/* 80223348 00220288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022334C 0022028C  40 82 03 D8 */	bne lbl_80223724
/* 80223350 00220290  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80223354 00220294  81 83 00 00 */	lwz r12, 0(r3)
/* 80223358 00220298  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8022335C 0022029C  7D 89 03 A6 */	mtctr r12
/* 80223360 002202A0  4E 80 04 21 */	bctrl 
/* 80223364 002202A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80223368 002202A8  41 82 03 BC */	beq lbl_80223724
/* 8022336C 002202AC  3C A0 80 4B */	lis r5, __vt__Q24Game15CreatureInitArg@ha
/* 80223370 002202B0  3C 80 80 4B */	lis r4, __vt__Q24Game11PikiInitArg@ha
/* 80223374 002202B4  38 05 A2 F4 */	addi r0, r5, __vt__Q24Game15CreatureInitArg@l
/* 80223378 002202B8  38 A0 00 20 */	li r5, 0x20
/* 8022337C 002202BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80223380 002202C0  38 C4 10 F4 */	addi r6, r4, __vt__Q24Game11PikiInitArg@l
/* 80223384 002202C4  38 00 00 00 */	li r0, 0
/* 80223388 002202C8  38 81 00 64 */	addi r4, r1, 0x64
/* 8022338C 002202CC  90 C1 00 64 */	stw r6, 0x64(r1)
/* 80223390 002202D0  90 A1 00 68 */	stw r5, 0x68(r1)
/* 80223394 002202D4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80223398 002202D8  4B F1 7C 31 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 8022339C 002202DC  7F E3 FB 78 */	mr r3, r31
/* 802233A0 002202E0  38 80 00 06 */	li r4, 6
/* 802233A4 002202E4  4B F2 72 1D */	bl changeShape__Q24Game4PikiFi
/* 802233A8 002202E8  80 9D 00 98 */	lwz r4, 0x98(r29)
/* 802233AC 002202EC  38 61 00 24 */	addi r3, r1, 0x24
/* 802233B0 002202F0  48 1F 76 E9 */	bl getLookAtPosition__6CameraFv
/* 802233B4 002202F4  80 9D 00 98 */	lwz r4, 0x98(r29)
/* 802233B8 002202F8  38 61 00 18 */	addi r3, r1, 0x18
/* 802233BC 002202FC  C3 E1 00 24 */	lfs f31, 0x24(r1)
/* 802233C0 00220300  81 84 00 00 */	lwz r12, 0(r4)
/* 802233C4 00220304  C3 C1 00 28 */	lfs f30, 0x28(r1)
/* 802233C8 00220308  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802233CC 0022030C  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 802233D0 00220310  7D 89 03 A6 */	mtctr r12
/* 802233D4 00220314  4E 80 04 21 */	bctrl 
/* 802233D8 00220318  C3 81 00 18 */	lfs f28, 0x18(r1)
/* 802233DC 0022031C  38 61 00 0C */	addi r3, r1, 0xc
/* 802233E0 00220320  C3 61 00 1C */	lfs f27, 0x1c(r1)
/* 802233E4 00220324  C3 41 00 20 */	lfs f26, 0x20(r1)
/* 802233E8 00220328  80 9D 00 98 */	lwz r4, 0x98(r29)
/* 802233EC 0022032C  48 1F 6E E9 */	bl getViewVector__11CullFrustumFv
/* 802233F0 00220330  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802233F4 00220334  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802233F8 00220338  EC 60 00 32 */	fmuls f3, f0, f0
/* 802233FC 0022033C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80223400 00220340  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80223404 00220344  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223408 00220348  EC 21 18 7A */	fmadds f1, f1, f1, f3
/* 8022340C 0022034C  EC 22 08 2A */	fadds f1, f2, f1
/* 80223410 00220350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80223414 00220354  4B EA 61 8D */	bl rand
/* 80223418 00220358  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022341C 0022035C  3C 00 43 30 */	lis r0, 0x4330
/* 80223420 00220360  90 61 00 74 */	stw r3, 0x74(r1)
/* 80223424 00220364  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80223428 00220368  90 01 00 70 */	stw r0, 0x70(r1)
/* 8022342C 0022036C  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80223430 00220370  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 80223434 00220374  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80223438 00220378  EC 42 18 28 */	fsubs f2, f2, f3
/* 8022343C 0022037C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80223440 00220380  EF 20 00 72 */	fmuls f25, f0, f1
/* 80223444 00220384  4B EA 61 5D */	bl rand
/* 80223448 00220388  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022344C 0022038C  3C 00 43 30 */	lis r0, 0x4330
/* 80223450 00220390  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80223454 00220394  FC 60 C8 90 */	fmr f3, f25
/* 80223458 00220398  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022345C 0022039C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80223460 002203A0  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 80223464 002203A4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80223468 002203A8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8022346C 002203AC  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80223470 002203B0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80223474 002203B4  C0 02 BD C4 */	lfs f0, lbl_8051A124@sda21(r2)
/* 80223478 002203B8  EC 22 08 24 */	fdivs f1, f2, f1
/* 8022347C 002203BC  EC 80 00 72 */	fmuls f4, f0, f1
/* 80223480 002203C0  40 80 00 08 */	bge lbl_80223488
/* 80223484 002203C4  FC 60 C8 50 */	fneg f3, f25
lbl_80223488:
/* 80223488 002203C8  C0 42 BE 34 */	lfs f2, lbl_8051A194@sda21(r2)
/* 8022348C 002203CC  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80223490 002203D0  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223494 002203D4  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 80223498 002203D8  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8022349C 002203DC  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 802234A0 002203E0  FC 00 08 1E */	fctiwz f0, f1
/* 802234A4 002203E4  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 802234A8 002203E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802234AC 002203EC  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802234B0 002203F0  7C 64 02 14 */	add r3, r4, r0
/* 802234B4 002203F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802234B8 002203F8  EC 64 00 32 */	fmuls f3, f4, f0
/* 802234BC 002203FC  40 80 00 28 */	bge lbl_802234E4
/* 802234C0 00220400  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 802234C4 00220404  EC 19 00 32 */	fmuls f0, f25, f0
/* 802234C8 00220408  FC 00 00 1E */	fctiwz f0, f0
/* 802234CC 0022040C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 802234D0 00220410  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 802234D4 00220414  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802234D8 00220418  7C 04 04 2E */	lfsx f0, r4, r0
/* 802234DC 0022041C  FC 00 00 50 */	fneg f0, f0
/* 802234E0 00220420  48 00 00 1C */	b lbl_802234FC
lbl_802234E4:
/* 802234E4 00220424  EC 19 00 B2 */	fmuls f0, f25, f2
/* 802234E8 00220428  FC 00 00 1E */	fctiwz f0, f0
/* 802234EC 0022042C  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 802234F0 00220430  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802234F4 00220434  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 802234F8 00220438  7C 04 04 2E */	lfsx f0, r4, r0
lbl_802234FC:
/* 802234FC 0022043C  EC 44 00 32 */	fmuls f2, f4, f0
/* 80223500 00220440  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80223504 00220444  EC 1D 18 2A */	fadds f0, f29, f3
/* 80223508 00220448  D3 81 00 58 */	stfs f28, 0x58(r1)
/* 8022350C 0022044C  EC 3E 08 2A */	fadds f1, f30, f1
/* 80223510 00220450  EC 5F 10 2A */	fadds f2, f31, f2
/* 80223514 00220454  EC 00 D0 28 */	fsubs f0, f0, f26
/* 80223518 00220458  D3 61 00 5C */	stfs f27, 0x5c(r1)
/* 8022351C 0022045C  EC 21 D8 28 */	fsubs f1, f1, f27
/* 80223520 00220460  EC 42 E0 28 */	fsubs f2, f2, f28
/* 80223524 00220464  D3 41 00 60 */	stfs f26, 0x60(r1)
/* 80223528 00220468  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8022352C 0022046C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80223530 00220470  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80223534 00220474  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 80223538 00220478  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8022353C 0022047C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80223540 00220480  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80223544 00220484  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80223548 00220488  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8022354C 0022048C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80223550 00220490  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80223554 00220494  4B EA 60 4D */	bl rand
/* 80223558 00220498  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022355C 0022049C  3C 00 43 30 */	lis r0, 0x4330
/* 80223560 002204A0  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80223564 002204A4  7F E3 FB 78 */	mr r3, r31
/* 80223568 002204A8  80 BD 01 04 */	lwz r5, 0x104(r29)
/* 8022356C 002204AC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80223570 002204B0  90 01 00 98 */	stw r0, 0x98(r1)
/* 80223574 002204B4  C8 22 BE 28 */	lfd f1, lbl_8051A188@sda21(r2)
/* 80223578 002204B8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8022357C 002204BC  C0 62 BE 18 */	lfs f3, lbl_8051A178@sda21(r2)
/* 80223580 002204C0  EC 80 08 28 */	fsubs f4, f0, f1
/* 80223584 002204C4  C0 25 00 30 */	lfs f1, 0x30(r5)
/* 80223588 002204C8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8022358C 002204CC  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80223590 002204D0  EC 64 18 24 */	fdivs f3, f4, f3
/* 80223594 002204D4  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 80223598 002204D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8022359C 002204DC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802235A0 002204E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802235A4 002204E4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802235A8 002204E8  7D 89 03 A6 */	mtctr r12
/* 802235AC 002204EC  4E 80 04 21 */	bctrl 
/* 802235B0 002204F0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 802235B4 002204F4  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 802235B8 002204F8  EC 02 00 B2 */	fmuls f0, f2, f2
/* 802235BC 002204FC  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 802235C0 00220500  EC 81 00 72 */	fmuls f4, f1, f1
/* 802235C4 00220504  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 802235C8 00220508  EC 63 00 F2 */	fmuls f3, f3, f3
/* 802235CC 0022050C  EC 00 20 2A */	fadds f0, f0, f4
/* 802235D0 00220510  EC 03 00 2A */	fadds f0, f3, f0
/* 802235D4 00220514  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802235D8 00220518  40 81 00 20 */	ble lbl_802235F8
/* 802235DC 0022051C  EC 02 20 BA */	fmadds f0, f2, f2, f4
/* 802235E0 00220520  EC 63 00 2A */	fadds f3, f3, f0
/* 802235E4 00220524  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802235E8 00220528  40 81 00 14 */	ble lbl_802235FC
/* 802235EC 0022052C  FC 00 18 34 */	frsqrte f0, f3
/* 802235F0 00220530  EC 60 00 F2 */	fmuls f3, f0, f3
/* 802235F4 00220534  48 00 00 08 */	b lbl_802235FC
lbl_802235F8:
/* 802235F8 00220538  FC 60 08 90 */	fmr f3, f1
lbl_802235FC:
/* 802235FC 0022053C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223600 00220540  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80223604 00220544  40 81 00 30 */	ble lbl_80223634
/* 80223608 00220548  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 8022360C 0022054C  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80223610 00220550  EC 60 18 24 */	fdivs f3, f0, f3
/* 80223614 00220554  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80223618 00220558  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8022361C 0022055C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80223620 00220560  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80223624 00220564  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80223628 00220568  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8022362C 0022056C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80223630 00220570  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80223634:
/* 80223634 00220574  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80223638 00220578  38 81 00 58 */	addi r4, r1, 0x58
/* 8022363C 0022057C  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80223640 00220580  C0 E1 00 4C */	lfs f7, 0x4c(r1)
/* 80223644 00220584  EC C0 00 72 */	fmuls f6, f0, f1
/* 80223648 00220588  C0 42 BD BC */	lfs f2, lbl_8051A11C@sda21(r2)
/* 8022364C 0022058C  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 80223650 00220590  EC 07 00 72 */	fmuls f0, f7, f1
/* 80223654 00220594  80 BD 01 04 */	lwz r5, 0x104(r29)
/* 80223658 00220598  EC 85 30 BC */	fnmsubs f4, f5, f2, f6
/* 8022365C 0022059C  C0 65 00 20 */	lfs f3, 0x20(r5)
/* 80223660 002205A0  EC 05 00 78 */	fmsubs f0, f5, f1, f0
/* 80223664 002205A4  EC C7 30 B8 */	fmsubs f6, f7, f2, f6
/* 80223668 002205A8  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8022366C 002205AC  EC 84 00 F2 */	fmuls f4, f4, f3
/* 80223670 002205B0  EC A0 00 F2 */	fmuls f5, f0, f3
/* 80223674 002205B4  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80223678 002205B8  EC C6 00 F2 */	fmuls f6, f6, f3
/* 8022367C 002205BC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80223680 002205C0  EC 42 20 2A */	fadds f2, f2, f4
/* 80223684 002205C4  EC 21 28 2A */	fadds f1, f1, f5
/* 80223688 002205C8  EC 00 30 2A */	fadds f0, f0, f6
/* 8022368C 002205CC  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80223690 002205D0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80223694 002205D4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80223698 002205D8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8022369C 002205DC  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 802236A0 002205E0  EC 01 00 2A */	fadds f0, f1, f0
/* 802236A4 002205E4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 802236A8 002205E8  81 83 00 04 */	lwz r12, 4(r3)
/* 802236AC 002205EC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802236B0 002205F0  7D 89 03 A6 */	mtctr r12
/* 802236B4 002205F4  4E 80 04 21 */	bctrl 
/* 802236B8 002205F8  C0 42 BE 20 */	lfs f2, lbl_8051A180@sda21(r2)
/* 802236BC 002205FC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802236C0 00220600  EC 22 08 2A */	fadds f1, f2, f1
/* 802236C4 00220604  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802236C8 00220608  40 80 00 08 */	bge lbl_802236D0
/* 802236CC 0022060C  D0 21 00 5C */	stfs f1, 0x5c(r1)
lbl_802236D0:
/* 802236D0 00220610  7F E3 FB 78 */	mr r3, r31
/* 802236D4 00220614  38 81 00 58 */	addi r4, r1, 0x58
/* 802236D8 00220618  38 A0 00 00 */	li r5, 0
/* 802236DC 0022061C  4B F1 7A CD */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 802236E0 00220620  4B EA 5E C1 */	bl rand
/* 802236E4 00220624  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802236E8 00220628  3C 00 43 30 */	lis r0, 0x4330
/* 802236EC 0022062C  90 61 00 9C */	stw r3, 0x9c(r1)
/* 802236F0 00220630  38 80 38 58 */	li r4, 0x3858
/* 802236F4 00220634  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802236F8 00220638  38 A0 00 00 */	li r5, 0
/* 802236FC 0022063C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80223700 00220640  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80223704 00220644  C8 41 00 98 */	lfd f2, 0x98(r1)
/* 80223708 00220648  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 8022370C 0022064C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80223710 00220650  EC 22 08 24 */	fdivs f1, f2, f1
/* 80223714 00220654  EC 00 00 72 */	fmuls f0, f0, f1
/* 80223718 00220658  D0 1F 01 FC */	stfs f0, 0x1fc(r31)
/* 8022371C 0022065C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80223720 00220660  48 11 4F 11 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
lbl_80223724:
/* 80223724 00220664  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 80223728 00220668  48 1D C4 A5 */	bl isAppearConfirmWindow__Q26Screen9Game2DMgrFv
/* 8022372C 0022066C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223730 00220670  40 82 00 AC */	bne lbl_802237DC
/* 80223734 00220674  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 80223738 00220678  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8022373C 0022067C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80223740 00220680  41 82 00 9C */	beq lbl_802237DC
/* 80223744 00220684  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80223748 00220688  28 03 00 00 */	cmplwi r3, 0
/* 8022374C 0022068C  41 82 00 90 */	beq lbl_802237DC
/* 80223750 00220690  41 82 00 08 */	beq lbl_80223758
/* 80223754 00220694  38 63 00 04 */	addi r3, r3, 4
lbl_80223758:
/* 80223758 00220698  38 00 00 00 */	li r0, 0
/* 8022375C 0022069C  90 61 00 44 */	stw r3, 0x44(r1)
/* 80223760 002206A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80223764 002206A4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80223768 002206A8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022376C 002206AC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80223770 002206B0  4B EE AD 21 */	bl "first__37GeneralMgrIterator<Q24Game9EnemyBase>Fv"
/* 80223774 002206B4  3C 80 80 4B */	lis r4, __vt__Q24Game11Interaction@ha
/* 80223778 002206B8  3C 60 80 4B */	lis r3, __vt__Q24Game12InteractDope@ha
/* 8022377C 002206BC  3B 44 A3 00 */	addi r26, r4, __vt__Q24Game11Interaction@l
/* 80223780 002206C0  3B E0 00 01 */	li r31, 1
/* 80223784 002206C4  3B 83 49 98 */	addi r28, r3, __vt__Q24Game12InteractDope@l
/* 80223788 002206C8  3B 60 00 00 */	li r27, 0
/* 8022378C 002206CC  48 00 00 44 */	b lbl_802237D0
lbl_80223790:
/* 80223790 002206D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80223794 002206D4  80 81 00 40 */	lwz r4, 0x40(r1)
/* 80223798 002206D8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8022379C 002206DC  7D 89 03 A6 */	mtctr r12
/* 802237A0 002206E0  4E 80 04 21 */	bctrl 
/* 802237A4 002206E4  93 41 00 30 */	stw r26, 0x30(r1)
/* 802237A8 002206E8  38 81 00 30 */	addi r4, r1, 0x30
/* 802237AC 002206EC  93 61 00 34 */	stw r27, 0x34(r1)
/* 802237B0 002206F0  93 81 00 30 */	stw r28, 0x30(r1)
/* 802237B4 002206F4  93 E1 00 38 */	stw r31, 0x38(r1)
/* 802237B8 002206F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802237BC 002206FC  81 8C 01 A4 */	lwz r12, 0x1a4(r12)
/* 802237C0 00220700  7D 89 03 A6 */	mtctr r12
/* 802237C4 00220704  4E 80 04 21 */	bctrl 
/* 802237C8 00220708  38 61 00 3C */	addi r3, r1, 0x3c
/* 802237CC 0022070C  4B EE A7 25 */	bl "next__37GeneralMgrIterator<Q24Game9EnemyBase>Fv"
lbl_802237D0:
/* 802237D0 00220710  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802237D4 00220714  28 03 00 00 */	cmplwi r3, 0
/* 802237D8 00220718  40 82 FF B8 */	bne lbl_80223790
lbl_802237DC:
/* 802237DC 0022071C  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802237E0 00220720  38 81 00 08 */	addi r4, r1, 8
/* 802237E4 00220724  48 1D BF 05 */	bl check_ZukanEnemyRequest__Q26Screen9Game2DMgrFRi
/* 802237E8 00220728  2C 03 00 01 */	cmpwi r3, 1
/* 802237EC 0022072C  41 82 00 0C */	beq lbl_802237F8
/* 802237F0 00220730  40 80 00 30 */	bge lbl_80223820
/* 802237F4 00220734  48 00 00 2C */	b lbl_80223820
lbl_802237F8:
/* 802237F8 00220738  80 81 00 08 */	lwz r4, 8(r1)
/* 802237FC 0022073C  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80223800 00220740  7C 04 00 00 */	cmpw r4, r0
/* 80223804 00220744  41 82 00 1C */	beq lbl_80223820
/* 80223808 00220748  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 8022380C 0022074C  A0 03 00 34 */	lhz r0, 0x34(r3)
/* 80223810 00220750  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80223814 00220754  40 82 00 0C */	bne lbl_80223820
/* 80223818 00220758  7F A3 EB 78 */	mr r3, r29
/* 8022381C 0022075C  48 00 00 71 */	bl createEnemy__Q34Game10SingleGame10ZukanStateFi
lbl_80223820:
/* 80223820 00220760  7F C3 F3 78 */	mr r3, r30
/* 80223824 00220764  4B F2 80 59 */	bl doUpdate__Q24Game15BaseGameSectionFv
/* 80223828 00220768  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 8022382C 0022076C  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80223830 00220770  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 80223834 00220774  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80223838 00220778  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 8022383C 0022077C  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80223840 00220780  E3 81 00 F8 */	psq_l f28, 248(r1), 0, qr0
/* 80223844 00220784  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 80223848 00220788  E3 61 00 E8 */	psq_l f27, 232(r1), 0, qr0
/* 8022384C 0022078C  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 80223850 00220790  E3 41 00 D8 */	psq_l f26, 216(r1), 0, qr0
/* 80223854 00220794  CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 80223858 00220798  E3 21 00 C8 */	psq_l f25, 200(r1), 0, qr0
/* 8022385C 0022079C  CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 80223860 002207A0  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 80223864 002207A4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80223868 002207A8  7C 08 03 A6 */	mtlr r0
/* 8022386C 002207AC  38 21 01 30 */	addi r1, r1, 0x130
/* 80223870 002207B0  4E 80 00 20 */	blr 

.global startWipe__Q34Game10SingleGame10ZukanStateFf
startWipe__Q34Game10SingleGame10ZukanStateFf:
/* 80223874 002207B4  38 00 00 00 */	li r0, 0
/* 80223878 002207B8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022387C 002207BC  90 03 00 FC */	stw r0, 0xfc(r3)
/* 80223880 002207C0  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 80223884 002207C4  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 80223888 002207C8  4E 80 00 20 */	blr 

.global createEnemy__Q34Game10SingleGame10ZukanStateFi
createEnemy__Q34Game10SingleGame10ZukanStateFi:
/* 8022388C 002207CC  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80223890 002207D0  2C 00 00 03 */	cmpwi r0, 3
/* 80223894 002207D4  4C 82 00 20 */	bnelr 
/* 80223898 002207D8  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 8022389C 002207DC  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 802238A0 002207E0  2C 00 00 04 */	cmpwi r0, 4
/* 802238A4 002207E4  41 82 00 0C */	beq lbl_802238B0
/* 802238A8 002207E8  38 00 00 04 */	li r0, 4
/* 802238AC 002207EC  90 03 00 9C */	stw r0, 0x9c(r3)
lbl_802238B0:
/* 802238B0 002207F0  38 00 00 00 */	li r0, 0
/* 802238B4 002207F4  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802238B8 002207F8  90 03 00 FC */	stw r0, 0xfc(r3)
/* 802238BC 002207FC  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 802238C0 00220800  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 802238C4 00220804  4E 80 00 20 */	blr 

.global execChangePellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
execChangePellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 802238C8 00220808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802238CC 0022080C  7C 08 02 A6 */	mflr r0
/* 802238D0 00220810  90 01 00 14 */	stw r0, 0x14(r1)
/* 802238D4 00220814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802238D8 00220818  7C 9F 23 78 */	mr r31, r4
/* 802238DC 0022081C  93 C1 00 08 */	stw r30, 8(r1)
/* 802238E0 00220820  7C 7E 1B 78 */	mr r30, r3
/* 802238E4 00220824  80 03 00 FC */	lwz r0, 0xfc(r3)
/* 802238E8 00220828  2C 00 00 01 */	cmpwi r0, 1
/* 802238EC 0022082C  41 82 00 40 */	beq lbl_8022392C
/* 802238F0 00220830  40 80 00 10 */	bge lbl_80223900
/* 802238F4 00220834  2C 00 00 00 */	cmpwi r0, 0
/* 802238F8 00220838  40 80 00 14 */	bge lbl_8022390C
/* 802238FC 0022083C  48 00 00 78 */	b lbl_80223974
lbl_80223900:
/* 80223900 00220840  2C 00 00 03 */	cmpwi r0, 3
/* 80223904 00220844  40 80 00 70 */	bge lbl_80223974
/* 80223908 00220848  48 00 00 40 */	b lbl_80223948
lbl_8022390C:
/* 8022390C 0022084C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80223910 00220850  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80223914 00220854  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80223918 00220858  40 81 00 5C */	ble lbl_80223974
/* 8022391C 0022085C  D0 3E 00 F4 */	stfs f1, 0xf4(r30)
/* 80223920 00220860  38 00 00 01 */	li r0, 1
/* 80223924 00220864  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 80223928 00220868  48 00 00 4C */	b lbl_80223974
lbl_8022392C:
/* 8022392C 0022086C  80 9E 00 A8 */	lwz r4, 0xa8(r30)
/* 80223930 00220870  48 00 1C 95 */	bl createPellet__Q34Game10SingleGame10ZukanStateFi
/* 80223934 00220874  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223938 00220878  38 00 00 02 */	li r0, 2
/* 8022393C 0022087C  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 80223940 00220880  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 80223944 00220884  48 00 00 30 */	b lbl_80223974
lbl_80223948:
/* 80223948 00220888  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8022394C 0022088C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80223950 00220890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80223954 00220894  40 81 00 20 */	ble lbl_80223974
/* 80223958 00220898  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 8022395C 0022089C  2C 00 00 06 */	cmpwi r0, 6
/* 80223960 002208A0  41 82 00 0C */	beq lbl_8022396C
/* 80223964 002208A4  38 00 00 06 */	li r0, 6
/* 80223968 002208A8  90 1E 00 9C */	stw r0, 0x9c(r30)
lbl_8022396C:
/* 8022396C 002208AC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80223970 002208B0  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
lbl_80223974:
/* 80223974 002208B4  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 80223978 002208B8  28 00 00 00 */	cmplwi r0, 0
/* 8022397C 002208BC  41 82 00 20 */	beq lbl_8022399C
/* 80223980 002208C0  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80223984 002208C4  7F E3 FB 78 */	mr r3, r31
/* 80223988 002208C8  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8022398C 002208CC  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80223990 002208D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80223994 002208D4  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 80223998 002208D8  4B F2 7E E5 */	bl doUpdate__Q24Game15BaseGameSectionFv
lbl_8022399C:
/* 8022399C 002208DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802239A0 002208E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802239A4 002208E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802239A8 002208E8  7C 08 03 A6 */	mtlr r0
/* 802239AC 002208EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802239B0 002208F0  4E 80 00 20 */	blr 

.global execPellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
execPellet__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 802239B4 002208F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802239B8 002208F8  7C 08 02 A6 */	mflr r0
/* 802239BC 002208FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802239C0 00220900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802239C4 00220904  7C 9F 23 78 */	mr r31, r4
/* 802239C8 00220908  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802239CC 0022090C  7C 7E 1B 78 */	mr r30, r3
/* 802239D0 00220910  48 00 00 99 */	bl getMaxPelletID__Q34Game10SingleGame10ZukanStateFv
/* 802239D4 00220914  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802239D8 00220918  38 81 00 08 */	addi r4, r1, 8
/* 802239DC 0022091C  48 1D BC 89 */	bl check_ZukanItemRequest__Q26Screen9Game2DMgrFRi
/* 802239E0 00220920  2C 03 00 01 */	cmpwi r3, 1
/* 802239E4 00220924  41 82 00 0C */	beq lbl_802239F0
/* 802239E8 00220928  40 80 00 60 */	bge lbl_80223A48
/* 802239EC 0022092C  48 00 00 5C */	b lbl_80223A48
lbl_802239F0:
/* 802239F0 00220930  80 81 00 08 */	lwz r4, 8(r1)
/* 802239F4 00220934  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 802239F8 00220938  7C 04 00 00 */	cmpw r4, r0
/* 802239FC 0022093C  41 82 00 4C */	beq lbl_80223A48
/* 80223A00 00220940  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80223A04 00220944  A0 03 00 34 */	lhz r0, 0x34(r3)
/* 80223A08 00220948  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80223A0C 0022094C  40 82 00 3C */	bne lbl_80223A48
/* 80223A10 00220950  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 80223A14 00220954  2C 00 00 06 */	cmpwi r0, 6
/* 80223A18 00220958  40 82 00 30 */	bne lbl_80223A48
/* 80223A1C 0022095C  90 9E 00 A8 */	stw r4, 0xa8(r30)
/* 80223A20 00220960  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 80223A24 00220964  2C 00 00 07 */	cmpwi r0, 7
/* 80223A28 00220968  41 82 00 0C */	beq lbl_80223A34
/* 80223A2C 0022096C  38 00 00 07 */	li r0, 7
/* 80223A30 00220970  90 1E 00 9C */	stw r0, 0x9c(r30)
lbl_80223A34:
/* 80223A34 00220974  38 00 00 00 */	li r0, 0
/* 80223A38 00220978  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80223A3C 0022097C  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 80223A40 00220980  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 80223A44 00220984  D0 1E 00 F8 */	stfs f0, 0xf8(r30)
lbl_80223A48:
/* 80223A48 00220988  7F E3 FB 78 */	mr r3, r31
/* 80223A4C 0022098C  4B F2 7E 31 */	bl doUpdate__Q24Game15BaseGameSectionFv
/* 80223A50 00220990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223A54 00220994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223A58 00220998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223A5C 0022099C  7C 08 03 A6 */	mtlr r0
/* 80223A60 002209A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80223A64 002209A4  4E 80 00 20 */	blr 

.global getMaxPelletID__Q34Game10SingleGame10ZukanStateFv
getMaxPelletID__Q34Game10SingleGame10ZukanStateFv:
/* 80223A68 002209A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223A6C 002209AC  7C 08 02 A6 */	mflr r0
/* 80223A70 002209B0  38 60 00 03 */	li r3, 3
/* 80223A74 002209B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223A78 002209B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223A7C 002209BC  48 00 43 51 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223A80 002209C0  7C 7F 1B 78 */	mr r31, r3
/* 80223A84 002209C4  38 60 00 04 */	li r3, 4
/* 80223A88 002209C8  48 00 43 45 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223A8C 002209CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223A90 002209D0  7C 7F 1A 14 */	add r3, r31, r3
/* 80223A94 002209D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223A98 002209D8  7C 08 03 A6 */	mtlr r0
/* 80223A9C 002209DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80223AA0 002209E0  4E 80 00 20 */	blr 

.global getCurrentPelletConfig__Q34Game10SingleGame10ZukanStateFi
getCurrentPelletConfig__Q34Game10SingleGame10ZukanStateFi:
/* 80223AA4 002209E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223AA8 002209E8  7C 08 02 A6 */	mflr r0
/* 80223AAC 002209EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80223AB0 002209F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223AB4 002209F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80223AB8 002209F8  7C 7E 1B 78 */	mr r30, r3
/* 80223ABC 002209FC  38 60 00 03 */	li r3, 3
/* 80223AC0 00220A00  48 00 42 9D */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223AC4 00220A04  7C 60 1B 78 */	mr r0, r3
/* 80223AC8 00220A08  38 60 00 04 */	li r3, 4
/* 80223ACC 00220A0C  7C 1F 03 78 */	mr r31, r0
/* 80223AD0 00220A10  48 00 42 8D */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223AD4 00220A14  7F C4 F3 78 */	mr r4, r30
/* 80223AD8 00220A18  7C 7E 1B 78 */	mr r30, r3
/* 80223ADC 00220A1C  38 61 00 08 */	addi r3, r1, 8
/* 80223AE0 00220A20  48 00 00 41 */	bl convertPelletID__Q34Game10SingleGame10ZukanStateFRii
/* 80223AE4 00220A24  2C 03 00 03 */	cmpwi r3, 3
/* 80223AE8 00220A28  40 82 00 14 */	bne lbl_80223AFC
/* 80223AEC 00220A2C  80 81 00 08 */	lwz r4, 8(r1)
/* 80223AF0 00220A30  7F E3 FB 78 */	mr r3, r31
/* 80223AF4 00220A34  4B F9 09 B5 */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 80223AF8 00220A38  48 00 00 10 */	b lbl_80223B08
lbl_80223AFC:
/* 80223AFC 00220A3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80223B00 00220A40  7F C3 F3 78 */	mr r3, r30
/* 80223B04 00220A44  4B F9 09 A5 */	bl getPelletConfig__Q24Game16PelletConfigListFi
lbl_80223B08:
/* 80223B08 00220A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223B0C 00220A4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223B10 00220A50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223B14 00220A54  7C 08 03 A6 */	mtlr r0
/* 80223B18 00220A58  38 21 00 20 */	addi r1, r1, 0x20
/* 80223B1C 00220A5C  4E 80 00 20 */	blr 

.global convertPelletID__Q34Game10SingleGame10ZukanStateFRii
convertPelletID__Q34Game10SingleGame10ZukanStateFRii:
/* 80223B20 00220A60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80223B24 00220A64  7C 08 02 A6 */	mflr r0
/* 80223B28 00220A68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80223B2C 00220A6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80223B30 00220A70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80223B34 00220A74  7C 9E 23 78 */	mr r30, r4
/* 80223B38 00220A78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80223B3C 00220A7C  7C 7D 1B 78 */	mr r29, r3
/* 80223B40 00220A80  38 60 00 03 */	li r3, 3
/* 80223B44 00220A84  48 00 42 19 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223B48 00220A88  38 60 00 04 */	li r3, 4
/* 80223B4C 00220A8C  48 00 42 11 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223B50 00220A90  38 60 00 03 */	li r3, 3
/* 80223B54 00220A94  48 00 42 79 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223B58 00220A98  7C 7F 1B 78 */	mr r31, r3
/* 80223B5C 00220A9C  38 60 00 04 */	li r3, 4
/* 80223B60 00220AA0  48 00 42 6D */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80223B64 00220AA4  7C 1E F8 00 */	cmpw r30, r31
/* 80223B68 00220AA8  40 80 00 10 */	bge lbl_80223B78
/* 80223B6C 00220AAC  93 DD 00 00 */	stw r30, 0(r29)
/* 80223B70 00220AB0  38 60 00 03 */	li r3, 3
/* 80223B74 00220AB4  48 00 00 10 */	b lbl_80223B84
lbl_80223B78:
/* 80223B78 00220AB8  7C 1F F0 50 */	subf r0, r31, r30
/* 80223B7C 00220ABC  38 60 00 04 */	li r3, 4
/* 80223B80 00220AC0  90 1D 00 00 */	stw r0, 0(r29)
lbl_80223B84:
/* 80223B84 00220AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80223B88 00220AC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80223B8C 00220ACC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80223B90 00220AD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80223B94 00220AD4  7C 08 03 A6 */	mtlr r0
/* 80223B98 00220AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80223B9C 00220ADC  4E 80 00 20 */	blr 

.global draw__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
draw__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics:
/* 80223BA0 00220AE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80223BA4 00220AE4  7C 08 02 A6 */	mflr r0
/* 80223BA8 00220AE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80223BAC 00220AEC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80223BB0 00220AF0  7C BF 2B 78 */	mr r31, r5
/* 80223BB4 00220AF4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80223BB8 00220AF8  7C 9E 23 78 */	mr r30, r4
/* 80223BBC 00220AFC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80223BC0 00220B00  7C 7D 1B 78 */	mr r29, r3
/* 80223BC4 00220B04  88 03 00 88 */	lbz r0, 0x88(r3)
/* 80223BC8 00220B08  28 00 00 00 */	cmplwi r0, 0
/* 80223BCC 00220B0C  41 82 01 98 */	beq lbl_80223D64
/* 80223BD0 00220B10  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80223BD4 00220B14  48 1F 71 E1 */	bl update__6CameraFv
/* 80223BD8 00220B18  7F E3 FB 78 */	mr r3, r31
/* 80223BDC 00220B1C  48 20 38 8D */	bl setupJ2DOrthoGraphDefault__8GraphicsFv
/* 80223BE0 00220B20  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80223BE4 00220B24  81 9F 00 BC */	lwz r12, 0xbc(r31)
/* 80223BE8 00220B28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80223BEC 00220B2C  7D 89 03 A6 */	mtctr r12
/* 80223BF0 00220B30  4E 80 04 21 */	bctrl 
/* 80223BF4 00220B34  80 FD 01 00 */	lwz r7, 0x100(r29)
/* 80223BF8 00220B38  39 40 FF FF */	li r10, -1
/* 80223BFC 00220B3C  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80223C00 00220B40  38 61 00 3C */	addi r3, r1, 0x3c
/* 80223C04 00220B44  91 41 00 08 */	stw r10, 8(r1)
/* 80223C08 00220B48  38 81 00 34 */	addi r4, r1, 0x34
/* 80223C0C 00220B4C  89 67 00 73 */	lbz r11, 0x73(r7)
/* 80223C10 00220B50  FC 40 08 90 */	fmr f2, f1
/* 80223C14 00220B54  89 27 00 72 */	lbz r9, 0x72(r7)
/* 80223C18 00220B58  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80223C1C 00220B5C  89 07 00 71 */	lbz r8, 0x71(r7)
/* 80223C20 00220B60  38 C1 00 24 */	addi r6, r1, 0x24
/* 80223C24 00220B64  88 07 00 70 */	lbz r0, 0x70(r7)
/* 80223C28 00220B68  99 01 00 09 */	stb r8, 9(r1)
/* 80223C2C 00220B6C  98 01 00 08 */	stb r0, 8(r1)
/* 80223C30 00220B70  99 21 00 0A */	stb r9, 0xa(r1)
/* 80223C34 00220B74  99 61 00 0B */	stb r11, 0xb(r1)
/* 80223C38 00220B78  81 21 00 08 */	lwz r9, 8(r1)
/* 80223C3C 00220B7C  91 41 00 0C */	stw r10, 0xc(r1)
/* 80223C40 00220B80  91 21 00 24 */	stw r9, 0x24(r1)
/* 80223C44 00220B84  80 FD 01 00 */	lwz r7, 0x100(r29)
/* 80223C48 00220B88  91 41 00 10 */	stw r10, 0x10(r1)
/* 80223C4C 00220B8C  89 87 00 73 */	lbz r12, 0x73(r7)
/* 80223C50 00220B90  89 67 00 72 */	lbz r11, 0x72(r7)
/* 80223C54 00220B94  89 07 00 71 */	lbz r8, 0x71(r7)
/* 80223C58 00220B98  88 07 00 70 */	lbz r0, 0x70(r7)
/* 80223C5C 00220B9C  99 01 00 0D */	stb r8, 0xd(r1)
/* 80223C60 00220BA0  98 01 00 0C */	stb r0, 0xc(r1)
/* 80223C64 00220BA4  99 61 00 0E */	stb r11, 0xe(r1)
/* 80223C68 00220BA8  99 81 00 0F */	stb r12, 0xf(r1)
/* 80223C6C 00220BAC  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80223C70 00220BB0  91 41 00 14 */	stw r10, 0x14(r1)
/* 80223C74 00220BB4  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80223C78 00220BB8  80 FD 01 00 */	lwz r7, 0x100(r29)
/* 80223C7C 00220BBC  91 21 00 20 */	stw r9, 0x20(r1)
/* 80223C80 00220BC0  89 67 00 6F */	lbz r11, 0x6f(r7)
/* 80223C84 00220BC4  89 47 00 6E */	lbz r10, 0x6e(r7)
/* 80223C88 00220BC8  89 27 00 6D */	lbz r9, 0x6d(r7)
/* 80223C8C 00220BCC  88 07 00 6C */	lbz r0, 0x6c(r7)
/* 80223C90 00220BD0  99 21 00 11 */	stb r9, 0x11(r1)
/* 80223C94 00220BD4  98 01 00 10 */	stb r0, 0x10(r1)
/* 80223C98 00220BD8  99 41 00 12 */	stb r10, 0x12(r1)
/* 80223C9C 00220BDC  99 61 00 13 */	stb r11, 0x13(r1)
/* 80223CA0 00220BE0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80223CA4 00220BE4  91 01 00 28 */	stw r8, 0x28(r1)
/* 80223CA8 00220BE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80223CAC 00220BEC  80 FD 01 00 */	lwz r7, 0x100(r29)
/* 80223CB0 00220BF0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80223CB4 00220BF4  89 47 00 6F */	lbz r10, 0x6f(r7)
/* 80223CB8 00220BF8  89 27 00 6E */	lbz r9, 0x6e(r7)
/* 80223CBC 00220BFC  89 07 00 6D */	lbz r8, 0x6d(r7)
/* 80223CC0 00220C00  88 07 00 6C */	lbz r0, 0x6c(r7)
/* 80223CC4 00220C04  99 01 00 15 */	stb r8, 0x15(r1)
/* 80223CC8 00220C08  98 01 00 14 */	stb r0, 0x14(r1)
/* 80223CCC 00220C0C  99 21 00 16 */	stb r9, 0x16(r1)
/* 80223CD0 00220C10  99 41 00 17 */	stb r10, 0x17(r1)
/* 80223CD4 00220C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223CD8 00220C18  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80223CDC 00220C1C  C0 BD 00 BC */	lfs f5, 0xbc(r29)
/* 80223CE0 00220C20  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 80223CE4 00220C24  C0 9D 00 C0 */	lfs f4, 0xc0(r29)
/* 80223CE8 00220C28  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80223CEC 00220C2C  EC 65 18 28 */	fsubs f3, f5, f3
/* 80223CF0 00220C30  90 01 00 38 */	stw r0, 0x38(r1)
/* 80223CF4 00220C34  EC 84 00 28 */	fsubs f4, f4, f0
/* 80223CF8 00220C38  4B E1 1E 15 */	bl J2DFillBox__FffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80223CFC 00220C3C  7F C3 F3 78 */	mr r3, r30
/* 80223D00 00220C40  7F E4 FB 78 */	mr r4, r31
/* 80223D04 00220C44  4B F2 B2 41 */	bl draw3D__Q24Game15BaseGameSectionFR8Graphics
/* 80223D08 00220C48  7F A3 EB 78 */	mr r3, r29
/* 80223D0C 00220C4C  7F C4 F3 78 */	mr r4, r30
/* 80223D10 00220C50  7F E5 FB 78 */	mr r5, r31
/* 80223D14 00220C54  48 00 06 79 */	bl drawLightEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
/* 80223D18 00220C58  80 7D 00 CC */	lwz r3, 0xcc(r29)
/* 80223D1C 00220C5C  38 80 00 00 */	li r4, 0
/* 80223D20 00220C60  38 A0 00 00 */	li r5, 0
/* 80223D24 00220C64  38 E0 00 00 */	li r7, 0
/* 80223D28 00220C68  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 80223D2C 00220C6C  39 00 00 00 */	li r8, 0
/* 80223D30 00220C70  88 C6 00 00 */	lbz r6, 0(r6)
/* 80223D34 00220C74  4B E0 F9 4D */	bl capture__10JUTTextureFii9_GXTexFmtbUc
/* 80223D38 00220C78  7F A3 EB 78 */	mr r3, r29
/* 80223D3C 00220C7C  7F C4 F3 78 */	mr r4, r30
/* 80223D40 00220C80  7F E5 FB 78 */	mr r5, r31
/* 80223D44 00220C84  48 00 00 D1 */	bl drawGradationEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
/* 80223D48 00220C88  80 7D 00 CC */	lwz r3, 0xcc(r29)
/* 80223D4C 00220C8C  38 80 00 00 */	li r4, 0
/* 80223D50 00220C90  38 A0 00 00 */	li r5, 0
/* 80223D54 00220C94  38 C0 00 04 */	li r6, 4
/* 80223D58 00220C98  38 E0 00 00 */	li r7, 0
/* 80223D5C 00220C9C  39 00 00 00 */	li r8, 0
/* 80223D60 00220CA0  4B E0 F9 21 */	bl capture__10JUTTextureFii9_GXTexFmtbUc
lbl_80223D64:
/* 80223D64 00220CA4  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80223D68 00220CA8  81 9F 00 BC */	lwz r12, 0xbc(r31)
/* 80223D6C 00220CAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80223D70 00220CB0  7D 89 03 A6 */	mtctr r12
/* 80223D74 00220CB4  4E 80 04 21 */	bctrl 
/* 80223D78 00220CB8  38 60 00 00 */	li r3, 0
/* 80223D7C 00220CBC  38 00 00 FF */	li r0, 0xff
/* 80223D80 00220CC0  98 61 00 18 */	stb r3, 0x18(r1)
/* 80223D84 00220CC4  98 61 00 19 */	stb r3, 0x19(r1)
/* 80223D88 00220CC8  98 61 00 1A */	stb r3, 0x1a(r1)
/* 80223D8C 00220CCC  98 01 00 1B */	stb r0, 0x1b(r1)
/* 80223D90 00220CD0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80223D94 00220CD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80223D98 00220CD8  48 1F F4 8D */	bl getRenderModeObj__6SystemFv
/* 80223D9C 00220CDC  A3 A3 00 06 */	lhz r29, 6(r3)
/* 80223DA0 00220CE0  48 1F F4 85 */	bl getRenderModeObj__6SystemFv
/* 80223DA4 00220CE4  A0 83 00 04 */	lhz r4, 4(r3)
/* 80223DA8 00220CE8  3C 00 43 30 */	lis r0, 0x4330
/* 80223DAC 00220CEC  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 80223DB0 00220CF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80223DB4 00220CF4  90 81 00 44 */	stw r4, 0x44(r1)
/* 80223DB8 00220CF8  C8 82 BE 88 */	lfd f4, lbl_8051A1E8@sda21(r2)
/* 80223DBC 00220CFC  FC 40 08 90 */	fmr f2, f1
/* 80223DC0 00220D00  90 01 00 40 */	stw r0, 0x40(r1)
/* 80223DC4 00220D04  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80223DC8 00220D08  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 80223DCC 00220D0C  EC 60 20 28 */	fsubs f3, f0, f4
/* 80223DD0 00220D10  90 01 00 48 */	stw r0, 0x48(r1)
/* 80223DD4 00220D14  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80223DD8 00220D18  EC 80 20 28 */	fsubs f4, f0, f4
/* 80223DDC 00220D1C  4B E1 1C 1D */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 80223DE0 00220D20  3C 60 80 51 */	lis r3, j3dSys@ha
/* 80223DE4 00220D24  38 63 F2 30 */	addi r3, r3, j3dSys@l
/* 80223DE8 00220D28  4B E3 9E 25 */	bl drawInit__6J3DSysFv
/* 80223DEC 00220D2C  7F C3 F3 78 */	mr r3, r30
/* 80223DF0 00220D30  7F E4 FB 78 */	mr r4, r31
/* 80223DF4 00220D34  4B F2 B3 E9 */	bl draw2D__Q24Game15BaseGameSectionFR8Graphics
/* 80223DF8 00220D38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80223DFC 00220D3C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80223E00 00220D40  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80223E04 00220D44  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80223E08 00220D48  7C 08 03 A6 */	mtlr r0
/* 80223E0C 00220D4C  38 21 00 60 */	addi r1, r1, 0x60
/* 80223E10 00220D50  4E 80 00 20 */	blr 

.global drawGradationEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
drawGradationEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics:
/* 80223E14 00220D54  94 21 FC 70 */	stwu r1, -0x390(r1)
/* 80223E18 00220D58  7C 08 02 A6 */	mflr r0
/* 80223E1C 00220D5C  90 01 03 94 */	stw r0, 0x394(r1)
/* 80223E20 00220D60  DB E1 03 80 */	stfd f31, 0x380(r1)
/* 80223E24 00220D64  F3 E1 03 88 */	psq_st f31, 904(r1), 0, qr0
/* 80223E28 00220D68  DB C1 03 70 */	stfd f30, 0x370(r1)
/* 80223E2C 00220D6C  F3 C1 03 78 */	psq_st f30, 888(r1), 0, qr0
/* 80223E30 00220D70  BE 41 03 38 */	stmw r18, 0x338(r1)
/* 80223E34 00220D74  7C 7C 1B 78 */	mr r28, r3
/* 80223E38 00220D78  80 63 00 98 */	lwz r3, 0x98(r3)
/* 80223E3C 00220D7C  C0 02 BE 58 */	lfs f0, lbl_8051A1B8@sda21(r2)
/* 80223E40 00220D80  7C BD 2B 78 */	mr r29, r5
/* 80223E44 00220D84  C0 23 02 94 */	lfs f1, 0x294(r3)
/* 80223E48 00220D88  FC 20 0A 10 */	fabs f1, f1
/* 80223E4C 00220D8C  FC 20 08 18 */	frsp f1, f1
/* 80223E50 00220D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80223E54 00220D94  40 81 00 08 */	ble lbl_80223E5C
/* 80223E58 00220D98  FC 20 00 90 */	fmr f1, f0
lbl_80223E5C:
/* 80223E5C 00220D9C  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80223E60 00220DA0  FF E0 08 90 */	fmr f31, f1
/* 80223E64 00220DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80223E68 00220DA8  40 81 00 08 */	ble lbl_80223E70
/* 80223E6C 00220DAC  FF E0 00 90 */	fmr f31, f0
lbl_80223E70:
/* 80223E70 00220DB0  83 FC 00 B0 */	lwz r31, 0xb0(r28)
/* 80223E74 00220DB4  7F E3 FB 78 */	mr r3, r31
/* 80223E78 00220DB8  4B E0 F5 7D */	bl init__10JUTTextureFv
/* 80223E7C 00220DBC  4B EC 3A E5 */	bl GXInvalidateTexAll
/* 80223E80 00220DC0  7F E3 FB 78 */	mr r3, r31
/* 80223E84 00220DC4  38 80 00 00 */	li r4, 0
/* 80223E88 00220DC8  38 A0 00 00 */	li r5, 0
/* 80223E8C 00220DCC  38 C0 00 04 */	li r6, 4
/* 80223E90 00220DD0  38 E0 00 01 */	li r7, 1
/* 80223E94 00220DD4  39 00 00 00 */	li r8, 0
/* 80223E98 00220DD8  4B E0 F7 E9 */	bl capture__10JUTTextureFii9_GXTexFmtbUc
/* 80223E9C 00220DDC  7F E3 FB 78 */	mr r3, r31
/* 80223EA0 00220DE0  38 80 00 00 */	li r4, 0
/* 80223EA4 00220DE4  38 A0 00 00 */	li r5, 0
/* 80223EA8 00220DE8  38 C0 00 04 */	li r6, 4
/* 80223EAC 00220DEC  38 E0 00 01 */	li r7, 1
/* 80223EB0 00220DF0  39 00 00 00 */	li r8, 0
/* 80223EB4 00220DF4  4B E0 F7 CD */	bl capture__10JUTTextureFii9_GXTexFmtbUc
/* 80223EB8 00220DF8  C0 02 BE 7C */	lfs f0, lbl_8051A1DC@sda21(r2)
/* 80223EBC 00220DFC  3B C0 00 00 */	li r30, 0
/* 80223EC0 00220E00  FF C0 00 50 */	fneg f30, f0
lbl_80223EC4:
/* 80223EC4 00220E04  7F E4 FB 78 */	mr r4, r31
/* 80223EC8 00220E08  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80223ECC 00220E0C  4B E1 66 45 */	bl __ct__10J2DPictureFP10JUTTexture
/* 80223ED0 00220E10  38 80 00 FF */	li r4, 0xff
/* 80223ED4 00220E14  38 00 00 7F */	li r0, 0x7f
/* 80223ED8 00220E18  98 81 00 58 */	stb r4, 0x58(r1)
/* 80223EDC 00220E1C  38 60 00 00 */	li r3, 0
/* 80223EE0 00220E20  98 81 00 59 */	stb r4, 0x59(r1)
/* 80223EE4 00220E24  98 81 00 5A */	stb r4, 0x5a(r1)
/* 80223EE8 00220E28  98 01 00 5B */	stb r0, 0x5b(r1)
/* 80223EEC 00220E2C  83 01 00 58 */	lwz r24, 0x58(r1)
/* 80223EF0 00220E30  93 01 00 54 */	stw r24, 0x54(r1)
/* 80223EF4 00220E34  93 01 00 50 */	stw r24, 0x50(r1)
/* 80223EF8 00220E38  88 C1 00 54 */	lbz r6, 0x54(r1)
/* 80223EFC 00220E3C  93 01 00 4C */	stw r24, 0x4c(r1)
/* 80223F00 00220E40  89 41 00 50 */	lbz r10, 0x50(r1)
/* 80223F04 00220E44  93 01 00 48 */	stw r24, 0x48(r1)
/* 80223F08 00220E48  8A 61 00 4C */	lbz r19, 0x4c(r1)
/* 80223F0C 00220E4C  8A E1 00 48 */	lbz r23, 0x48(r1)
/* 80223F10 00220E50  8A C1 00 49 */	lbz r22, 0x49(r1)
/* 80223F14 00220E54  8A A1 00 4A */	lbz r21, 0x4a(r1)
/* 80223F18 00220E58  8A 81 00 4B */	lbz r20, 0x4b(r1)
/* 80223F1C 00220E5C  8A 41 00 4D */	lbz r18, 0x4d(r1)
/* 80223F20 00220E60  89 81 00 4E */	lbz r12, 0x4e(r1)
/* 80223F24 00220E64  89 61 00 4F */	lbz r11, 0x4f(r1)
/* 80223F28 00220E68  89 21 00 51 */	lbz r9, 0x51(r1)
/* 80223F2C 00220E6C  89 01 00 52 */	lbz r8, 0x52(r1)
/* 80223F30 00220E70  88 E1 00 53 */	lbz r7, 0x53(r1)
/* 80223F34 00220E74  88 A1 00 55 */	lbz r5, 0x55(r1)
/* 80223F38 00220E78  88 81 00 56 */	lbz r4, 0x56(r1)
/* 80223F3C 00220E7C  88 01 00 57 */	lbz r0, 0x57(r1)
/* 80223F40 00220E80  93 01 00 14 */	stw r24, 0x14(r1)
/* 80223F44 00220E84  9A E1 03 18 */	stb r23, 0x318(r1)
/* 80223F48 00220E88  9A C1 03 19 */	stb r22, 0x319(r1)
/* 80223F4C 00220E8C  9A A1 03 1A */	stb r21, 0x31a(r1)
/* 80223F50 00220E90  9A 81 03 1B */	stb r20, 0x31b(r1)
/* 80223F54 00220E94  9A 61 03 1C */	stb r19, 0x31c(r1)
/* 80223F58 00220E98  9A 41 03 1D */	stb r18, 0x31d(r1)
/* 80223F5C 00220E9C  99 81 03 1E */	stb r12, 0x31e(r1)
/* 80223F60 00220EA0  99 61 03 1F */	stb r11, 0x31f(r1)
/* 80223F64 00220EA4  99 41 03 20 */	stb r10, 0x320(r1)
/* 80223F68 00220EA8  99 21 03 21 */	stb r9, 0x321(r1)
/* 80223F6C 00220EAC  99 01 03 22 */	stb r8, 0x322(r1)
/* 80223F70 00220EB0  98 E1 03 23 */	stb r7, 0x323(r1)
/* 80223F74 00220EB4  98 C1 03 24 */	stb r6, 0x324(r1)
/* 80223F78 00220EB8  98 A1 03 25 */	stb r5, 0x325(r1)
/* 80223F7C 00220EBC  98 81 03 26 */	stb r4, 0x326(r1)
/* 80223F80 00220EC0  98 01 03 27 */	stb r0, 0x327(r1)
/* 80223F84 00220EC4  4B EC 51 D5 */	bl GXSetAlphaUpdate
/* 80223F88 00220EC8  C0 22 BE 7C */	lfs f1, lbl_8051A1DC@sda21(r2)
/* 80223F8C 00220ECC  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80223F90 00220ED0  C0 BC 00 BC */	lfs f5, 0xbc(r28)
/* 80223F94 00220ED4  38 80 00 00 */	li r4, 0
/* 80223F98 00220ED8  C0 7C 00 B4 */	lfs f3, 0xb4(r28)
/* 80223F9C 00220EDC  FC 40 08 90 */	fmr f2, f1
/* 80223FA0 00220EE0  C0 9C 00 C0 */	lfs f4, 0xc0(r28)
/* 80223FA4 00220EE4  38 A0 00 00 */	li r5, 0
/* 80223FA8 00220EE8  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 80223FAC 00220EEC  EC 65 18 28 */	fsubs f3, f5, f3
/* 80223FB0 00220EF0  38 C0 00 00 */	li r6, 0
/* 80223FB4 00220EF4  EC 84 00 28 */	fsubs f4, f4, f0
/* 80223FB8 00220EF8  4B E1 7B FD */	bl draw__10J2DPictureFffffbbb
/* 80223FBC 00220EFC  88 81 00 5B */	lbz r4, 0x5b(r1)
/* 80223FC0 00220F00  FC 20 F0 90 */	fmr f1, f30
/* 80223FC4 00220F04  C0 42 BE 7C */	lfs f2, lbl_8051A1DC@sda21(r2)
/* 80223FC8 00220F08  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80223FCC 00220F0C  38 04 FF F0 */	addi r0, r4, -16
/* 80223FD0 00220F10  38 80 00 00 */	li r4, 0
/* 80223FD4 00220F14  98 01 00 5B */	stb r0, 0x5b(r1)
/* 80223FD8 00220F18  38 A0 00 00 */	li r5, 0
/* 80223FDC 00220F1C  38 C0 00 00 */	li r6, 0
/* 80223FE0 00220F20  83 61 00 58 */	lwz r27, 0x58(r1)
/* 80223FE4 00220F24  93 61 00 44 */	stw r27, 0x44(r1)
/* 80223FE8 00220F28  93 61 00 40 */	stw r27, 0x40(r1)
/* 80223FEC 00220F2C  89 21 00 44 */	lbz r9, 0x44(r1)
/* 80223FF0 00220F30  93 61 00 3C */	stw r27, 0x3c(r1)
/* 80223FF4 00220F34  8A 41 00 40 */	lbz r18, 0x40(r1)
/* 80223FF8 00220F38  93 61 00 38 */	stw r27, 0x38(r1)
/* 80223FFC 00220F3C  8A C1 00 3C */	lbz r22, 0x3c(r1)
/* 80224000 00220F40  8B 41 00 38 */	lbz r26, 0x38(r1)
/* 80224004 00220F44  8B 21 00 39 */	lbz r25, 0x39(r1)
/* 80224008 00220F48  8B 01 00 3A */	lbz r24, 0x3a(r1)
/* 8022400C 00220F4C  8A E1 00 3B */	lbz r23, 0x3b(r1)
/* 80224010 00220F50  8A A1 00 3D */	lbz r21, 0x3d(r1)
/* 80224014 00220F54  8A 81 00 3E */	lbz r20, 0x3e(r1)
/* 80224018 00220F58  8A 61 00 3F */	lbz r19, 0x3f(r1)
/* 8022401C 00220F5C  89 81 00 41 */	lbz r12, 0x41(r1)
/* 80224020 00220F60  89 61 00 42 */	lbz r11, 0x42(r1)
/* 80224024 00220F64  89 41 00 43 */	lbz r10, 0x43(r1)
/* 80224028 00220F68  89 01 00 45 */	lbz r8, 0x45(r1)
/* 8022402C 00220F6C  88 E1 00 46 */	lbz r7, 0x46(r1)
/* 80224030 00220F70  88 01 00 47 */	lbz r0, 0x47(r1)
/* 80224034 00220F74  9B 41 03 18 */	stb r26, 0x318(r1)
/* 80224038 00220F78  9B 21 03 19 */	stb r25, 0x319(r1)
/* 8022403C 00220F7C  9B 01 03 1A */	stb r24, 0x31a(r1)
/* 80224040 00220F80  9A E1 03 1B */	stb r23, 0x31b(r1)
/* 80224044 00220F84  9A C1 03 1C */	stb r22, 0x31c(r1)
/* 80224048 00220F88  9A A1 03 1D */	stb r21, 0x31d(r1)
/* 8022404C 00220F8C  9A 81 03 1E */	stb r20, 0x31e(r1)
/* 80224050 00220F90  9A 61 03 1F */	stb r19, 0x31f(r1)
/* 80224054 00220F94  9A 41 03 20 */	stb r18, 0x320(r1)
/* 80224058 00220F98  99 81 03 21 */	stb r12, 0x321(r1)
/* 8022405C 00220F9C  99 61 03 22 */	stb r11, 0x322(r1)
/* 80224060 00220FA0  99 41 03 23 */	stb r10, 0x323(r1)
/* 80224064 00220FA4  99 21 03 24 */	stb r9, 0x324(r1)
/* 80224068 00220FA8  99 01 03 25 */	stb r8, 0x325(r1)
/* 8022406C 00220FAC  98 E1 03 26 */	stb r7, 0x326(r1)
/* 80224070 00220FB0  98 01 03 27 */	stb r0, 0x327(r1)
/* 80224074 00220FB4  C0 BC 00 BC */	lfs f5, 0xbc(r28)
/* 80224078 00220FB8  C0 7C 00 B4 */	lfs f3, 0xb4(r28)
/* 8022407C 00220FBC  C0 9C 00 C0 */	lfs f4, 0xc0(r28)
/* 80224080 00220FC0  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 80224084 00220FC4  EC 65 18 28 */	fsubs f3, f5, f3
/* 80224088 00220FC8  93 61 00 10 */	stw r27, 0x10(r1)
/* 8022408C 00220FCC  EC 84 00 28 */	fsubs f4, f4, f0
/* 80224090 00220FD0  4B E1 7B 25 */	bl draw__10J2DPictureFffffbbb
/* 80224094 00220FD4  88 81 00 5B */	lbz r4, 0x5b(r1)
/* 80224098 00220FD8  FC 40 F0 90 */	fmr f2, f30
/* 8022409C 00220FDC  C0 22 BE 7C */	lfs f1, lbl_8051A1DC@sda21(r2)
/* 802240A0 00220FE0  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 802240A4 00220FE4  38 04 FF F0 */	addi r0, r4, -16
/* 802240A8 00220FE8  38 80 00 00 */	li r4, 0
/* 802240AC 00220FEC  98 01 00 5B */	stb r0, 0x5b(r1)
/* 802240B0 00220FF0  38 A0 00 00 */	li r5, 0
/* 802240B4 00220FF4  38 C0 00 00 */	li r6, 0
/* 802240B8 00220FF8  83 61 00 58 */	lwz r27, 0x58(r1)
/* 802240BC 00220FFC  93 61 00 34 */	stw r27, 0x34(r1)
/* 802240C0 00221000  93 61 00 30 */	stw r27, 0x30(r1)
/* 802240C4 00221004  89 21 00 34 */	lbz r9, 0x34(r1)
/* 802240C8 00221008  93 61 00 2C */	stw r27, 0x2c(r1)
/* 802240CC 0022100C  8A 41 00 30 */	lbz r18, 0x30(r1)
/* 802240D0 00221010  93 61 00 28 */	stw r27, 0x28(r1)
/* 802240D4 00221014  8A C1 00 2C */	lbz r22, 0x2c(r1)
/* 802240D8 00221018  8B 41 00 28 */	lbz r26, 0x28(r1)
/* 802240DC 0022101C  8B 21 00 29 */	lbz r25, 0x29(r1)
/* 802240E0 00221020  8B 01 00 2A */	lbz r24, 0x2a(r1)
/* 802240E4 00221024  8A E1 00 2B */	lbz r23, 0x2b(r1)
/* 802240E8 00221028  8A A1 00 2D */	lbz r21, 0x2d(r1)
/* 802240EC 0022102C  8A 81 00 2E */	lbz r20, 0x2e(r1)
/* 802240F0 00221030  8A 61 00 2F */	lbz r19, 0x2f(r1)
/* 802240F4 00221034  89 81 00 31 */	lbz r12, 0x31(r1)
/* 802240F8 00221038  89 61 00 32 */	lbz r11, 0x32(r1)
/* 802240FC 0022103C  89 41 00 33 */	lbz r10, 0x33(r1)
/* 80224100 00221040  89 01 00 35 */	lbz r8, 0x35(r1)
/* 80224104 00221044  88 E1 00 36 */	lbz r7, 0x36(r1)
/* 80224108 00221048  88 01 00 37 */	lbz r0, 0x37(r1)
/* 8022410C 0022104C  9B 41 03 18 */	stb r26, 0x318(r1)
/* 80224110 00221050  9B 21 03 19 */	stb r25, 0x319(r1)
/* 80224114 00221054  9B 01 03 1A */	stb r24, 0x31a(r1)
/* 80224118 00221058  9A E1 03 1B */	stb r23, 0x31b(r1)
/* 8022411C 0022105C  9A C1 03 1C */	stb r22, 0x31c(r1)
/* 80224120 00221060  9A A1 03 1D */	stb r21, 0x31d(r1)
/* 80224124 00221064  9A 81 03 1E */	stb r20, 0x31e(r1)
/* 80224128 00221068  9A 61 03 1F */	stb r19, 0x31f(r1)
/* 8022412C 0022106C  9A 41 03 20 */	stb r18, 0x320(r1)
/* 80224130 00221070  99 81 03 21 */	stb r12, 0x321(r1)
/* 80224134 00221074  99 61 03 22 */	stb r11, 0x322(r1)
/* 80224138 00221078  99 41 03 23 */	stb r10, 0x323(r1)
/* 8022413C 0022107C  99 21 03 24 */	stb r9, 0x324(r1)
/* 80224140 00221080  99 01 03 25 */	stb r8, 0x325(r1)
/* 80224144 00221084  98 E1 03 26 */	stb r7, 0x326(r1)
/* 80224148 00221088  98 01 03 27 */	stb r0, 0x327(r1)
/* 8022414C 0022108C  C0 BC 00 BC */	lfs f5, 0xbc(r28)
/* 80224150 00221090  C0 7C 00 B4 */	lfs f3, 0xb4(r28)
/* 80224154 00221094  C0 9C 00 C0 */	lfs f4, 0xc0(r28)
/* 80224158 00221098  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 8022415C 0022109C  EC 65 18 28 */	fsubs f3, f5, f3
/* 80224160 002210A0  93 61 00 0C */	stw r27, 0xc(r1)
/* 80224164 002210A4  EC 84 00 28 */	fsubs f4, f4, f0
/* 80224168 002210A8  4B E1 7A 4D */	bl draw__10J2DPictureFffffbbb
/* 8022416C 002210AC  88 81 00 5B */	lbz r4, 0x5b(r1)
/* 80224170 002210B0  FC 20 F0 90 */	fmr f1, f30
/* 80224174 002210B4  FC 40 F0 90 */	fmr f2, f30
/* 80224178 002210B8  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8022417C 002210BC  38 04 FF F0 */	addi r0, r4, -16
/* 80224180 002210C0  38 80 00 00 */	li r4, 0
/* 80224184 002210C4  98 01 00 5B */	stb r0, 0x5b(r1)
/* 80224188 002210C8  38 A0 00 00 */	li r5, 0
/* 8022418C 002210CC  82 41 00 58 */	lwz r18, 0x58(r1)
/* 80224190 002210D0  38 C0 00 00 */	li r6, 0
/* 80224194 002210D4  92 41 00 24 */	stw r18, 0x24(r1)
/* 80224198 002210D8  92 41 00 20 */	stw r18, 0x20(r1)
/* 8022419C 002210DC  89 21 00 24 */	lbz r9, 0x24(r1)
/* 802241A0 002210E0  92 41 00 1C */	stw r18, 0x1c(r1)
/* 802241A4 002210E4  8B 61 00 20 */	lbz r27, 0x20(r1)
/* 802241A8 002210E8  92 41 00 18 */	stw r18, 0x18(r1)
/* 802241AC 002210EC  8A E1 00 1C */	lbz r23, 0x1c(r1)
/* 802241B0 002210F0  8A 61 00 18 */	lbz r19, 0x18(r1)
/* 802241B4 002210F4  8A 81 00 19 */	lbz r20, 0x19(r1)
/* 802241B8 002210F8  8A A1 00 1A */	lbz r21, 0x1a(r1)
/* 802241BC 002210FC  8A C1 00 1B */	lbz r22, 0x1b(r1)
/* 802241C0 00221100  8B 01 00 1D */	lbz r24, 0x1d(r1)
/* 802241C4 00221104  8B 21 00 1E */	lbz r25, 0x1e(r1)
/* 802241C8 00221108  8B 41 00 1F */	lbz r26, 0x1f(r1)
/* 802241CC 0022110C  89 81 00 21 */	lbz r12, 0x21(r1)
/* 802241D0 00221110  89 61 00 22 */	lbz r11, 0x22(r1)
/* 802241D4 00221114  89 41 00 23 */	lbz r10, 0x23(r1)
/* 802241D8 00221118  89 01 00 25 */	lbz r8, 0x25(r1)
/* 802241DC 0022111C  88 E1 00 26 */	lbz r7, 0x26(r1)
/* 802241E0 00221120  88 01 00 27 */	lbz r0, 0x27(r1)
/* 802241E4 00221124  9A 61 03 18 */	stb r19, 0x318(r1)
/* 802241E8 00221128  9A 81 03 19 */	stb r20, 0x319(r1)
/* 802241EC 0022112C  9A A1 03 1A */	stb r21, 0x31a(r1)
/* 802241F0 00221130  9A C1 03 1B */	stb r22, 0x31b(r1)
/* 802241F4 00221134  9A E1 03 1C */	stb r23, 0x31c(r1)
/* 802241F8 00221138  9B 01 03 1D */	stb r24, 0x31d(r1)
/* 802241FC 0022113C  9B 21 03 1E */	stb r25, 0x31e(r1)
/* 80224200 00221140  9B 41 03 1F */	stb r26, 0x31f(r1)
/* 80224204 00221144  9B 61 03 20 */	stb r27, 0x320(r1)
/* 80224208 00221148  99 81 03 21 */	stb r12, 0x321(r1)
/* 8022420C 0022114C  99 61 03 22 */	stb r11, 0x322(r1)
/* 80224210 00221150  99 41 03 23 */	stb r10, 0x323(r1)
/* 80224214 00221154  99 21 03 24 */	stb r9, 0x324(r1)
/* 80224218 00221158  99 01 03 25 */	stb r8, 0x325(r1)
/* 8022421C 0022115C  98 E1 03 26 */	stb r7, 0x326(r1)
/* 80224220 00221160  98 01 03 27 */	stb r0, 0x327(r1)
/* 80224224 00221164  C0 BC 00 BC */	lfs f5, 0xbc(r28)
/* 80224228 00221168  C0 7C 00 B4 */	lfs f3, 0xb4(r28)
/* 8022422C 0022116C  C0 9C 00 C0 */	lfs f4, 0xc0(r28)
/* 80224230 00221170  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 80224234 00221174  EC 65 18 28 */	fsubs f3, f5, f3
/* 80224238 00221178  92 41 00 08 */	stw r18, 8(r1)
/* 8022423C 0022117C  EC 84 00 28 */	fsubs f4, f4, f0
/* 80224240 00221180  4B E1 79 75 */	bl draw__10J2DPictureFffffbbb
/* 80224244 00221184  4B EC 37 1D */	bl GXInvalidateTexAll
/* 80224248 00221188  7F E3 FB 78 */	mr r3, r31
/* 8022424C 0022118C  38 80 00 00 */	li r4, 0
/* 80224250 00221190  38 A0 00 00 */	li r5, 0
/* 80224254 00221194  38 C0 00 04 */	li r6, 4
/* 80224258 00221198  38 E0 00 01 */	li r7, 1
/* 8022425C 0022119C  39 00 00 00 */	li r8, 0
/* 80224260 002211A0  4B E0 F4 21 */	bl capture__10JUTTextureFii9_GXTexFmtbUc
/* 80224264 002211A4  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80224268 002211A8  38 80 FF FF */	li r4, -1
/* 8022426C 002211AC  4B E1 6C 75 */	bl __dt__10J2DPictureFv
/* 80224270 002211B0  3B DE 00 01 */	addi r30, r30, 1
/* 80224274 002211B4  2C 1E 00 04 */	cmpwi r30, 4
/* 80224278 002211B8  41 80 FC 4C */	blt lbl_80223EC4
/* 8022427C 002211BC  7F A3 EB 78 */	mr r3, r29
/* 80224280 002211C0  48 20 31 E9 */	bl setupJ2DOrthoGraphDefault__8GraphicsFv
/* 80224284 002211C4  38 7D 00 BC */	addi r3, r29, 0xbc
/* 80224288 002211C8  81 9D 00 BC */	lwz r12, 0xbc(r29)
/* 8022428C 002211CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80224290 002211D0  7D 89 03 A6 */	mtctr r12
/* 80224294 002211D4  4E 80 04 21 */	bctrl 
/* 80224298 002211D8  80 9C 00 CC */	lwz r4, 0xcc(r28)
/* 8022429C 002211DC  38 61 00 60 */	addi r3, r1, 0x60
/* 802242A0 002211E0  4B E1 62 71 */	bl __ct__10J2DPictureFP10JUTTexture
/* 802242A4 002211E4  81 81 00 60 */	lwz r12, 0x60(r1)
/* 802242A8 002211E8  7F E4 FB 78 */	mr r4, r31
/* 802242AC 002211EC  38 61 00 60 */	addi r3, r1, 0x60
/* 802242B0 002211F0  88 A1 01 70 */	lbz r5, 0x170(r1)
/* 802242B4 002211F4  81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 802242B8 002211F8  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 802242BC 002211FC  7D 89 03 A6 */	mtctr r12
/* 802242C0 00221200  4E 80 04 21 */	bctrl 
/* 802242C4 00221204  C0 62 BD BC */	lfs f3, lbl_8051A11C@sda21(r2)
/* 802242C8 00221208  FC 40 F8 90 */	fmr f2, f31
/* 802242CC 0022120C  81 81 00 60 */	lwz r12, 0x60(r1)
/* 802242D0 00221210  38 61 00 60 */	addi r3, r1, 0x60
/* 802242D4 00221214  EF C3 F8 28 */	fsubs f30, f3, f31
/* 802242D8 00221218  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802242DC 0022121C  FC 80 18 90 */	fmr f4, f3
/* 802242E0 00221220  FC A0 18 90 */	fmr f5, f3
/* 802242E4 00221224  FC 20 F0 90 */	fmr f1, f30
/* 802242E8 00221228  FC C0 18 90 */	fmr f6, f3
/* 802242EC 0022122C  FC E0 18 90 */	fmr f7, f3
/* 802242F0 00221230  FD 00 18 90 */	fmr f8, f3
/* 802242F4 00221234  7D 89 03 A6 */	mtctr r12
/* 802242F8 00221238  4E 80 04 21 */	bctrl 
/* 802242FC 0022123C  81 81 00 60 */	lwz r12, 0x60(r1)
/* 80224300 00221240  FC 20 F0 90 */	fmr f1, f30
/* 80224304 00221244  C0 62 BD BC */	lfs f3, lbl_8051A11C@sda21(r2)
/* 80224308 00221248  FC 40 F8 90 */	fmr f2, f31
/* 8022430C 0022124C  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 80224310 00221250  38 61 00 60 */	addi r3, r1, 0x60
/* 80224314 00221254  FC 80 18 90 */	fmr f4, f3
/* 80224318 00221258  FC A0 18 90 */	fmr f5, f3
/* 8022431C 0022125C  FC C0 18 90 */	fmr f6, f3
/* 80224320 00221260  FC E0 18 90 */	fmr f7, f3
/* 80224324 00221264  FD 00 18 90 */	fmr f8, f3
/* 80224328 00221268  7D 89 03 A6 */	mtctr r12
/* 8022432C 0022126C  4E 80 04 21 */	bctrl 
/* 80224330 00221270  81 81 00 60 */	lwz r12, 0x60(r1)
/* 80224334 00221274  38 61 00 60 */	addi r3, r1, 0x60
/* 80224338 00221278  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 8022433C 0022127C  38 80 00 00 */	li r4, 0
/* 80224340 00221280  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 80224344 00221284  38 A0 00 00 */	li r5, 0
/* 80224348 00221288  FC 40 08 90 */	fmr f2, f1
/* 8022434C 0022128C  38 C0 00 00 */	li r6, 0
/* 80224350 00221290  38 E0 00 00 */	li r7, 0
/* 80224354 00221294  7D 89 03 A6 */	mtctr r12
/* 80224358 00221298  4E 80 04 21 */	bctrl 
/* 8022435C 0022129C  38 61 00 60 */	addi r3, r1, 0x60
/* 80224360 002212A0  38 80 FF FF */	li r4, -1
/* 80224364 002212A4  4B E1 6B 7D */	bl __dt__10J2DPictureFv
/* 80224368 002212A8  E3 E1 03 88 */	psq_l f31, 904(r1), 0, qr0
/* 8022436C 002212AC  CB E1 03 80 */	lfd f31, 0x380(r1)
/* 80224370 002212B0  E3 C1 03 78 */	psq_l f30, 888(r1), 0, qr0
/* 80224374 002212B4  CB C1 03 70 */	lfd f30, 0x370(r1)
/* 80224378 002212B8  BA 41 03 38 */	lmw r18, 0x338(r1)
/* 8022437C 002212BC  80 01 03 94 */	lwz r0, 0x394(r1)
/* 80224380 002212C0  7C 08 03 A6 */	mtlr r0
/* 80224384 002212C4  38 21 03 90 */	addi r1, r1, 0x390
/* 80224388 002212C8  4E 80 00 20 */	blr 

.global drawLightEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics
drawLightEffect__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSectionR8Graphics:
/* 8022438C 002212CC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80224390 002212D0  7C 08 02 A6 */	mflr r0
/* 80224394 002212D4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80224398 002212D8  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8022439C 002212DC  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 802243A0 002212E0  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 802243A4 002212E4  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 802243A8 002212E8  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 802243AC 002212EC  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 802243B0 002212F0  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 802243B4 002212F4  F3 81 00 B8 */	psq_st f28, 184(r1), 0, qr0
/* 802243B8 002212F8  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 802243BC 002212FC  F3 61 00 A8 */	psq_st f27, 168(r1), 0, qr0
/* 802243C0 00221300  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 802243C4 00221304  F3 41 00 98 */	psq_st f26, 152(r1), 0, qr0
/* 802243C8 00221308  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 802243CC 0022130C  F3 21 00 88 */	psq_st f25, 136(r1), 0, qr0
/* 802243D0 00221310  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 802243D4 00221314  F3 01 00 78 */	psq_st f24, 120(r1), 0, qr0
/* 802243D8 00221318  DA E1 00 60 */	stfd f23, 0x60(r1)
/* 802243DC 0022131C  F2 E1 00 68 */	psq_st f23, 104(r1), 0, qr0
/* 802243E0 00221320  DA C1 00 50 */	stfd f22, 0x50(r1)
/* 802243E4 00221324  F2 C1 00 58 */	psq_st f22, 88(r1), 0, qr0
/* 802243E8 00221328  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 802243EC 0022132C  7C 79 1B 78 */	mr r25, r3
/* 802243F0 00221330  7C BA 2B 78 */	mr r26, r5
/* 802243F4 00221334  4B EC 35 6D */	bl GXInvalidateTexAll
/* 802243F8 00221338  80 79 00 B0 */	lwz r3, 0xb0(r25)
/* 802243FC 0022133C  38 80 00 00 */	li r4, 0
/* 80224400 00221340  38 A0 00 00 */	li r5, 0
/* 80224404 00221344  38 C0 00 04 */	li r6, 4
/* 80224408 00221348  38 E0 00 01 */	li r7, 1
/* 8022440C 0022134C  39 00 00 00 */	li r8, 0
/* 80224410 00221350  4B E0 F2 71 */	bl capture__10JUTTextureFii9_GXTexFmtbUc
/* 80224414 00221354  7F 43 D3 78 */	mr r3, r26
/* 80224418 00221358  48 20 30 51 */	bl setupJ2DOrthoGraphDefault__8GraphicsFv
/* 8022441C 0022135C  38 7A 00 BC */	addi r3, r26, 0xbc
/* 80224420 00221360  81 9A 00 BC */	lwz r12, 0xbc(r26)
/* 80224424 00221364  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80224428 00221368  7D 89 03 A6 */	mtctr r12
/* 8022442C 0022136C  4E 80 04 21 */	bctrl 
/* 80224430 00221370  80 79 00 98 */	lwz r3, 0x98(r25)
/* 80224434 00221374  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80224438 00221378  C0 43 01 84 */	lfs f2, 0x184(r3)
/* 8022443C 0022137C  C0 23 01 78 */	lfs f1, 0x178(r3)
/* 80224440 00221380  C0 83 01 88 */	lfs f4, 0x188(r3)
/* 80224444 00221384  EC A2 08 28 */	fsubs f5, f2, f1
/* 80224448 00221388  C0 63 01 7C */	lfs f3, 0x17c(r3)
/* 8022444C 0022138C  C0 43 01 80 */	lfs f2, 0x180(r3)
/* 80224450 00221390  C0 23 01 74 */	lfs f1, 0x174(r3)
/* 80224454 00221394  EC 64 18 28 */	fsubs f3, f4, f3
/* 80224458 00221398  EC 85 01 72 */	fmuls f4, f5, f5
/* 8022445C 0022139C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80224460 002213A0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80224464 002213A4  EC 21 20 7A */	fmadds f1, f1, f1, f4
/* 80224468 002213A8  EC 22 08 2A */	fadds f1, f2, f1
/* 8022446C 002213AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80224470 002213B0  40 81 00 14 */	ble lbl_80224484
/* 80224474 002213B4  40 81 00 14 */	ble lbl_80224488
/* 80224478 002213B8  FC 00 08 34 */	frsqrte f0, f1
/* 8022447C 002213BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80224480 002213C0  48 00 00 08 */	b lbl_80224488
lbl_80224484:
/* 80224484 002213C4  FC 20 00 90 */	fmr f1, f0
lbl_80224488:
/* 80224488 002213C8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022448C 002213CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80224490 002213D0  40 81 00 10 */	ble lbl_802244A0
/* 80224494 002213D4  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80224498 002213D8  EC 00 08 24 */	fdivs f0, f0, f1
/* 8022449C 002213DC  EC A5 00 32 */	fmuls f5, f5, f0
lbl_802244A0:
/* 802244A0 002213E0  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802244A4 002213E4  2C 00 00 06 */	cmpwi r0, 6
/* 802244A8 002213E8  40 82 00 3C */	bne lbl_802244E4
/* 802244AC 002213EC  3C 80 80 50 */	lis r4, sincosTable___5JMath@ha
/* 802244B0 002213F0  80 79 01 00 */	lwz r3, 0x100(r25)
/* 802244B4 002213F4  38 84 71 A0 */	addi r4, r4, sincosTable___5JMath@l
/* 802244B8 002213F8  C0 02 BD DC */	lfs f0, lbl_8051A13C@sda21(r2)
/* 802244BC 002213FC  C0 44 03 88 */	lfs f2, 0x388(r4)
/* 802244C0 00221400  C0 24 01 C0 */	lfs f1, 0x1c0(r4)
/* 802244C4 00221404  EC A5 10 2A */	fadds f5, f5, f2
/* 802244C8 00221408  8B C3 00 74 */	lbz r30, 0x74(r3)
/* 802244CC 0022140C  8B A3 00 75 */	lbz r29, 0x75(r3)
/* 802244D0 00221410  8B 83 00 76 */	lbz r28, 0x76(r3)
/* 802244D4 00221414  EC A5 08 24 */	fdivs f5, f5, f1
/* 802244D8 00221418  8B 63 00 77 */	lbz r27, 0x77(r3)
/* 802244DC 0022141C  EC A5 00 2A */	fadds f5, f5, f0
/* 802244E0 00221420  48 00 00 30 */	b lbl_80224510
lbl_802244E4:
/* 802244E4 00221424  3C 80 80 50 */	lis r4, sincosTable___5JMath@ha
/* 802244E8 00221428  80 79 01 00 */	lwz r3, 0x100(r25)
/* 802244EC 0022142C  38 84 71 A0 */	addi r4, r4, sincosTable___5JMath@l
/* 802244F0 00221430  C0 24 02 A8 */	lfs f1, 0x2a8(r4)
/* 802244F4 00221434  C0 04 01 C0 */	lfs f0, 0x1c0(r4)
/* 802244F8 00221438  EC A5 08 2A */	fadds f5, f5, f1
/* 802244FC 0022143C  8B C3 00 74 */	lbz r30, 0x74(r3)
/* 80224500 00221440  8B A3 00 75 */	lbz r29, 0x75(r3)
/* 80224504 00221444  8B 83 00 76 */	lbz r28, 0x76(r3)
/* 80224508 00221448  EC A5 00 24 */	fdivs f5, f5, f0
/* 8022450C 0022144C  8B 63 00 77 */	lbz r27, 0x77(r3)
lbl_80224510:
/* 80224510 00221450  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80224514 00221454  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80224518 00221458  40 80 00 0C */	bge lbl_80224524
/* 8022451C 0022145C  FC A0 00 90 */	fmr f5, f0
/* 80224520 00221460  48 00 00 14 */	b lbl_80224534
lbl_80224524:
/* 80224524 00221464  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80224528 00221468  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8022452C 0022146C  40 81 00 08 */	ble lbl_80224534
/* 80224530 00221470  FC A0 00 90 */	fmr f5, f0
lbl_80224534:
/* 80224534 00221474  C0 59 01 08 */	lfs f2, 0x108(r25)
/* 80224538 00221478  80 79 01 04 */	lwz r3, 0x104(r25)
/* 8022453C 0022147C  EC 25 10 28 */	fsubs f1, f5, f2
/* 80224540 00221480  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80224544 00221484  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80224548 00221488  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 8022454C 0022148C  D0 39 01 08 */	stfs f1, 0x108(r25)
/* 80224550 00221490  C0 39 01 08 */	lfs f1, 0x108(r25)
/* 80224554 00221494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80224558 00221498  40 81 05 90 */	ble lbl_80224AE8
/* 8022455C 0022149C  C0 79 00 BC */	lfs f3, 0xbc(r25)
/* 80224560 002214A0  38 80 00 00 */	li r4, 0
/* 80224564 002214A4  C0 59 00 B4 */	lfs f2, 0xb4(r25)
/* 80224568 002214A8  C0 39 00 C0 */	lfs f1, 0xc0(r25)
/* 8022456C 002214AC  C0 19 00 B8 */	lfs f0, 0xb8(r25)
/* 80224570 002214B0  EF 63 10 28 */	fsubs f27, f3, f2
/* 80224574 002214B4  80 79 00 B0 */	lwz r3, 0xb0(r25)
/* 80224578 002214B8  EF 41 00 28 */	fsubs f26, f1, f0
/* 8022457C 002214BC  4B E0 F0 B5 */	bl load__10JUTTextureF11_GXTexMapID
/* 80224580 002214C0  38 60 00 01 */	li r3, 1
/* 80224584 002214C4  4B EC 28 E1 */	bl GXSetNumChans
/* 80224588 002214C8  38 60 00 01 */	li r3, 1
/* 8022458C 002214CC  4B EC 46 2D */	bl GXSetNumTevStages
/* 80224590 002214D0  38 60 00 00 */	li r3, 0
/* 80224594 002214D4  38 80 00 0F */	li r4, 0xf
/* 80224598 002214D8  38 A0 00 02 */	li r5, 2
/* 8022459C 002214DC  38 C0 00 08 */	li r6, 8
/* 802245A0 002214E0  38 E0 00 0F */	li r7, 0xf
/* 802245A4 002214E4  4B EC 3F 65 */	bl GXSetTevColorIn
/* 802245A8 002214E8  38 60 00 00 */	li r3, 0
/* 802245AC 002214EC  38 80 00 00 */	li r4, 0
/* 802245B0 002214F0  38 A0 00 00 */	li r5, 0
/* 802245B4 002214F4  38 C0 00 03 */	li r6, 3
/* 802245B8 002214F8  38 E0 00 01 */	li r7, 1
/* 802245BC 002214FC  39 00 00 00 */	li r8, 0
/* 802245C0 00221500  4B EC 3F D1 */	bl GXSetTevColorOp
/* 802245C4 00221504  38 60 00 00 */	li r3, 0
/* 802245C8 00221508  38 80 00 07 */	li r4, 7
/* 802245CC 0022150C  38 A0 00 01 */	li r5, 1
/* 802245D0 00221510  38 C0 00 04 */	li r6, 4
/* 802245D4 00221514  38 E0 00 07 */	li r7, 7
/* 802245D8 00221518  4B EC 3F 75 */	bl GXSetTevAlphaIn
/* 802245DC 0022151C  38 60 00 00 */	li r3, 0
/* 802245E0 00221520  38 80 00 00 */	li r4, 0
/* 802245E4 00221524  38 A0 00 00 */	li r5, 0
/* 802245E8 00221528  38 C0 00 00 */	li r6, 0
/* 802245EC 0022152C  38 E0 00 01 */	li r7, 1
/* 802245F0 00221530  39 00 00 00 */	li r8, 0
/* 802245F4 00221534  4B EC 40 05 */	bl GXSetTevAlphaOp
/* 802245F8 00221538  38 60 00 00 */	li r3, 0
/* 802245FC 0022153C  38 80 00 00 */	li r4, 0
/* 80224600 00221540  38 A0 00 00 */	li r5, 0
/* 80224604 00221544  38 C0 00 04 */	li r6, 4
/* 80224608 00221548  4B EC 44 15 */	bl GXSetTevOrder
/* 8022460C 0022154C  38 60 00 04 */	li r3, 4
/* 80224610 00221550  38 80 00 00 */	li r4, 0
/* 80224614 00221554  38 A0 00 00 */	li r5, 0
/* 80224618 00221558  38 C0 00 01 */	li r6, 1
/* 8022461C 0022155C  38 E0 00 00 */	li r7, 0
/* 80224620 00221560  39 00 00 00 */	li r8, 0
/* 80224624 00221564  39 20 00 02 */	li r9, 2
/* 80224628 00221568  4B EC 28 79 */	bl GXSetChanCtrl
/* 8022462C 0022156C  4B EC 00 A5 */	bl GXClearVtxDesc
/* 80224630 00221570  38 60 00 09 */	li r3, 9
/* 80224634 00221574  38 80 00 01 */	li r4, 1
/* 80224638 00221578  4B EB FC 4D */	bl GXSetVtxDesc
/* 8022463C 0022157C  38 60 00 0B */	li r3, 0xb
/* 80224640 00221580  38 80 00 01 */	li r4, 1
/* 80224644 00221584  4B EB FC 41 */	bl GXSetVtxDesc
/* 80224648 00221588  38 60 00 0D */	li r3, 0xd
/* 8022464C 0022158C  38 80 00 01 */	li r4, 1
/* 80224650 00221590  4B EB FC 35 */	bl GXSetVtxDesc
/* 80224654 00221594  38 60 00 00 */	li r3, 0
/* 80224658 00221598  38 80 00 09 */	li r4, 9
/* 8022465C 0022159C  38 A0 00 01 */	li r5, 1
/* 80224660 002215A0  38 C0 00 04 */	li r6, 4
/* 80224664 002215A4  38 E0 00 00 */	li r7, 0
/* 80224668 002215A8  4B EC 00 A1 */	bl GXSetVtxAttrFmt
/* 8022466C 002215AC  38 60 00 00 */	li r3, 0
/* 80224670 002215B0  38 80 00 0B */	li r4, 0xb
/* 80224674 002215B4  38 A0 00 01 */	li r5, 1
/* 80224678 002215B8  38 C0 00 05 */	li r6, 5
/* 8022467C 002215BC  38 E0 00 00 */	li r7, 0
/* 80224680 002215C0  4B EC 00 89 */	bl GXSetVtxAttrFmt
/* 80224684 002215C4  38 60 00 00 */	li r3, 0
/* 80224688 002215C8  38 80 00 0D */	li r4, 0xd
/* 8022468C 002215CC  38 A0 00 01 */	li r5, 1
/* 80224690 002215D0  38 C0 00 04 */	li r6, 4
/* 80224694 002215D4  38 E0 00 00 */	li r7, 0
/* 80224698 002215D8  4B EC 00 71 */	bl GXSetVtxAttrFmt
/* 8022469C 002215DC  38 60 00 01 */	li r3, 1
/* 802246A0 002215E0  38 80 00 04 */	li r4, 4
/* 802246A4 002215E4  38 A0 00 01 */	li r5, 1
/* 802246A8 002215E8  38 C0 00 0F */	li r6, 0xf
/* 802246AC 002215EC  4B EC 4A 2D */	bl GXSetBlendMode
/* 802246B0 002215F0  38 60 00 00 */	li r3, 0
/* 802246B4 002215F4  38 80 00 01 */	li r4, 1
/* 802246B8 002215F8  38 A0 00 00 */	li r5, 0
/* 802246BC 002215FC  4B EC 4A C9 */	bl GXSetZMode
/* 802246C0 00221600  38 60 00 00 */	li r3, 0
/* 802246C4 00221604  4B EC 4F 55 */	bl GXSetCurrentMtx
/* 802246C8 00221608  38 60 00 01 */	li r3, 1
/* 802246CC 0022160C  4B EC 08 D1 */	bl GXSetNumTexGens
/* 802246D0 00221610  38 60 00 00 */	li r3, 0
/* 802246D4 00221614  38 80 00 01 */	li r4, 1
/* 802246D8 00221618  38 A0 00 0C */	li r5, 0xc
/* 802246DC 0022161C  38 C0 00 3C */	li r6, 0x3c
/* 802246E0 00221620  38 E0 00 00 */	li r7, 0
/* 802246E4 00221624  39 00 00 7D */	li r8, 0x7d
/* 802246E8 00221628  4B EC 06 35 */	bl GXSetTexCoordGen2
/* 802246EC 0022162C  CB 82 BE 28 */	lfd f28, lbl_8051A188@sda21(r2)
/* 802246F0 00221630  3B 40 00 00 */	li r26, 0
/* 802246F4 00221634  C3 A2 BE 90 */	lfs f29, lbl_8051A1F0@sda21(r2)
/* 802246F8 00221638  3F E0 43 30 */	lis r31, 0x4330
/* 802246FC 0022163C  C3 C2 BD BC */	lfs f30, lbl_8051A11C@sda21(r2)
/* 80224700 00221640  C3 E2 BD C8 */	lfs f31, lbl_8051A128@sda21(r2)
lbl_80224704:
/* 80224704 00221644  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 80224708 00221648  38 1A 00 01 */	addi r0, r26, 1
/* 8022470C 0022164C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80224710 00221650  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80224714 00221654  C0 59 01 08 */	lfs f2, 0x108(r25)
/* 80224718 00221658  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8022471C 0022165C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80224720 00221660  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80224724 00221664  EC 20 E0 28 */	fsubs f1, f0, f28
/* 80224728 00221668  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8022472C 0022166C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80224730 00221670  EC 21 07 72 */	fmuls f1, f1, f29
/* 80224734 00221674  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80224738 00221678  EC 22 08 28 */	fsubs f1, f2, f1
/* 8022473C 0022167C  EC 00 07 72 */	fmuls f0, f0, f29
/* 80224740 00221680  EC 41 00 24 */	fdivs f2, f1, f0
/* 80224744 00221684  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80224748 00221688  40 81 00 08 */	ble lbl_80224750
/* 8022474C 0022168C  FC 40 F0 90 */	fmr f2, f30
lbl_80224750:
/* 80224750 00221690  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 80224754 00221694  40 81 03 88 */	ble lbl_80224ADC
/* 80224758 00221698  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 8022475C 0022169C  3C 00 43 30 */	lis r0, 0x4330
/* 80224760 002216A0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80224764 002216A4  C8 22 BE 88 */	lfd f1, lbl_8051A1E8@sda21(r2)
/* 80224768 002216A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022476C 002216AC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80224770 002216B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80224774 002216B4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80224778 002216B8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8022477C 002216BC  4C 41 13 82 */	cror 2, 1, 2
/* 80224780 002216C0  40 82 00 10 */	bne lbl_80224790
/* 80224784 002216C4  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80224788 002216C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8022478C 002216CC  48 00 00 0C */	b lbl_80224798
lbl_80224790:
/* 80224790 002216D0  C0 02 BD E8 */	lfs f0, lbl_8051A148@sda21(r2)
/* 80224794 002216D4  EC 01 00 28 */	fsubs f0, f1, f0
lbl_80224798:
/* 80224798 002216D8  FC 00 00 1E */	fctiwz f0, f0
/* 8022479C 002216DC  9B C1 00 08 */	stb r30, 8(r1)
/* 802247A0 002216E0  38 81 00 0C */	addi r4, r1, 0xc
/* 802247A4 002216E4  38 60 00 01 */	li r3, 1
/* 802247A8 002216E8  9B A1 00 09 */	stb r29, 9(r1)
/* 802247AC 002216EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802247B0 002216F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802247B4 002216F4  9B 81 00 0A */	stb r28, 0xa(r1)
/* 802247B8 002216F8  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 802247BC 002216FC  98 01 00 0B */	stb r0, 0xb(r1)
/* 802247C0 00221700  80 01 00 08 */	lwz r0, 8(r1)
/* 802247C4 00221704  90 01 00 0C */	stw r0, 0xc(r1)
/* 802247C8 00221708  4B EC 3E 99 */	bl GXSetTevColor
/* 802247CC 0022170C  38 7A 00 01 */	addi r3, r26, 1
/* 802247D0 00221710  3C 00 43 30 */	lis r0, 0x4330
/* 802247D4 00221714  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 802247D8 00221718  90 01 00 20 */	stw r0, 0x20(r1)
/* 802247DC 0022171C  C8 22 BE 28 */	lfd f1, lbl_8051A188@sda21(r2)
/* 802247E0 00221720  38 60 00 98 */	li r3, 0x98
/* 802247E4 00221724  90 81 00 24 */	stw r4, 0x24(r1)
/* 802247E8 00221728  38 80 00 00 */	li r4, 0
/* 802247EC 0022172C  C0 42 BE 94 */	lfs f2, lbl_8051A1F4@sda21(r2)
/* 802247F0 00221730  38 A0 00 04 */	li r5, 4
/* 802247F4 00221734  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802247F8 00221738  EC 00 08 28 */	fsubs f0, f0, f1
/* 802247FC 0022173C  EE C2 00 32 */	fmuls f22, f2, f0
/* 80224800 00221740  FF 00 B0 50 */	fneg f24, f22
/* 80224804 00221744  4B EC 11 85 */	bl GXBegin
/* 80224808 00221748  C0 62 BD C8 */	lfs f3, lbl_8051A128@sda21(r2)
/* 8022480C 0022174C  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80224810 00221750  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 80224814 00221754  38 00 00 FF */	li r0, 0xff
/* 80224818 00221758  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 8022481C 0022175C  EC 5B 18 2A */	fadds f2, f27, f3
/* 80224820 00221760  EF 21 B0 2A */	fadds f25, f1, f22
/* 80224824 00221764  38 60 00 98 */	li r3, 0x98
/* 80224828 00221768  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 8022482C 0022176C  EC 1A 18 2A */	fadds f0, f26, f3
/* 80224830 00221770  EC 21 C0 2A */	fadds f1, f1, f24
/* 80224834 00221774  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 80224838 00221778  38 80 00 00 */	li r4, 0
/* 8022483C 0022177C  38 A0 00 04 */	li r5, 4
/* 80224840 00221780  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224844 00221784  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224848 00221788  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022484C 0022178C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224850 00221790  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 80224854 00221794  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 80224858 00221798  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 8022485C 0022179C  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 80224860 002217A0  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 80224864 002217A4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224868 002217A8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022486C 002217AC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224870 002217B0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224874 002217B4  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 80224878 002217B8  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 8022487C 002217BC  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 80224880 002217C0  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80224884 002217C4  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 80224888 002217C8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022488C 002217CC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224890 002217D0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224894 002217D4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224898 002217D8  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 8022489C 002217DC  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 802248A0 002217E0  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802248A4 002217E4  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 802248A8 002217E8  D0 66 80 00 */	stfs f3, 0xCC008000@l(r6)
/* 802248AC 002217EC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802248B0 002217F0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802248B4 002217F4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802248B8 002217F8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802248BC 002217FC  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 802248C0 00221800  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 802248C4 00221804  4B EC 10 C5 */	bl GXBegin
/* 802248C8 00221808  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 802248CC 0022180C  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 802248D0 00221810  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 802248D4 00221814  38 00 00 FF */	li r0, 0xff
/* 802248D8 00221818  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802248DC 0022181C  EC 3B 10 2A */	fadds f1, f27, f2
/* 802248E0 00221820  EE E0 C0 2A */	fadds f23, f0, f24
/* 802248E4 00221824  38 60 00 98 */	li r3, 0x98
/* 802248E8 00221828  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802248EC 0022182C  EC 1A 10 2A */	fadds f0, f26, f2
/* 802248F0 00221830  38 80 00 00 */	li r4, 0
/* 802248F4 00221834  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802248F8 00221838  38 A0 00 04 */	li r5, 4
/* 802248FC 0022183C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224900 00221840  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224904 00221844  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224908 00221848  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022490C 0022184C  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 80224910 00221850  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 80224914 00221854  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 80224918 00221858  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 8022491C 0022185C  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 80224920 00221860  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224924 00221864  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224928 00221868  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022492C 0022186C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224930 00221870  D2 E6 80 00 */	stfs f23, 0xCC008000@l(r6)
/* 80224934 00221874  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 80224938 00221878  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 8022493C 0022187C  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80224940 00221880  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 80224944 00221884  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224948 00221888  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022494C 0022188C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224950 00221890  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224954 00221894  D3 06 80 00 */	stfs f24, 0xCC008000@l(r6)
/* 80224958 00221898  D2 E6 80 00 */	stfs f23, 0xCC008000@l(r6)
/* 8022495C 0022189C  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 80224960 002218A0  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80224964 002218A4  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 80224968 002218A8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8022496C 002218AC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224970 002218B0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224974 002218B4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224978 002218B8  D2 E6 80 00 */	stfs f23, 0xCC008000@l(r6)
/* 8022497C 002218BC  D2 E6 80 00 */	stfs f23, 0xCC008000@l(r6)
/* 80224980 002218C0  4B EC 10 09 */	bl GXBegin
/* 80224984 002218C4  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80224988 002218C8  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8022498C 002218CC  38 00 00 FF */	li r0, 0xff
/* 80224990 002218D0  38 60 00 98 */	li r3, 0x98
/* 80224994 002218D4  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 80224998 002218D8  EC 3B 10 2A */	fadds f1, f27, f2
/* 8022499C 002218DC  EC 1A 10 2A */	fadds f0, f26, f2
/* 802249A0 002218E0  38 80 00 00 */	li r4, 0
/* 802249A4 002218E4  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249A8 002218E8  38 A0 00 04 */	li r5, 4
/* 802249AC 002218EC  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249B0 002218F0  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249B4 002218F4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249B8 002218F8  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249BC 002218FC  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249C0 00221900  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 802249C4 00221904  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 802249C8 00221908  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 802249CC 0022190C  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249D0 00221910  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249D4 00221914  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249D8 00221918  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249DC 0022191C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249E0 00221920  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249E4 00221924  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 802249E8 00221928  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 802249EC 0022192C  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249F0 00221930  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 802249F4 00221934  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 802249F8 00221938  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 802249FC 0022193C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A00 00221940  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A04 00221944  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A08 00221948  D2 C6 80 00 */	stfs f22, 0xCC008000@l(r6)
/* 80224A0C 0022194C  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 80224A10 00221950  D0 26 80 00 */	stfs f1, 0xCC008000@l(r6)
/* 80224A14 00221954  D0 06 80 00 */	stfs f0, 0xCC008000@l(r6)
/* 80224A18 00221958  D0 46 80 00 */	stfs f2, 0xCC008000@l(r6)
/* 80224A1C 0022195C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A20 00221960  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A24 00221964  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A28 00221968  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80224A2C 0022196C  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 80224A30 00221970  D3 26 80 00 */	stfs f25, 0xCC008000@l(r6)
/* 80224A34 00221974  4B EC 0F 55 */	bl GXBegin
/* 80224A38 00221978  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80224A3C 0022197C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80224A40 00221980  38 00 00 FF */	li r0, 0xff
/* 80224A44 00221984  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A48 00221988  EC 3B 10 2A */	fadds f1, f27, f2
/* 80224A4C 0022198C  EC 1A 10 2A */	fadds f0, f26, f2
/* 80224A50 00221990  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A54 00221994  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A58 00221998  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A5C 0022199C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A60 002219A0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A64 002219A4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A68 002219A8  D3 03 80 00 */	stfs f24, 0xCC008000@l(r3)
/* 80224A6C 002219AC  D2 C3 80 00 */	stfs f22, 0xCC008000@l(r3)
/* 80224A70 002219B0  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 80224A74 002219B4  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A78 002219B8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A7C 002219BC  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A80 002219C0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A84 002219C4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A88 002219C8  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224A8C 002219CC  D2 E3 80 00 */	stfs f23, 0xCC008000@l(r3)
/* 80224A90 002219D0  D2 C3 80 00 */	stfs f22, 0xCC008000@l(r3)
/* 80224A94 002219D4  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224A98 002219D8  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80224A9C 002219DC  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224AA0 002219E0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AA4 002219E4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AA8 002219E8  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AAC 002219EC  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AB0 002219F0  D3 03 80 00 */	stfs f24, 0xCC008000@l(r3)
/* 80224AB4 002219F4  D3 23 80 00 */	stfs f25, 0xCC008000@l(r3)
/* 80224AB8 002219F8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 80224ABC 002219FC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80224AC0 00221A00  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 80224AC4 00221A04  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AC8 00221A08  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224ACC 00221A0C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AD0 00221A10  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80224AD4 00221A14  D2 E3 80 00 */	stfs f23, 0xCC008000@l(r3)
/* 80224AD8 00221A18  D3 23 80 00 */	stfs f25, 0xCC008000@l(r3)
lbl_80224ADC:
/* 80224ADC 00221A1C  3B 5A 00 01 */	addi r26, r26, 1
/* 80224AE0 00221A20  2C 1A 00 04 */	cmpwi r26, 4
/* 80224AE4 00221A24  41 80 FC 20 */	blt lbl_80224704
lbl_80224AE8:
/* 80224AE8 00221A28  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 80224AEC 00221A2C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80224AF0 00221A30  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 80224AF4 00221A34  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80224AF8 00221A38  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 80224AFC 00221A3C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80224B00 00221A40  E3 81 00 B8 */	psq_l f28, 184(r1), 0, qr0
/* 80224B04 00221A44  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80224B08 00221A48  E3 61 00 A8 */	psq_l f27, 168(r1), 0, qr0
/* 80224B0C 00221A4C  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80224B10 00221A50  E3 41 00 98 */	psq_l f26, 152(r1), 0, qr0
/* 80224B14 00221A54  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80224B18 00221A58  E3 21 00 88 */	psq_l f25, 136(r1), 0, qr0
/* 80224B1C 00221A5C  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80224B20 00221A60  E3 01 00 78 */	psq_l f24, 120(r1), 0, qr0
/* 80224B24 00221A64  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 80224B28 00221A68  E2 E1 00 68 */	psq_l f23, 104(r1), 0, qr0
/* 80224B2C 00221A6C  CA E1 00 60 */	lfd f23, 0x60(r1)
/* 80224B30 00221A70  E2 C1 00 58 */	psq_l f22, 88(r1), 0, qr0
/* 80224B34 00221A74  CA C1 00 50 */	lfd f22, 0x50(r1)
/* 80224B38 00221A78  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 80224B3C 00221A7C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80224B40 00221A80  7C 08 03 A6 */	mtlr r0
/* 80224B44 00221A84  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80224B48 00221A88  4E 80 00 20 */	blr 

.if version == 1
.global dvdloadA__Q34Game10SingleGame10ZukanStateFv
dvdloadA__Q34Game10SingleGame10ZukanStateFv:
/* 80224B4C 00221A8C  94 21 F9 00 */	stwu r1, -0x700(r1)
/* 80224B50 00221A90  7C 08 02 A6 */	mflr r0
/* 80224B54 00221A94  90 01 07 04 */	stw r0, 0x704(r1)
/* 80224B58 00221A98  BF 21 06 E4 */	stmw r25, 0x6e4(r1)
/* 80224B5C 00221A9C  7C 7F 1B 78 */	mr r31, r3
/* 80224B60 00221AA0  3C 60 80 48 */	lis r3, lbl_80482E60@ha
/* 80224B64 00221AA4  3B C3 2E 60 */	addi r30, r3, lbl_80482E60@l
/* 80224B68 00221AA8  83 3F 00 D4 */	lwz r25, 0xd4(r31)
/* 80224B6C 00221AAC  7F 23 CB 78 */	mr r3, r25
/* 80224B70 00221AB0  4B DF EC 45 */	bl getFreeSize__7JKRHeapFv
/* 80224B74 00221AB4  7F 24 CB 78 */	mr r4, r25
/* 80224B78 00221AB8  38 A0 00 01 */	li r5, 1
/* 80224B7C 00221ABC  4B DF B3 4D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80224B80 00221AC0  90 7F 00 D8 */	stw r3, 0xd8(r31)
/* 80224B84 00221AC4  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80224B88 00221AC8  4B DF EA 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80224B8C 00221ACC  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80224B90 00221AD0  3C 80 80 4C */	lis r4, "sDirName__28@unnamed@singleGS_Zukan_cpp@"@ha
/* 80224B94 00221AD4  38 84 0A 5C */	addi r4, r4, "sDirName__28@unnamed@singleGS_Zukan_cpp@"@l
/* 80224B98 00221AD8  38 A2 BE 98 */	addi r5, r2, lbl_8051A1F8@sda21
/* 80224B9C 00221ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80224BA0 00221AE0  38 61 01 60 */	addi r3, r1, 0x160
/* 80224BA4 00221AE4  7C C4 00 2E */	lwzx r6, r4, r0
/* 80224BA8 00221AE8  38 9E 02 40 */	addi r4, r30, 0x240
/* 80224BAC 00221AEC  4C C6 31 82 */	crclr 6
/* 80224BB0 00221AF0  4B EA 28 89 */	bl sprintf
/* 80224BB4 00221AF4  38 61 01 60 */	addi r3, r1, 0x160
/* 80224BB8 00221AF8  38 80 00 01 */	li r4, 1
/* 80224BBC 00221AFC  38 A0 00 00 */	li r5, 0
/* 80224BC0 00221B00  38 C0 00 02 */	li r6, 2
/* 80224BC4 00221B04  4B DF 65 6D */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80224BC8 00221B08  7C 7D 1B 79 */	or. r29, r3, r3
/* 80224BCC 00221B0C  40 82 00 18 */	bne lbl_80224BE4
/* 80224BD0 00221B10  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80224BD4 00221B14  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224BD8 00221B18  38 80 09 99 */	li r4, 0x999
/* 80224BDC 00221B1C  4C C6 31 82 */	crclr 6
/* 80224BE0 00221B20  4B E0 5A 61 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224BE4:
/* 80224BE4 00221B24  3C 60 00 01 */	lis r3, 0x00010280@ha
/* 80224BE8 00221B28  38 63 02 80 */	addi r3, r3, 0x00010280@l
/* 80224BEC 00221B2C  4B DF F2 B9 */	bl __nw__FUl
/* 80224BF0 00221B30  7C 60 1B 79 */	or. r0, r3, r3
/* 80224BF4 00221B34  41 82 00 0C */	beq lbl_80224C00
/* 80224BF8 00221B38  4B F0 D5 85 */	bl __ct__Q34Game15IllustratedBook5ParmsFv
/* 80224BFC 00221B3C  7C 60 1B 78 */	mr r0, r3
lbl_80224C00:
/* 80224C00 00221B40  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80224C04 00221B44  7F A4 EB 78 */	mr r4, r29
/* 80224C08 00221B48  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80224C0C 00221B4C  4B F0 DA 55 */	bl loadFile__Q34Game15IllustratedBook5ParmsFP10JKRArchive
/* 80224C10 00221B50  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224C14 00221B54  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80224C18 00221B58  4B F4 03 99 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80224C1C 00221B5C  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C20 00221B60  28 00 00 00 */	cmplwi r0, 0
/* 80224C24 00221B64  41 82 00 18 */	beq lbl_80224C3C
/* 80224C28 00221B68  38 7E 02 64 */	addi r3, r30, 0x264
/* 80224C2C 00221B6C  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224C30 00221B70  38 80 00 76 */	li r4, 0x76
/* 80224C34 00221B74  4C C6 31 82 */	crclr 6
/* 80224C38 00221B78  4B E0 5A 09 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224C3C:
/* 80224C3C 00221B7C  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C40 00221B80  28 00 00 00 */	cmplwi r0, 0
/* 80224C44 00221B84  40 82 00 6C */	bne lbl_80224CB0
/* 80224C48 00221B88  38 60 00 30 */	li r3, 0x30
/* 80224C4C 00221B8C  4B DF F2 59 */	bl __nw__FUl
/* 80224C50 00221B90  7C 65 1B 79 */	or. r5, r3, r3
/* 80224C54 00221B94  41 82 00 58 */	beq lbl_80224CAC
/* 80224C58 00221B98  7C B9 2B 78 */	mr r25, r5
/* 80224C5C 00221B9C  4B E0 1C 75 */	bl initiate__10JSUPtrListFv
/* 80224C60 00221BA0  3C 60 80 4B */	lis r3, "__vt__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@ha
/* 80224C64 00221BA4  34 99 00 0C */	addic. r4, r25, 0xc
/* 80224C68 00221BA8  38 03 0C E0 */	addi r0, r3, "__vt__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@l
/* 80224C6C 00221BAC  90 19 00 0C */	stw r0, 0xc(r25)
/* 80224C70 00221BB0  41 82 00 08 */	beq lbl_80224C78
/* 80224C74 00221BB4  38 84 FF F4 */	addi r4, r4, -12
lbl_80224C78:
/* 80224C78 00221BB8  90 8D 91 BC */	stw r4, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C7C 00221BBC  38 79 00 10 */	addi r3, r25, 0x10
/* 80224C80 00221BC0  4B DF 83 4D */	bl __ct__11JKRDisposerFv
/* 80224C84 00221BC4  3C 60 80 4F */	lis r3, __vt__Q23PSM6ObjMgr@ha
/* 80224C88 00221BC8  38 00 00 00 */	li r0, 0
/* 80224C8C 00221BCC  38 63 F2 0C */	addi r3, r3, __vt__Q23PSM6ObjMgr@l
/* 80224C90 00221BD0  7F 25 CB 78 */	mr r5, r25
/* 80224C94 00221BD4  90 79 00 28 */	stw r3, 0x28(r25)
/* 80224C98 00221BD8  38 83 00 08 */	addi r4, r3, 8
/* 80224C9C 00221BDC  38 63 00 14 */	addi r3, r3, 0x14
/* 80224CA0 00221BE0  90 99 00 0C */	stw r4, 0xc(r25)
/* 80224CA4 00221BE4  90 79 00 10 */	stw r3, 0x10(r25)
/* 80224CA8 00221BE8  90 19 00 2C */	stw r0, 0x2c(r25)
lbl_80224CAC:
/* 80224CAC 00221BEC  90 AD 91 BC */	stw r5, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
lbl_80224CB0:
/* 80224CB0 00221BF0  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224CB4 00221BF4  28 00 00 00 */	cmplwi r0, 0
/* 80224CB8 00221BF8  40 82 00 18 */	bne lbl_80224CD0
/* 80224CBC 00221BFC  38 7E 02 64 */	addi r3, r30, 0x264
/* 80224CC0 00221C00  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224CC4 00221C04  38 80 00 79 */	li r4, 0x79
/* 80224CC8 00221C08  4C C6 31 82 */	crclr 6
/* 80224CCC 00221C0C  4B E0 59 75 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224CD0:
/* 80224CD0 00221C10  48 1F E5 55 */	bl getRenderModeObj__6SystemFv
/* 80224CD4 00221C14  A3 23 00 04 */	lhz r25, 4(r3)
/* 80224CD8 00221C18  48 1F E5 4D */	bl getRenderModeObj__6SystemFv
/* 80224CDC 00221C1C  3C 00 43 30 */	lis r0, 0x4330
/* 80224CE0 00221C20  A0 83 00 04 */	lhz r4, 4(r3)
/* 80224CE4 00221C24  93 21 06 9C */	stw r25, 0x69c(r1)
/* 80224CE8 00221C28  38 60 00 40 */	li r3, 0x40
/* 80224CEC 00221C2C  C0 C2 BD C8 */	lfs f6, lbl_8051A128@sda21(r2)
/* 80224CF0 00221C30  90 01 06 98 */	stw r0, 0x698(r1)
/* 80224CF4 00221C34  C8 82 BE 88 */	lfd f4, lbl_8051A1E8@sda21(r2)
/* 80224CF8 00221C38  C8 01 06 98 */	lfd f0, 0x698(r1)
/* 80224CFC 00221C3C  90 81 06 84 */	stw r4, 0x684(r1)
/* 80224D00 00221C40  EC 00 20 28 */	fsubs f0, f0, f4
/* 80224D04 00221C44  C0 22 BE 3C */	lfs f1, lbl_8051A19C@sda21(r2)
/* 80224D08 00221C48  90 01 06 80 */	stw r0, 0x680(r1)
/* 80224D0C 00221C4C  C0 A2 BE 48 */	lfs f5, lbl_8051A1A8@sda21(r2)
/* 80224D10 00221C50  C8 41 06 80 */	lfd f2, 0x680(r1)
/* 80224D14 00221C54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80224D18 00221C58  C0 62 BE 90 */	lfs f3, lbl_8051A1F0@sda21(r2)
/* 80224D1C 00221C5C  EC 82 20 28 */	fsubs f4, f2, f4
/* 80224D20 00221C60  C0 22 BD E8 */	lfs f1, lbl_8051A148@sda21(r2)
/* 80224D24 00221C64  EC 05 00 32 */	fmuls f0, f5, f0
/* 80224D28 00221C68  D0 DF 00 B4 */	stfs f6, 0xb4(r31)
/* 80224D2C 00221C6C  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 80224D30 00221C70  EC 85 01 32 */	fmuls f4, f5, f4
/* 80224D34 00221C74  EC 00 08 FA */	fmadds f0, f0, f3, f1
/* 80224D38 00221C78  90 01 06 90 */	stw r0, 0x690(r1)
/* 80224D3C 00221C7C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80224D40 00221C80  90 01 06 A8 */	stw r0, 0x6a8(r1)
/* 80224D44 00221C84  FC 00 00 1E */	fctiwz f0, f0
/* 80224D48 00221C88  D0 DF 00 B8 */	stfs f6, 0xb8(r31)
/* 80224D4C 00221C8C  FC 20 08 1E */	fctiwz f1, f1
/* 80224D50 00221C90  D8 01 06 A0 */	stfd f0, 0x6a0(r1)
/* 80224D54 00221C94  D8 21 06 88 */	stfd f1, 0x688(r1)
/* 80224D58 00221C98  80 01 06 A4 */	lwz r0, 0x6a4(r1)
/* 80224D5C 00221C9C  80 81 06 8C */	lwz r4, 0x68c(r1)
/* 80224D60 00221CA0  54 00 10 3A */	slwi r0, r0, 2
/* 80224D64 00221CA4  54 84 10 3A */	slwi r4, r4, 2
/* 80224D68 00221CA8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80224D6C 00221CAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80224D70 00221CB0  90 81 06 94 */	stw r4, 0x694(r1)
/* 80224D74 00221CB4  90 01 06 AC */	stw r0, 0x6ac(r1)
/* 80224D78 00221CB8  C8 21 06 90 */	lfd f1, 0x690(r1)
/* 80224D7C 00221CBC  C8 01 06 A8 */	lfd f0, 0x6a8(r1)
/* 80224D80 00221CC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80224D84 00221CC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80224D88 00221CC8  D0 3F 00 BC */	stfs f1, 0xbc(r31)
/* 80224D8C 00221CCC  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 80224D90 00221CD0  D0 DF 00 C4 */	stfs f6, 0xc4(r31)
/* 80224D94 00221CD4  D0 DF 00 C8 */	stfs f6, 0xc8(r31)
/* 80224D98 00221CD8  4B DF F1 0D */	bl __nw__FUl
/* 80224D9C 00221CDC  7C 60 1B 79 */	or. r0, r3, r3
/* 80224DA0 00221CE0  41 82 00 40 */	beq lbl_80224DE0
/* 80224DA4 00221CE4  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80224DA8 00221CE8  38 C0 00 04 */	li r6, 4
/* 80224DAC 00221CEC  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80224DB0 00221CF0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80224DB4 00221CF4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80224DB8 00221CF8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80224DBC 00221CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80224DC0 00221D00  FC 20 10 1E */	fctiwz f1, f2
/* 80224DC4 00221D04  FC 00 00 1E */	fctiwz f0, f0
/* 80224DC8 00221D08  D8 21 06 B0 */	stfd f1, 0x6b0(r1)
/* 80224DCC 00221D0C  D8 01 06 B8 */	stfd f0, 0x6b8(r1)
/* 80224DD0 00221D10  80 81 06 B4 */	lwz r4, 0x6b4(r1)
/* 80224DD4 00221D14  80 A1 06 BC */	lwz r5, 0x6bc(r1)
/* 80224DD8 00221D18  4B E0 E1 45 */	bl __ct__10JUTTextureFii9_GXTexFmt
/* 80224DDC 00221D1C  7C 60 1B 78 */	mr r0, r3
lbl_80224DE0:
/* 80224DE0 00221D20  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80224DE4 00221D24  38 00 00 00 */	li r0, 0
/* 80224DE8 00221D28  38 60 00 40 */	li r3, 0x40
/* 80224DEC 00221D2C  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80224DF0 00221D30  98 04 00 32 */	stb r0, 0x32(r4)
/* 80224DF4 00221D34  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80224DF8 00221D38  98 04 00 33 */	stb r0, 0x33(r4)
/* 80224DFC 00221D3C  4B DF F0 A9 */	bl __nw__FUl
/* 80224E00 00221D40  7C 60 1B 79 */	or. r0, r3, r3
/* 80224E04 00221D44  41 82 00 58 */	beq lbl_80224E5C
/* 80224E08 00221D48  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80224E0C 00221D4C  38 C0 00 04 */	li r6, 4
/* 80224E10 00221D50  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80224E14 00221D54  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80224E18 00221D58  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80224E1C 00221D5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80224E20 00221D60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80224E24 00221D64  FC 20 10 1E */	fctiwz f1, f2
/* 80224E28 00221D68  FC 00 00 1E */	fctiwz f0, f0
/* 80224E2C 00221D6C  D8 21 06 C0 */	stfd f1, 0x6c0(r1)
/* 80224E30 00221D70  D8 01 06 C8 */	stfd f0, 0x6c8(r1)
/* 80224E34 00221D74  80 81 06 C4 */	lwz r4, 0x6c4(r1)
/* 80224E38 00221D78  80 A1 06 CC */	lwz r5, 0x6cc(r1)
/* 80224E3C 00221D7C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80224E40 00221D80  7C 80 22 14 */	add r4, r0, r4
/* 80224E44 00221D84  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 80224E48 00221D88  7C 84 0E 70 */	srawi r4, r4, 1
/* 80224E4C 00221D8C  7C 00 2A 14 */	add r0, r0, r5
/* 80224E50 00221D90  7C 05 0E 70 */	srawi r5, r0, 1
/* 80224E54 00221D94  4B E0 E0 C9 */	bl __ct__10JUTTextureFii9_GXTexFmt
/* 80224E58 00221D98  7C 60 1B 78 */	mr r0, r3
lbl_80224E5C:
/* 80224E5C 00221D9C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80224E60 00221DA0  38 00 00 00 */	li r0, 0
/* 80224E64 00221DA4  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80224E68 00221DA8  98 03 00 32 */	stb r0, 0x32(r3)
/* 80224E6C 00221DAC  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80224E70 00221DB0  98 03 00 33 */	stb r0, 0x33(r3)
/* 80224E74 00221DB4  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224E78 00221DB8  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80224E7C 00221DBC  4B F2 62 81 */	bl useSpecificFBTexture__Q24Game15BaseGameSectionFP10JUTTexture
/* 80224E80 00221DC0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80224E84 00221DC4  38 60 03 24 */	li r3, 0x324
/* 80224E88 00221DC8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80224E8C 00221DCC  FC 00 00 1E */	fctiwz f0, f0
/* 80224E90 00221DD0  80 9F 00 94 */	lwz r4, 0x94(r31)
/* 80224E94 00221DD4  FC 20 08 1E */	fctiwz f1, f1
/* 80224E98 00221DD8  D8 01 06 D8 */	stfd f0, 0x6d8(r1)
/* 80224E9C 00221DDC  D8 21 06 D0 */	stfd f1, 0x6d0(r1)
/* 80224EA0 00221DE0  80 01 06 DC */	lwz r0, 0x6dc(r1)
/* 80224EA4 00221DE4  80 A1 06 D4 */	lwz r5, 0x6d4(r1)
/* 80224EA8 00221DE8  90 04 01 5C */	stw r0, 0x17c(r4)
/* 80224EAC 00221DEC  90 A4 01 60 */	stw r5, 0x180(r4)
/* 80224EB0 00221DF0  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80224EB4 00221DF4  83 24 00 24 */	lwz r25, 0x24(r4)
/* 80224EB8 00221DF8  4B DF EF ED */	bl __nw__FUl
/* 80224EBC 00221DFC  7C 60 1B 79 */	or. r0, r3, r3
/* 80224EC0 00221E00  41 82 00 10 */	beq lbl_80224ED0
/* 80224EC4 00221E04  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80224EC8 00221E08  4B FF C1 61 */	bl __ct__Q34Game15IllustratedBook6CameraFP10Controller
/* 80224ECC 00221E0C  7C 60 1B 78 */	mr r0, r3
lbl_80224ED0:
/* 80224ED0 00221E10  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80224ED4 00221E14  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80224ED8 00221E18  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80224EDC 00221E1C  48 1E C5 2D */	bl add__5CNodeFP5CNode
/* 80224EE0 00221E20  38 60 00 3C */	li r3, 0x3c
/* 80224EE4 00221E24  4B DF EF C1 */	bl __nw__FUl
/* 80224EE8 00221E28  7C 60 1B 79 */	or. r0, r3, r3
/* 80224EEC 00221E2C  41 82 00 0C */	beq lbl_80224EF8
/* 80224EF0 00221E30  48 02 BA 99 */	bl __ct__Q24Game9CameraMgrFv
/* 80224EF4 00221E34  7C 60 1B 78 */	mr r0, r3
lbl_80224EF8:
/* 80224EF8 00221E38  90 0D 96 A0 */	stw r0, cameraMgr__4Game@sda21(r13)
/* 80224EFC 00221E3C  7C 03 03 78 */	mr r3, r0
/* 80224F00 00221E40  48 02 BA D1 */	bl loadResource__Q24Game9CameraMgrFv
/* 80224F04 00221E44  80 6D 96 A0 */	lwz r3, cameraMgr__4Game@sda21(r13)
/* 80224F08 00221E48  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80224F0C 00221E4C  48 02 D9 05 */	bl setZukanCamera__Q24Game9CameraMgrFP12LookAtCamera
/* 80224F10 00221E50  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224F14 00221E54  80 8D 96 A0 */	lwz r4, cameraMgr__4Game@sda21(r13)
/* 80224F18 00221E58  4B F4 00 99 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80224F1C 00221E5C  38 60 00 18 */	li r3, 0x18
/* 80224F20 00221E60  4B DF EF 85 */	bl __nw__FUl
/* 80224F24 00221E64  7C 60 1B 79 */	or. r0, r3, r3
/* 80224F28 00221E68  41 82 00 10 */	beq lbl_80224F38
/* 80224F2C 00221E6C  7F 24 CB 78 */	mr r4, r25
/* 80224F30 00221E70  48 1F FF 61 */	bl __ct__17HorizonalSplitterFP8Graphics
/* 80224F34 00221E74  7C 60 1B 78 */	mr r0, r3
lbl_80224F38:
/* 80224F38 00221E78  7C 03 03 78 */	mr r3, r0
/* 80224F3C 00221E7C  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 80224F40 00221E80  81 83 00 00 */	lwz r12, 0(r3)
/* 80224F44 00221E84  81 8C 00 08 */	lwz r12, 8(r12)
/* 80224F48 00221E88  7D 89 03 A6 */	mtctr r12
/* 80224F4C 00221E8C  4E 80 04 21 */	bctrl 
/* 80224F50 00221E90  7F 23 CB 78 */	mr r3, r25
/* 80224F54 00221E94  38 80 00 00 */	li r4, 0
/* 80224F58 00221E98  48 20 06 99 */	bl getViewport__8GraphicsFi
/* 80224F5C 00221E9C  7C 60 1B 78 */	mr r0, r3
/* 80224F60 00221EA0  7F 23 CB 78 */	mr r3, r25
/* 80224F64 00221EA4  7C 1A 03 78 */	mr r26, r0
/* 80224F68 00221EA8  38 80 00 01 */	li r4, 1
/* 80224F6C 00221EAC  48 20 06 85 */	bl getViewport__8GraphicsFi
/* 80224F70 00221EB0  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80224F74 00221EB4  7C 7B 1B 78 */	mr r27, r3
/* 80224F78 00221EB8  7F 43 D3 78 */	mr r3, r26
/* 80224F7C 00221EBC  90 1A 00 44 */	stw r0, 0x44(r26)
/* 80224F80 00221EC0  48 20 03 11 */	bl updateCameraAspect__8ViewportFv
/* 80224F84 00221EC4  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80224F88 00221EC8  7F 63 DB 78 */	mr r3, r27
/* 80224F8C 00221ECC  90 1B 00 44 */	stw r0, 0x44(r27)
/* 80224F90 00221ED0  48 20 03 01 */	bl updateCameraAspect__8ViewportFv
/* 80224F94 00221ED4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80224F98 00221ED8  7F 43 D3 78 */	mr r3, r26
/* 80224F9C 00221EDC  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80224FA0 00221EE0  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80224FA4 00221EE4  D0 3A 00 48 */	stfs f1, 0x48(r26)
/* 80224FA8 00221EE8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80224FAC 00221EEC  D0 3A 00 4C */	stfs f1, 0x4c(r26)
/* 80224FB0 00221EF0  D0 1A 00 50 */	stfs f0, 0x50(r26)
/* 80224FB4 00221EF4  D0 1A 00 54 */	stfs f0, 0x54(r26)
/* 80224FB8 00221EF8  48 20 03 C9 */	bl "setRect__8ViewportFR7Rect<f>"
/* 80224FBC 00221EFC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80224FC0 00221F00  7F 24 CB 78 */	mr r4, r25
/* 80224FC4 00221F04  48 19 6B 65 */	bl setViewport__11ParticleMgrFR8Graphics
/* 80224FC8 00221F08  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80224FCC 00221F0C  48 19 67 4D */	bl start__11ParticleMgrFv
/* 80224FD0 00221F10  38 60 00 50 */	li r3, 0x50
/* 80224FD4 00221F14  4B DF EE D1 */	bl __nw__FUl
/* 80224FD8 00221F18  7C 60 1B 79 */	or. r0, r3, r3
/* 80224FDC 00221F1C  41 82 00 10 */	beq lbl_80224FEC
/* 80224FE0 00221F20  38 80 00 02 */	li r4, 2
/* 80224FE4 00221F24  48 01 C3 E1 */	bl __ct__Q24Game9ShadowMgrFi
/* 80224FE8 00221F28  7C 60 1B 78 */	mr r0, r3
lbl_80224FEC:
/* 80224FEC 00221F2C  90 0D 96 80 */	stw r0, shadowMgr__4Game@sda21(r13)
/* 80224FF0 00221F30  38 80 00 00 */	li r4, 0
/* 80224FF4 00221F34  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80224FF8 00221F38  83 23 00 24 */	lwz r25, 0x24(r3)
/* 80224FFC 00221F3C  7F 23 CB 78 */	mr r3, r25
/* 80225000 00221F40  48 20 05 F1 */	bl getViewport__8GraphicsFi
/* 80225004 00221F44  7C 60 1B 78 */	mr r0, r3
/* 80225008 00221F48  7F 23 CB 78 */	mr r3, r25
/* 8022500C 00221F4C  7C 19 03 78 */	mr r25, r0
/* 80225010 00221F50  38 80 00 01 */	li r4, 1
/* 80225014 00221F54  48 20 05 DD */	bl getViewport__8GraphicsFi
/* 80225018 00221F58  7C 60 1B 78 */	mr r0, r3
/* 8022501C 00221F5C  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80225020 00221F60  7C 1A 03 78 */	mr r26, r0
/* 80225024 00221F64  7F 24 CB 78 */	mr r4, r25
/* 80225028 00221F68  38 A0 00 00 */	li r5, 0
/* 8022502C 00221F6C  48 01 C6 2D */	bl setViewport__Q24Game9ShadowMgrFP8Viewporti
/* 80225030 00221F70  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80225034 00221F74  7F 44 D3 78 */	mr r4, r26
/* 80225038 00221F78  38 A0 00 01 */	li r5, 1
/* 8022503C 00221F7C  48 01 C6 1D */	bl setViewport__Q24Game9ShadowMgrFP8Viewporti
/* 80225040 00221F80  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80225044 00221F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80225048 00221F88  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8022504C 00221F8C  7D 89 03 A6 */	mtctr r12
/* 80225050 00221F90  4E 80 04 21 */	bctrl 
/* 80225054 00221F94  80 0D 96 A8 */	lwz r0, rumbleMgr__4Game@sda21(r13)
/* 80225058 00221F98  28 00 00 00 */	cmplwi r0, 0
/* 8022505C 00221F9C  40 82 00 50 */	bne lbl_802250AC
/* 80225060 00221FA0  38 60 00 34 */	li r3, 0x34
/* 80225064 00221FA4  4B DF EE 41 */	bl __nw__FUl
/* 80225068 00221FA8  7C 60 1B 79 */	or. r0, r3, r3
/* 8022506C 00221FAC  41 82 00 0C */	beq lbl_80225078
/* 80225070 00221FB0  48 02 E2 95 */	bl __ct__Q24Game9RumbleMgrFv
/* 80225074 00221FB4  7C 60 1B 78 */	mr r0, r3
lbl_80225078:
/* 80225078 00221FB8  90 0D 96 A8 */	stw r0, rumbleMgr__4Game@sda21(r13)
/* 8022507C 00221FBC  7C 03 03 78 */	mr r3, r0
/* 80225080 00221FC0  48 02 E2 CD */	bl loadResource__Q24Game9RumbleMgrFv
/* 80225084 00221FC4  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80225088 00221FC8  48 02 E4 1D */	bl init__Q24Game9RumbleMgrFv
/* 8022508C 00221FCC  80 BF 00 98 */	lwz r5, 0x98(r31)
/* 80225090 00221FD0  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80225094 00221FD4  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80225098 00221FD8  38 A5 01 74 */	addi r5, r5, 0x174
/* 8022509C 00221FDC  48 02 EA D9 */	bl "setZukanRumble__Q24Game9RumbleMgrFP10ControllerP10Vector3<f>"
/* 802250A0 00221FE0  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 802250A4 00221FE4  80 8D 96 A8 */	lwz r4, rumbleMgr__4Game@sda21(r13)
/* 802250A8 00221FE8  4B F3 FF 09 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
lbl_802250AC:
/* 802250AC 00221FEC  38 61 00 28 */	addi r3, r1, 0x28
/* 802250B0 00221FF0  48 11 04 01 */	bl __ct__Q26PSGame9SceneInfoFv
/* 802250B4 00221FF4  38 00 00 01 */	li r0, 1
/* 802250B8 00221FF8  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802250BC 00221FFC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250C0 00222000  81 83 00 00 */	lwz r12, 0(r3)
/* 802250C4 00222004  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802250C8 00222008  7D 89 03 A6 */	mtctr r12
/* 802250CC 0022200C  4E 80 04 21 */	bctrl 
/* 802250D0 00222010  90 61 00 30 */	stw r3, 0x30(r1)
/* 802250D4 00222014  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250D8 00222018  81 83 00 00 */	lwz r12, 0(r3)
/* 802250DC 0022201C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802250E0 00222020  7D 89 03 A6 */	mtctr r12
/* 802250E4 00222024  4E 80 04 21 */	bctrl 
/* 802250E8 00222028  90 61 00 38 */	stw r3, 0x38(r1)
/* 802250EC 0022202C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250F0 00222030  81 83 00 00 */	lwz r12, 0(r3)
/* 802250F4 00222034  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 802250F8 00222038  7D 89 03 A6 */	mtctr r12
/* 802250FC 0022203C  4E 80 04 21 */	bctrl 
/* 80225100 00222040  C0 22 BE 9C */	lfs f1, lbl_8051A1FC@sda21(r2)
/* 80225104 00222044  38 80 00 00 */	li r4, 0
/* 80225108 00222048  C0 02 BE A0 */	lfs f0, lbl_8051A200@sda21(r2)
/* 8022510C 0022204C  38 A0 00 01 */	li r5, 1
/* 80225110 00222050  90 61 00 40 */	stw r3, 0x40(r1)
/* 80225114 00222054  38 61 00 28 */	addi r3, r1, 0x28
/* 80225118 00222058  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8022511C 0022205C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80225120 00222060  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80225124 00222064  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80225128 00222068  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8022512C 0022206C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80225130 00222070  48 11 03 B9 */	bl setStageFlag__Q26PSGame9SceneInfoFQ36PSGame9SceneInfo7FlagDefQ36PSGame9SceneInfo12FlagBitShift
/* 80225134 00222074  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80225138 00222078  38 60 00 0D */	li r3, 0xd
/* 8022513C 0022207C  98 61 00 2E */	stb r3, 0x2e(r1)
/* 80225140 00222080  28 00 00 00 */	cmplwi r0, 0
/* 80225144 00222084  40 82 00 18 */	bne lbl_8022515C
/* 80225148 00222088  38 7E 01 90 */	addi r3, r30, 0x190
/* 8022514C 0022208C  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225150 00222090  38 80 01 D3 */	li r4, 0x1d3
/* 80225154 00222094  4C C6 31 82 */	crclr 6
/* 80225158 00222098  4B E0 54 E9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022515C:
/* 8022515C 0022209C  80 6D 98 80 */	lwz r3, spSceneMgr__8PSSystem@sda21(r13)
/* 80225160 002220A0  38 81 00 28 */	addi r4, r1, 0x28
/* 80225164 002220A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80225168 002220A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022516C 002220AC  7D 89 03 A6 */	mtctr r12
/* 80225170 002220B0  4E 80 04 21 */	bctrl 
/* 80225174 002220B4  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80225178 002220B8  28 00 00 00 */	cmplwi r0, 0
/* 8022517C 002220BC  40 82 00 18 */	bne lbl_80225194
/* 80225180 002220C0  38 7E 01 90 */	addi r3, r30, 0x190
/* 80225184 002220C4  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225188 002220C8  38 80 01 D3 */	li r4, 0x1d3
/* 8022518C 002220CC  4C C6 31 82 */	crclr 6
/* 80225190 002220D0  4B E0 54 B1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225194:
/* 80225194 002220D4  83 2D 98 80 */	lwz r25, spSceneMgr__8PSSystem@sda21(r13)
/* 80225198 002220D8  80 19 00 04 */	lwz r0, 4(r25)
/* 8022519C 002220DC  28 00 00 00 */	cmplwi r0, 0
/* 802251A0 002220E0  40 82 00 18 */	bne lbl_802251B8
/* 802251A4 002220E4  38 7E 01 9C */	addi r3, r30, 0x19c
/* 802251A8 002220E8  38 BE 00 90 */	addi r5, r30, 0x90
/* 802251AC 002220EC  38 80 00 C7 */	li r4, 0xc7
/* 802251B0 002220F0  4C C6 31 82 */	crclr 6
/* 802251B4 002220F4  4B E0 54 8D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802251B8:
/* 802251B8 002220F8  80 79 00 04 */	lwz r3, 4(r25)
/* 802251BC 002220FC  80 63 00 04 */	lwz r3, 4(r3)
/* 802251C0 00222100  81 83 00 00 */	lwz r12, 0(r3)
/* 802251C4 00222104  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802251C8 00222108  7D 89 03 A6 */	mtctr r12
/* 802251CC 0022210C  4E 80 04 21 */	bctrl 
/* 802251D0 00222110  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 802251D4 00222114  28 00 00 00 */	cmplwi r0, 0
/* 802251D8 00222118  40 82 00 18 */	bne lbl_802251F0
/* 802251DC 0022211C  38 7E 01 90 */	addi r3, r30, 0x190
/* 802251E0 00222120  38 BE 00 90 */	addi r5, r30, 0x90
/* 802251E4 00222124  38 80 01 D3 */	li r4, 0x1d3
/* 802251E8 00222128  4C C6 31 82 */	crclr 6
/* 802251EC 0022212C  4B E0 54 55 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802251F0:
/* 802251F0 00222130  83 2D 98 80 */	lwz r25, spSceneMgr__8PSSystem@sda21(r13)
/* 802251F4 00222134  80 19 00 04 */	lwz r0, 4(r25)
/* 802251F8 00222138  28 00 00 00 */	cmplwi r0, 0
/* 802251FC 0022213C  40 82 00 18 */	bne lbl_80225214
/* 80225200 00222140  38 7E 01 9C */	addi r3, r30, 0x19c
/* 80225204 00222144  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225208 00222148  38 80 00 C7 */	li r4, 0xc7
/* 8022520C 0022214C  4C C6 31 82 */	crclr 6
/* 80225210 00222150  4B E0 54 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225214:
/* 80225214 00222154  80 79 00 04 */	lwz r3, 4(r25)
/* 80225218 00222158  80 63 00 04 */	lwz r3, 4(r3)
/* 8022521C 0022215C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225220 00222160  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80225224 00222164  7D 89 03 A6 */	mtctr r12
/* 80225228 00222168  4E 80 04 21 */	bctrl 
/* 8022522C 0022216C  7F A3 EB 78 */	mr r3, r29
/* 80225230 00222170  38 9E 02 70 */	addi r4, r30, 0x270
/* 80225234 00222174  81 9D 00 00 */	lwz r12, 0(r29)
/* 80225238 00222178  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8022523C 0022217C  7D 89 03 A6 */	mtctr r12
/* 80225240 00222180  4E 80 04 21 */	bctrl 
/* 80225244 00222184  7C 79 1B 79 */	or. r25, r3, r3
/* 80225248 00222188  40 82 00 18 */	bne lbl_80225260
/* 8022524C 0022218C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225250 00222190  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225254 00222194  38 80 0A 2B */	li r4, 0xa2b
/* 80225258 00222198  4C C6 31 82 */	crclr 6
/* 8022525C 0022219C  4B E0 53 E5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225260:
/* 80225260 002221A0  7F 24 CB 78 */	mr r4, r25
/* 80225264 002221A4  38 61 02 60 */	addi r3, r1, 0x260
/* 80225268 002221A8  38 A0 FF FF */	li r5, -1
/* 8022526C 002221AC  48 1F 06 8D */	bl __ct__9RamStreamFPvi
/* 80225270 002221B0  38 00 00 01 */	li r0, 1
/* 80225274 002221B4  2C 00 00 01 */	cmpwi r0, 1
/* 80225278 002221B8  90 01 02 6C */	stw r0, 0x26c(r1)
/* 8022527C 002221BC  40 82 00 0C */	bne lbl_80225288
/* 80225280 002221C0  38 00 00 00 */	li r0, 0
/* 80225284 002221C4  90 01 06 74 */	stw r0, 0x674(r1)
lbl_80225288:
/* 80225288 002221C8  38 60 01 00 */	li r3, 0x100
/* 8022528C 002221CC  4B DF EC 19 */	bl __nw__FUl
/* 80225290 002221D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80225294 002221D4  41 82 00 0C */	beq lbl_802252A0
/* 80225298 002221D8  4B F8 81 A1 */	bl __ct__Q24Game10CourseInfoFv
/* 8022529C 002221DC  7C 60 1B 78 */	mr r0, r3
lbl_802252A0:
/* 802252A0 002221E0  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802252A4 002221E4  38 81 02 60 */	addi r4, r1, 0x260
/* 802252A8 002221E8  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252AC 002221EC  4B F8 82 E5 */	bl read__Q24Game10CourseInfoFR6Stream
/* 802252B0 002221F0  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252B4 002221F4  4B F8 82 D9 */	bl dump__Q24Game10CourseInfoFv
/* 802252B8 002221F8  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252BC 002221FC  38 80 00 00 */	li r4, 0
/* 802252C0 00222200  4B F8 8D 61 */	bl createMapMgr__Q24Game6StagesFPQ24Game10CourseInfoPQ24Game8RouteMgr
/* 802252C4 00222204  38 60 00 48 */	li r3, 0x48
/* 802252C8 00222208  4B DF EB DD */	bl __nw__FUl
/* 802252CC 0022220C  7C 65 1B 79 */	or. r5, r3, r3
/* 802252D0 00222210  41 82 00 0C */	beq lbl_802252DC
/* 802252D4 00222214  4B F3 2F E9 */	bl __ct__Q24Game11CellPyramidFv
/* 802252D8 00222218  7C 65 1B 78 */	mr r5, r3
lbl_802252DC:
/* 802252DC 0022221C  C0 22 BE A4 */	lfs f1, lbl_8051A204@sda21(r2)
/* 802252E0 00222220  38 00 00 00 */	li r0, 0
/* 802252E4 00222224  C0 02 BE A8 */	lfs f0, lbl_8051A208@sda21(r2)
/* 802252E8 00222228  38 81 00 18 */	addi r4, r1, 0x18
/* 802252EC 0022222C  90 AD 92 C8 */	stw r5, cellMgr__4Game@sda21(r13)
/* 802252F0 00222230  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 802252F4 00222234  90 0D 92 CC */	stw r0, platCellMgr__4Game@sda21(r13)
/* 802252F8 00222238  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802252FC 0022223C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80225300 00222240  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80225304 00222244  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80225308 00222248  81 83 00 04 */	lwz r12, 4(r3)
/* 8022530C 0022224C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80225310 00222250  7D 89 03 A6 */	mtctr r12
/* 80225314 00222254  4E 80 04 21 */	bctrl 
/* 80225318 00222258  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8022531C 0022225C  4B DF E4 99 */	bl getFreeSize__7JKRHeapFv
/* 80225320 00222260  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80225324 00222264  38 81 00 18 */	addi r4, r1, 0x18
/* 80225328 00222268  C0 22 BE AC */	lfs f1, lbl_8051A20C@sda21(r2)
/* 8022532C 0022226C  4B F3 36 E1 */	bl create__Q24Game11CellPyramidFR10BoundBox2df
/* 80225330 00222270  80 8D 93 08 */	lwz r4, mapMgr__4Game@sda21(r13)
/* 80225334 00222274  28 04 00 00 */	cmplwi r4, 0
/* 80225338 00222278  41 82 00 08 */	beq lbl_80225340
/* 8022533C 0022227C  80 84 00 00 */	lwz r4, 0(r4)
lbl_80225340:
/* 80225340 00222280  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80225344 00222284  4B F9 0C 05 */	bl addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80225348 00222288  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 8022534C 0022228C  38 80 00 02 */	li r4, 2
/* 80225350 00222290  4B F2 C9 E5 */	bl "alloc__27MonoObjectMgr<Q24Game4Navi>Fi"
/* 80225354 00222294  38 80 00 00 */	li r4, 0
/* 80225358 00222298  38 C0 FF FF */	li r6, -1
/* 8022535C 0022229C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80225360 002222A0  38 60 00 40 */	li r3, 0x40
/* 80225364 002222A4  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225368 002222A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022536C 002222AC  80 AD 95 20 */	lwz r5, mgr__Q24Game13PelletOtakara@sda21(r13)
/* 80225370 002222B0  90 81 00 08 */	stw r4, 8(r1)
/* 80225374 002222B4  80 8D 95 28 */	lwz r4, mgr__Q24Game10PelletItem@sda21(r13)
/* 80225378 002222B8  98 C1 00 14 */	stb r6, 0x14(r1)
/* 8022537C 002222BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80225380 002222C0  80 05 00 08 */	lwz r0, 8(r5)
/* 80225384 002222C4  90 01 00 08 */	stw r0, 8(r1)
/* 80225388 002222C8  80 04 00 08 */	lwz r0, 8(r4)
/* 8022538C 002222CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80225390 002222D0  4B DF EB 15 */	bl __nw__FUl
/* 80225394 002222D4  7C 60 1B 79 */	or. r0, r3, r3
/* 80225398 002222D8  41 82 00 0C */	beq lbl_802253A4
/* 8022539C 002222DC  48 00 20 7D */	bl __ct__Q34Game12ResultTexMgr3MgrFv
/* 802253A0 002222E0  7C 60 1B 78 */	mr r0, r3
lbl_802253A4:
/* 802253A4 002222E4  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 802253A8 002222E8  38 81 00 08 */	addi r4, r1, 8
/* 802253AC 002222EC  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 802253B0 002222F0  48 00 21 19 */	bl create__Q34Game12ResultTexMgr3MgrFRQ34Game12ResultTexMgr3Arg
/* 802253B4 002222F4  38 60 00 40 */	li r3, 0x40
/* 802253B8 002222F8  4B DF EA ED */	bl __nw__FUl
/* 802253BC 002222FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 802253C0 00222300  41 82 00 20 */	beq lbl_802253E0
/* 802253C4 00222304  7F 99 E3 78 */	mr r25, r28
/* 802253C8 00222308  48 00 E2 45 */	bl __ct__Q34Game11IconTexture3MgrFv
/* 802253CC 0022230C  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@ha
/* 802253D0 00222310  38 79 00 20 */	addi r3, r25, 0x20
/* 802253D4 00222314  38 04 0D 98 */	addi r0, r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@l
/* 802253D8 00222318  90 19 00 00 */	stw r0, 0(r25)
/* 802253DC 0022231C  48 00 E0 A9 */	bl __ct__Q34Game11IconTexture6LoaderFv
lbl_802253E0:
/* 802253E0 00222320  93 9F 00 EC */	stw r28, 0xec(r31)
/* 802253E4 00222324  38 80 00 66 */	li r4, 0x66
/* 802253E8 00222328  83 3F 00 EC */	lwz r25, 0xec(r31)
/* 802253EC 0022232C  7F 23 CB 78 */	mr r3, r25
/* 802253F0 00222330  48 00 E2 F1 */	bl create__Q34Game11IconTexture3MgrFi
/* 802253F4 00222334  38 79 00 20 */	addi r3, r25, 0x20
/* 802253F8 00222338  38 9E 00 44 */	addi r4, r30, 0x44
/* 802253FC 0022233C  48 00 E1 5D */	bl loadResource__Q34Game11IconTexture6LoaderFPc
/* 80225400 00222340  38 79 00 20 */	addi r3, r25, 0x20
/* 80225404 00222344  38 9E 00 68 */	addi r4, r30, 0x68
/* 80225408 00222348  48 00 E1 D5 */	bl getResTIMG__Q34Game11IconTexture6LoaderFPc
/* 8022540C 0022234C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80225410 00222350  40 82 00 18 */	bne lbl_80225428
/* 80225414 00222354  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225418 00222358  38 BE 00 90 */	addi r5, r30, 0x90
/* 8022541C 0022235C  38 80 01 D2 */	li r4, 0x1d2
/* 80225420 00222360  4C C6 31 82 */	crclr 6
/* 80225424 00222364  4B E0 52 1D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225428:
/* 80225428 00222368  3B 60 00 00 */	li r27, 0
/* 8022542C 0022236C  3F 80 00 01 */	lis r28, 0x0000FFFF@ha
lbl_80225430:
/* 80225430 00222370  7F 63 DB 78 */	mr r3, r27
/* 80225434 00222374  38 9C FF FF */	addi r4, r28, 0x0000FFFF@l
/* 80225438 00222378  4B EF DE A5 */	bl getEnemyName__Q24Game13EnemyInfoFuncFii
/* 8022543C 0022237C  28 03 00 00 */	cmplwi r3, 0
/* 80225440 00222380  41 82 00 50 */	beq lbl_80225490
/* 80225444 00222384  7C 65 1B 78 */	mr r5, r3
/* 80225448 00222388  38 61 00 60 */	addi r3, r1, 0x60
/* 8022544C 0022238C  38 9E 00 9C */	addi r4, r30, 0x9c
/* 80225450 00222390  4C C6 31 82 */	crclr 6
/* 80225454 00222394  4B EA 1F E5 */	bl sprintf
/* 80225458 00222398  38 79 00 20 */	addi r3, r25, 0x20
/* 8022545C 0022239C  38 81 00 60 */	addi r4, r1, 0x60
/* 80225460 002223A0  48 00 E1 7D */	bl getResTIMG__Q34Game11IconTexture6LoaderFPc
/* 80225464 002223A4  7C 65 1B 79 */	or. r5, r3, r3
/* 80225468 002223A8  41 82 00 14 */	beq lbl_8022547C
/* 8022546C 002223AC  7F 23 CB 78 */	mr r3, r25
/* 80225470 002223B0  7F 64 DB 78 */	mr r4, r27
/* 80225474 002223B4  48 00 E2 F1 */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
/* 80225478 002223B8  48 00 00 28 */	b lbl_802254A0
lbl_8022547C:
/* 8022547C 002223BC  7F 23 CB 78 */	mr r3, r25
/* 80225480 002223C0  7F 64 DB 78 */	mr r4, r27
/* 80225484 002223C4  7F 45 D3 78 */	mr r5, r26
/* 80225488 002223C8  48 00 E2 DD */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
/* 8022548C 002223CC  48 00 00 14 */	b lbl_802254A0
lbl_80225490:
/* 80225490 002223D0  7F 23 CB 78 */	mr r3, r25
/* 80225494 002223D4  7F 64 DB 78 */	mr r4, r27
/* 80225498 002223D8  7F 45 D3 78 */	mr r5, r26
/* 8022549C 002223DC  48 00 E2 C9 */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
lbl_802254A0:
/* 802254A0 002223E0  3B 7B 00 01 */	addi r27, r27, 1
/* 802254A4 002223E4  2C 1B 00 66 */	cmpwi r27, 0x66
/* 802254A8 002223E8  41 80 FF 88 */	blt lbl_80225430
/* 802254AC 002223EC  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 802254B0 002223F0  7F A3 EB 78 */	mr r3, r29
/* 802254B4 002223F4  90 0D 92 54 */	stw r0, sCamera__Q34Game15IllustratedBook5Parms@sda21(r13)
/* 802254B8 002223F8  93 ED 92 50 */	stw r31, sZukanState__Q34Game15IllustratedBook5Parms@sda21(r13)
/* 802254BC 002223FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802254C0 00222400  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802254C4 00222404  7D 89 03 A6 */	mtctr r12
/* 802254C8 00222408  4E 80 04 21 */	bctrl 
/* 802254CC 0022240C  BB 21 06 E4 */	lmw r25, 0x6e4(r1)
/* 802254D0 00222410  80 01 07 04 */	lwz r0, 0x704(r1)
/* 802254D4 00222414  7C 08 03 A6 */	mtlr r0
/* 802254D8 00222418  38 21 07 00 */	addi r1, r1, 0x700
/* 802254DC 0022241C  4E 80 00 20 */	blr 
.else
.global dvdloadA__Q34Game10SingleGame10ZukanStateFv
dvdloadA__Q34Game10SingleGame10ZukanStateFv:
/* 80224B4C 00221A8C  94 21 F9 00 */	stwu r1, -0x700(r1)
/* 80224B50 00221A90  7C 08 02 A6 */	mflr r0
/* 80224B54 00221A94  90 01 07 04 */	stw r0, 0x704(r1)
/* 80224B58 00221A98  BF 21 06 E4 */	stmw r25, 0x6e4(r1)
/* 80224B5C 00221A9C  7C 7F 1B 78 */	mr r31, r3
/* 80224B60 00221AA0  3C 60 80 48 */	lis r3, lbl_80482E60@ha
/* 80224B64 00221AA4  3B C3 2E 60 */	addi r30, r3, lbl_80482E60@l
/* 80224B68 00221AA8  83 3F 00 D4 */	lwz r25, 0xd4(r31)
/* 80224B6C 00221AAC  7F 23 CB 78 */	mr r3, r25
/* 80224B70 00221AB0  4B DF EC 45 */	bl getFreeSize__7JKRHeapFv
/* 80224B74 00221AB4  7F 24 CB 78 */	mr r4, r25
/* 80224B78 00221AB8  38 A0 00 01 */	li r5, 1
/* 80224B7C 00221ABC  4B DF B3 4D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80224B80 00221AC0  90 7F 00 D8 */	stw r3, 0xd8(r31)
/* 80224B84 00221AC4  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80224B88 00221AC8  4B DF EA 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80224B8C 00221ACC  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80224B90 00221AD0  3C 80 80 4C */	lis r4, "sDirName__28@unnamed@singleGS_Zukan_cpp@"@ha
/* 80224B94 00221AD4  38 84 0A 5C */	addi r4, r4, "sDirName__28@unnamed@singleGS_Zukan_cpp@"@l
/* 80224B98 00221AD8  38 A2 BE 98 */	addi r5, r2, lbl_8051A1F8@sda21
/* 80224B9C 00221ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80224BA0 00221AE0  38 61 01 60 */	addi r3, r1, 0x160
/* 80224BA4 00221AE4  7C C4 00 2E */	lwzx r6, r4, r0
/* 80224BA8 00221AE8  38 9E 02 40 */	addi r4, r30, 0x240
/* 80224BAC 00221AEC  4C C6 31 82 */	crclr 6
/* 80224BB0 00221AF0  4B EA 28 89 */	bl sprintf
/* 80224BB4 00221AF4  38 61 01 60 */	addi r3, r1, 0x160
/* 80224BB8 00221AF8  38 80 00 01 */	li r4, 1
/* 80224BBC 00221AFC  38 A0 00 00 */	li r5, 0
/* 80224BC0 00221B00  38 C0 00 02 */	li r6, 2
/* 80224BC4 00221B04  4B DF 65 6D */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80224BC8 00221B08  7C 7D 1B 79 */	or. r29, r3, r3
/* 80224BCC 00221B0C  40 82 00 18 */	bne lbl_80224BE4
/* 80224BD0 00221B10  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80224BD4 00221B14  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224BD8 00221B18  38 80 09 99 */	li r4, 0x999
/* 80224BDC 00221B1C  4C C6 31 82 */	crclr 6
/* 80224BE0 00221B20  4B E0 5A 61 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224BE4:
/* 80224BE4 00221B24  3C 60 00 01 */	lis r3, 0x00010280@ha
/* 80224BE8 00221B28  38 63 02 80 */	addi r3, r3, 0x00010280@l
/* 80224BEC 00221B2C  4B DF F2 B9 */	bl __nw__FUl
/* 80224BF0 00221B30  7C 60 1B 79 */	or. r0, r3, r3
/* 80224BF4 00221B34  41 82 00 0C */	beq lbl_80224C00
/* 80224BF8 00221B38  4B F0 D5 85 */	bl __ct__Q34Game15IllustratedBook5ParmsFv
/* 80224BFC 00221B3C  7C 60 1B 78 */	mr r0, r3
lbl_80224C00:
/* 80224C00 00221B40  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80224C04 00221B44  7F A4 EB 78 */	mr r4, r29
/* 80224C08 00221B48  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80224C0C 00221B4C  4B F0 DA 55 */	bl loadFile__Q34Game15IllustratedBook5ParmsFP10JKRArchive
/* 80224C10 00221B50  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224C14 00221B54  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80224C18 00221B58  4B F4 03 99 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80224C1C 00221B5C  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C20 00221B60  28 00 00 00 */	cmplwi r0, 0
/* 80224C24 00221B64  41 82 00 18 */	beq lbl_80224C3C
/* 80224C28 00221B68  38 7E 02 64 */	addi r3, r30, 0x264
/* 80224C2C 00221B6C  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224C30 00221B70  38 80 00 76 */	li r4, 0x76
/* 80224C34 00221B74  4C C6 31 82 */	crclr 6
/* 80224C38 00221B78  4B E0 5A 09 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224C3C:
/* 80224C3C 00221B7C  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C40 00221B80  28 00 00 00 */	cmplwi r0, 0
/* 80224C44 00221B84  40 82 00 6C */	bne lbl_80224CB0
/* 80224C48 00221B88  38 60 00 30 */	li r3, 0x30
/* 80224C4C 00221B8C  4B DF F2 59 */	bl __nw__FUl
/* 80224C50 00221B90  7C 65 1B 79 */	or. r5, r3, r3
/* 80224C54 00221B94  41 82 00 58 */	beq lbl_80224CAC
/* 80224C58 00221B98  7C B9 2B 78 */	mr r25, r5
/* 80224C5C 00221B9C  4B E0 1C 75 */	bl initiate__10JSUPtrListFv
/* 80224C60 00221BA0  3C 60 80 4B */	lis r3, "__vt__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@ha
/* 80224C64 00221BA4  34 99 00 0C */	addic. r4, r25, 0xc
/* 80224C68 00221BA8  38 03 0C E0 */	addi r0, r3, "__vt__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@l
/* 80224C6C 00221BAC  90 19 00 0C */	stw r0, 0xc(r25)
/* 80224C70 00221BB0  41 82 00 08 */	beq lbl_80224C78
/* 80224C74 00221BB4  38 84 FF F4 */	addi r4, r4, -12
lbl_80224C78:
/* 80224C78 00221BB8  90 8D 91 BC */	stw r4, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224C7C 00221BBC  38 79 00 10 */	addi r3, r25, 0x10
/* 80224C80 00221BC0  4B DF 83 4D */	bl __ct__11JKRDisposerFv
/* 80224C84 00221BC4  3C 60 80 4F */	lis r3, __vt__Q23PSM6ObjMgr@ha
/* 80224C88 00221BC8  38 00 00 00 */	li r0, 0
/* 80224C8C 00221BCC  38 63 F2 0C */	addi r3, r3, __vt__Q23PSM6ObjMgr@l
/* 80224C90 00221BD0  7F 25 CB 78 */	mr r5, r25
/* 80224C94 00221BD4  90 79 00 28 */	stw r3, 0x28(r25)
/* 80224C98 00221BD8  38 83 00 08 */	addi r4, r3, 8
/* 80224C9C 00221BDC  38 63 00 14 */	addi r3, r3, 0x14
/* 80224CA0 00221BE0  90 99 00 0C */	stw r4, 0xc(r25)
/* 80224CA4 00221BE4  90 79 00 10 */	stw r3, 0x10(r25)
/* 80224CA8 00221BE8  90 19 00 2C */	stw r0, 0x2c(r25)
lbl_80224CAC:
/* 80224CAC 00221BEC  90 AD 91 BC */	stw r5, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
lbl_80224CB0:
/* 80224CB0 00221BF0  80 0D 91 BC */	lwz r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80224CB4 00221BF4  28 00 00 00 */	cmplwi r0, 0
/* 80224CB8 00221BF8  40 82 00 18 */	bne lbl_80224CD0
/* 80224CBC 00221BFC  38 7E 02 64 */	addi r3, r30, 0x264
/* 80224CC0 00221C00  38 BE 00 90 */	addi r5, r30, 0x90
/* 80224CC4 00221C04  38 80 00 79 */	li r4, 0x79
/* 80224CC8 00221C08  4C C6 31 82 */	crclr 6
/* 80224CCC 00221C0C  4B E0 59 75 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80224CD0:
/* 80224CD0 00221C10  48 1F E5 55 */	bl getRenderModeObj__6SystemFv
/* 80224CD4 00221C14  A3 23 00 04 */	lhz r25, 4(r3)
/* 80224CD8 00221C18  48 1F E5 4D */	bl getRenderModeObj__6SystemFv
/* 80224CDC 00221C1C  3C 00 43 30 */	lis r0, 0x4330
/* 80224CE0 00221C20  A0 83 00 04 */	lhz r4, 4(r3)
/* 80224CE4 00221C24  93 21 06 9C */	stw r25, 0x69c(r1)
/* 80224CE8 00221C28  38 60 00 40 */	li r3, 0x40
/* 80224CEC 00221C2C  C0 C2 BD C8 */	lfs f6, lbl_8051A128@sda21(r2)
/* 80224CF0 00221C30  90 01 06 98 */	stw r0, 0x698(r1)
/* 80224CF4 00221C34  C8 82 BE 88 */	lfd f4, lbl_8051A1E8@sda21(r2)
/* 80224CF8 00221C38  C8 01 06 98 */	lfd f0, 0x698(r1)
/* 80224CFC 00221C3C  90 81 06 84 */	stw r4, 0x684(r1)
/* 80224D00 00221C40  EC 00 20 28 */	fsubs f0, f0, f4
/* 80224D04 00221C44  C0 22 BE 3C */	lfs f1, lbl_8051A19C@sda21(r2)
/* 80224D08 00221C48  90 01 06 80 */	stw r0, 0x680(r1)
/* 80224D0C 00221C4C  C0 A2 BE 48 */	lfs f5, lbl_8051A1A8@sda21(r2)
/* 80224D10 00221C50  C8 41 06 80 */	lfd f2, 0x680(r1)
/* 80224D14 00221C54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80224D18 00221C58  C0 62 BE 90 */	lfs f3, lbl_8051A1F0@sda21(r2)
/* 80224D1C 00221C5C  EC 82 20 28 */	fsubs f4, f2, f4
/* 80224D20 00221C60  C0 22 BD E8 */	lfs f1, lbl_8051A148@sda21(r2)
/* 80224D24 00221C64  EC 05 00 32 */	fmuls f0, f5, f0
/* 80224D28 00221C68  D0 DF 00 B4 */	stfs f6, 0xb4(r31)
/* 80224D2C 00221C6C  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 80224D30 00221C70  EC 85 01 32 */	fmuls f4, f5, f4
/* 80224D34 00221C74  EC 00 08 FA */	fmadds f0, f0, f3, f1
/* 80224D38 00221C78  90 01 06 90 */	stw r0, 0x690(r1)
/* 80224D3C 00221C7C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80224D40 00221C80  90 01 06 A8 */	stw r0, 0x6a8(r1)
/* 80224D44 00221C84  FC 00 00 1E */	fctiwz f0, f0
/* 80224D48 00221C88  D0 DF 00 B8 */	stfs f6, 0xb8(r31)
/* 80224D4C 00221C8C  FC 20 08 1E */	fctiwz f1, f1
/* 80224D50 00221C90  D8 01 06 A0 */	stfd f0, 0x6a0(r1)
/* 80224D54 00221C94  D8 21 06 88 */	stfd f1, 0x688(r1)
/* 80224D58 00221C98  80 01 06 A4 */	lwz r0, 0x6a4(r1)
/* 80224D5C 00221C9C  80 81 06 8C */	lwz r4, 0x68c(r1)
/* 80224D60 00221CA0  54 00 10 3A */	slwi r0, r0, 2
/* 80224D64 00221CA4  54 84 10 3A */	slwi r4, r4, 2
/* 80224D68 00221CA8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80224D6C 00221CAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80224D70 00221CB0  90 81 06 94 */	stw r4, 0x694(r1)
/* 80224D74 00221CB4  90 01 06 AC */	stw r0, 0x6ac(r1)
/* 80224D78 00221CB8  C8 21 06 90 */	lfd f1, 0x690(r1)
/* 80224D7C 00221CBC  C8 01 06 A8 */	lfd f0, 0x6a8(r1)
/* 80224D80 00221CC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80224D84 00221CC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80224D88 00221CC8  D0 3F 00 BC */	stfs f1, 0xbc(r31)
/* 80224D8C 00221CCC  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 80224D90 00221CD0  D0 DF 00 C4 */	stfs f6, 0xc4(r31)
/* 80224D94 00221CD4  D0 DF 00 C8 */	stfs f6, 0xc8(r31)
/* 80224D98 00221CD8  4B DF F1 0D */	bl __nw__FUl
/* 80224D9C 00221CDC  7C 60 1B 79 */	or. r0, r3, r3
/* 80224DA0 00221CE0  41 82 00 40 */	beq lbl_80224DE0
/* 80224DA4 00221CE4  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80224DA8 00221CE8  38 C0 00 04 */	li r6, 4
/* 80224DAC 00221CEC  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80224DB0 00221CF0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80224DB4 00221CF4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80224DB8 00221CF8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80224DBC 00221CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80224DC0 00221D00  FC 20 10 1E */	fctiwz f1, f2
/* 80224DC4 00221D04  FC 00 00 1E */	fctiwz f0, f0
/* 80224DC8 00221D08  D8 21 06 B0 */	stfd f1, 0x6b0(r1)
/* 80224DCC 00221D0C  D8 01 06 B8 */	stfd f0, 0x6b8(r1)
/* 80224DD0 00221D10  80 81 06 B4 */	lwz r4, 0x6b4(r1)
/* 80224DD4 00221D14  80 A1 06 BC */	lwz r5, 0x6bc(r1)
/* 80224DD8 00221D18  4B E0 E1 45 */	bl __ct__10JUTTextureFii9_GXTexFmt
/* 80224DDC 00221D1C  7C 60 1B 78 */	mr r0, r3
lbl_80224DE0:
/* 80224DE0 00221D20  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80224DE4 00221D24  38 00 00 00 */	li r0, 0
/* 80224DE8 00221D28  38 60 00 40 */	li r3, 0x40
/* 80224DEC 00221D2C  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80224DF0 00221D30  98 04 00 32 */	stb r0, 0x32(r4)
/* 80224DF4 00221D34  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80224DF8 00221D38  98 04 00 33 */	stb r0, 0x33(r4)
/* 80224DFC 00221D3C  4B DF F0 A9 */	bl __nw__FUl
/* 80224E00 00221D40  7C 60 1B 79 */	or. r0, r3, r3
/* 80224E04 00221D44  41 82 00 58 */	beq lbl_80224E5C
/* 80224E08 00221D48  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80224E0C 00221D4C  38 C0 00 04 */	li r6, 4
/* 80224E10 00221D50  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80224E14 00221D54  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80224E18 00221D58  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80224E1C 00221D5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80224E20 00221D60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80224E24 00221D64  FC 20 10 1E */	fctiwz f1, f2
/* 80224E28 00221D68  FC 00 00 1E */	fctiwz f0, f0
/* 80224E2C 00221D6C  D8 21 06 C0 */	stfd f1, 0x6c0(r1)
/* 80224E30 00221D70  D8 01 06 C8 */	stfd f0, 0x6c8(r1)
/* 80224E34 00221D74  80 81 06 C4 */	lwz r4, 0x6c4(r1)
/* 80224E38 00221D78  80 A1 06 CC */	lwz r5, 0x6cc(r1)
/* 80224E3C 00221D7C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80224E40 00221D80  7C 80 22 14 */	add r4, r0, r4
/* 80224E44 00221D84  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 80224E48 00221D88  7C 84 0E 70 */	srawi r4, r4, 1
/* 80224E4C 00221D8C  7C 00 2A 14 */	add r0, r0, r5
/* 80224E50 00221D90  7C 05 0E 70 */	srawi r5, r0, 1
/* 80224E54 00221D94  4B E0 E0 C9 */	bl __ct__10JUTTextureFii9_GXTexFmt
/* 80224E58 00221D98  7C 60 1B 78 */	mr r0, r3
lbl_80224E5C:
/* 80224E5C 00221D9C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80224E60 00221DA0  38 00 00 00 */	li r0, 0
/* 80224E64 00221DA4  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80224E68 00221DA8  98 03 00 32 */	stb r0, 0x32(r3)
/* 80224E6C 00221DAC  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80224E70 00221DB0  98 03 00 33 */	stb r0, 0x33(r3)
/* 80224E74 00221DB4  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224E78 00221DB8  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80224E7C 00221DBC  4B F2 62 81 */	bl useSpecificFBTexture__Q24Game15BaseGameSectionFP10JUTTexture
/* 80224E80 00221DC0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80224E84 00221DC4  38 60 03 24 */	li r3, 0x324
/* 80224E88 00221DC8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80224E8C 00221DCC  FC 00 00 1E */	fctiwz f0, f0
/* 80224E90 00221DD0  80 9F 00 94 */	lwz r4, 0x94(r31)
/* 80224E94 00221DD4  FC 20 08 1E */	fctiwz f1, f1
/* 80224E98 00221DD8  D8 01 06 D8 */	stfd f0, 0x6d8(r1)
/* 80224E9C 00221DDC  D8 21 06 D0 */	stfd f1, 0x6d0(r1)
/* 80224EA0 00221DE0  80 01 06 DC */	lwz r0, 0x6dc(r1)
/* 80224EA4 00221DE4  80 A1 06 D4 */	lwz r5, 0x6d4(r1)
/* 80224EA8 00221DE8  90 04 01 5C */	stw r0, 0x15c(r4)
/* 80224EAC 00221DEC  90 A4 01 60 */	stw r5, 0x160(r4)
/* 80224EB0 00221DF0  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80224EB4 00221DF4  83 24 00 24 */	lwz r25, 0x24(r4)
/* 80224EB8 00221DF8  4B DF EF ED */	bl __nw__FUl
/* 80224EBC 00221DFC  7C 60 1B 79 */	or. r0, r3, r3
/* 80224EC0 00221E00  41 82 00 10 */	beq lbl_80224ED0
/* 80224EC4 00221E04  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80224EC8 00221E08  4B FF C1 61 */	bl __ct__Q34Game15IllustratedBook6CameraFP10Controller
/* 80224ECC 00221E0C  7C 60 1B 78 */	mr r0, r3
lbl_80224ED0:
/* 80224ED0 00221E10  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80224ED4 00221E14  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80224ED8 00221E18  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80224EDC 00221E1C  48 1E C5 2D */	bl add__5CNodeFP5CNode
/* 80224EE0 00221E20  38 60 00 3C */	li r3, 0x3c
/* 80224EE4 00221E24  4B DF EF C1 */	bl __nw__FUl
/* 80224EE8 00221E28  7C 60 1B 79 */	or. r0, r3, r3
/* 80224EEC 00221E2C  41 82 00 0C */	beq lbl_80224EF8
/* 80224EF0 00221E30  48 02 BA 99 */	bl __ct__Q24Game9CameraMgrFv
/* 80224EF4 00221E34  7C 60 1B 78 */	mr r0, r3
lbl_80224EF8:
/* 80224EF8 00221E38  90 0D 96 A0 */	stw r0, cameraMgr__4Game@sda21(r13)
/* 80224EFC 00221E3C  7C 03 03 78 */	mr r3, r0
/* 80224F00 00221E40  48 02 BA D1 */	bl loadResource__Q24Game9CameraMgrFv
/* 80224F04 00221E44  80 6D 96 A0 */	lwz r3, cameraMgr__4Game@sda21(r13)
/* 80224F08 00221E48  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80224F0C 00221E4C  48 02 D9 05 */	bl setZukanCamera__Q24Game9CameraMgrFP12LookAtCamera
/* 80224F10 00221E50  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80224F14 00221E54  80 8D 96 A0 */	lwz r4, cameraMgr__4Game@sda21(r13)
/* 80224F18 00221E58  4B F4 00 99 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
/* 80224F1C 00221E5C  38 60 00 18 */	li r3, 0x18
/* 80224F20 00221E60  4B DF EF 85 */	bl __nw__FUl
/* 80224F24 00221E64  7C 60 1B 79 */	or. r0, r3, r3
/* 80224F28 00221E68  41 82 00 10 */	beq lbl_80224F38
/* 80224F2C 00221E6C  7F 24 CB 78 */	mr r4, r25
/* 80224F30 00221E70  48 1F FF 61 */	bl __ct__17HorizonalSplitterFP8Graphics
/* 80224F34 00221E74  7C 60 1B 78 */	mr r0, r3
lbl_80224F38:
/* 80224F38 00221E78  7C 03 03 78 */	mr r3, r0
/* 80224F3C 00221E7C  C0 22 BD BC */	lfs f1, lbl_8051A11C@sda21(r2)
/* 80224F40 00221E80  81 83 00 00 */	lwz r12, 0(r3)
/* 80224F44 00221E84  81 8C 00 08 */	lwz r12, 8(r12)
/* 80224F48 00221E88  7D 89 03 A6 */	mtctr r12
/* 80224F4C 00221E8C  4E 80 04 21 */	bctrl 
/* 80224F50 00221E90  7F 23 CB 78 */	mr r3, r25
/* 80224F54 00221E94  38 80 00 00 */	li r4, 0
/* 80224F58 00221E98  48 20 06 99 */	bl getViewport__8GraphicsFi
/* 80224F5C 00221E9C  7C 60 1B 78 */	mr r0, r3
/* 80224F60 00221EA0  7F 23 CB 78 */	mr r3, r25
/* 80224F64 00221EA4  7C 1A 03 78 */	mr r26, r0
/* 80224F68 00221EA8  38 80 00 01 */	li r4, 1
/* 80224F6C 00221EAC  48 20 06 85 */	bl getViewport__8GraphicsFi
/* 80224F70 00221EB0  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80224F74 00221EB4  7C 7B 1B 78 */	mr r27, r3
/* 80224F78 00221EB8  7F 43 D3 78 */	mr r3, r26
/* 80224F7C 00221EBC  90 1A 00 44 */	stw r0, 0x44(r26)
/* 80224F80 00221EC0  48 20 03 11 */	bl updateCameraAspect__8ViewportFv
/* 80224F84 00221EC4  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80224F88 00221EC8  7F 63 DB 78 */	mr r3, r27
/* 80224F8C 00221ECC  90 1B 00 44 */	stw r0, 0x44(r27)
/* 80224F90 00221ED0  48 20 03 01 */	bl updateCameraAspect__8ViewportFv
/* 80224F94 00221ED4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80224F98 00221ED8  7F 43 D3 78 */	mr r3, r26
/* 80224F9C 00221EDC  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 80224FA0 00221EE0  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80224FA4 00221EE4  D0 3A 00 48 */	stfs f1, 0x48(r26)
/* 80224FA8 00221EE8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80224FAC 00221EEC  D0 3A 00 4C */	stfs f1, 0x4c(r26)
/* 80224FB0 00221EF0  D0 1A 00 50 */	stfs f0, 0x50(r26)
/* 80224FB4 00221EF4  D0 1A 00 54 */	stfs f0, 0x54(r26)
/* 80224FB8 00221EF8  48 20 03 C9 */	bl "setRect__8ViewportFR7Rect<f>"
/* 80224FBC 00221EFC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80224FC0 00221F00  7F 24 CB 78 */	mr r4, r25
/* 80224FC4 00221F04  48 19 6B 65 */	bl setViewport__11ParticleMgrFR8Graphics
/* 80224FC8 00221F08  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80224FCC 00221F0C  48 19 67 4D */	bl start__11ParticleMgrFv
/* 80224FD0 00221F10  38 60 00 50 */	li r3, 0x50
/* 80224FD4 00221F14  4B DF EE D1 */	bl __nw__FUl
/* 80224FD8 00221F18  7C 60 1B 79 */	or. r0, r3, r3
/* 80224FDC 00221F1C  41 82 00 10 */	beq lbl_80224FEC
/* 80224FE0 00221F20  38 80 00 02 */	li r4, 2
/* 80224FE4 00221F24  48 01 C3 E1 */	bl __ct__Q24Game9ShadowMgrFi
/* 80224FE8 00221F28  7C 60 1B 78 */	mr r0, r3
lbl_80224FEC:
/* 80224FEC 00221F2C  90 0D 96 80 */	stw r0, shadowMgr__4Game@sda21(r13)
/* 80224FF0 00221F30  38 80 00 00 */	li r4, 0
/* 80224FF4 00221F34  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80224FF8 00221F38  83 23 00 24 */	lwz r25, 0x24(r3)
/* 80224FFC 00221F3C  7F 23 CB 78 */	mr r3, r25
/* 80225000 00221F40  48 20 05 F1 */	bl getViewport__8GraphicsFi
/* 80225004 00221F44  7C 60 1B 78 */	mr r0, r3
/* 80225008 00221F48  7F 23 CB 78 */	mr r3, r25
/* 8022500C 00221F4C  7C 19 03 78 */	mr r25, r0
/* 80225010 00221F50  38 80 00 01 */	li r4, 1
/* 80225014 00221F54  48 20 05 DD */	bl getViewport__8GraphicsFi
/* 80225018 00221F58  7C 60 1B 78 */	mr r0, r3
/* 8022501C 00221F5C  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80225020 00221F60  7C 1A 03 78 */	mr r26, r0
/* 80225024 00221F64  7F 24 CB 78 */	mr r4, r25
/* 80225028 00221F68  38 A0 00 00 */	li r5, 0
/* 8022502C 00221F6C  48 01 C6 2D */	bl setViewport__Q24Game9ShadowMgrFP8Viewporti
/* 80225030 00221F70  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80225034 00221F74  7F 44 D3 78 */	mr r4, r26
/* 80225038 00221F78  38 A0 00 01 */	li r5, 1
/* 8022503C 00221F7C  48 01 C6 1D */	bl setViewport__Q24Game9ShadowMgrFP8Viewporti
/* 80225040 00221F80  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80225044 00221F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80225048 00221F88  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8022504C 00221F8C  7D 89 03 A6 */	mtctr r12
/* 80225050 00221F90  4E 80 04 21 */	bctrl 
/* 80225054 00221F94  80 0D 96 A8 */	lwz r0, rumbleMgr__4Game@sda21(r13)
/* 80225058 00221F98  28 00 00 00 */	cmplwi r0, 0
/* 8022505C 00221F9C  40 82 00 50 */	bne lbl_802250AC
/* 80225060 00221FA0  38 60 00 34 */	li r3, 0x34
/* 80225064 00221FA4  4B DF EE 41 */	bl __nw__FUl
/* 80225068 00221FA8  7C 60 1B 79 */	or. r0, r3, r3
/* 8022506C 00221FAC  41 82 00 0C */	beq lbl_80225078
/* 80225070 00221FB0  48 02 E2 95 */	bl __ct__Q24Game9RumbleMgrFv
/* 80225074 00221FB4  7C 60 1B 78 */	mr r0, r3
lbl_80225078:
/* 80225078 00221FB8  90 0D 96 A8 */	stw r0, rumbleMgr__4Game@sda21(r13)
/* 8022507C 00221FBC  7C 03 03 78 */	mr r3, r0
/* 80225080 00221FC0  48 02 E2 CD */	bl loadResource__Q24Game9RumbleMgrFv
/* 80225084 00221FC4  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80225088 00221FC8  48 02 E4 1D */	bl init__Q24Game9RumbleMgrFv
/* 8022508C 00221FCC  80 BF 00 98 */	lwz r5, 0x98(r31)
/* 80225090 00221FD0  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80225094 00221FD4  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 80225098 00221FD8  38 A5 01 74 */	addi r5, r5, 0x174
/* 8022509C 00221FDC  48 02 EA D9 */	bl "setZukanRumble__Q24Game9RumbleMgrFP10ControllerP10Vector3<f>"
/* 802250A0 00221FE0  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 802250A4 00221FE4  80 8D 96 A8 */	lwz r4, rumbleMgr__4Game@sda21(r13)
/* 802250A8 00221FE8  4B F3 FF 09 */	bl addGenNode__Q24Game14BaseHIOSectionFP5CNode
lbl_802250AC:
/* 802250AC 00221FEC  38 61 00 28 */	addi r3, r1, 0x28
/* 802250B0 00221FF0  48 11 04 01 */	bl __ct__Q26PSGame9SceneInfoFv
/* 802250B4 00221FF4  38 00 00 01 */	li r0, 1
/* 802250B8 00221FF8  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802250BC 00221FFC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250C0 00222000  81 83 00 00 */	lwz r12, 0(r3)
/* 802250C4 00222004  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802250C8 00222008  7D 89 03 A6 */	mtctr r12
/* 802250CC 0022200C  4E 80 04 21 */	bctrl 
/* 802250D0 00222010  90 61 00 30 */	stw r3, 0x30(r1)
/* 802250D4 00222014  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250D8 00222018  81 83 00 00 */	lwz r12, 0(r3)
/* 802250DC 0022201C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802250E0 00222020  7D 89 03 A6 */	mtctr r12
/* 802250E4 00222024  4E 80 04 21 */	bctrl 
/* 802250E8 00222028  90 61 00 38 */	stw r3, 0x38(r1)
/* 802250EC 0022202C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 802250F0 00222030  81 83 00 00 */	lwz r12, 0(r3)
/* 802250F4 00222034  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 802250F8 00222038  7D 89 03 A6 */	mtctr r12
/* 802250FC 0022203C  4E 80 04 21 */	bctrl 
/* 80225100 00222040  C0 22 BE 9C */	lfs f1, lbl_8051A1FC@sda21(r2)
/* 80225104 00222044  38 80 00 00 */	li r4, 0
/* 80225108 00222048  C0 02 BE A0 */	lfs f0, lbl_8051A200@sda21(r2)
/* 8022510C 0022204C  38 A0 00 01 */	li r5, 1
/* 80225110 00222050  90 61 00 40 */	stw r3, 0x40(r1)
/* 80225114 00222054  38 61 00 28 */	addi r3, r1, 0x28
/* 80225118 00222058  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8022511C 0022205C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80225120 00222060  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80225124 00222064  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80225128 00222068  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8022512C 0022206C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80225130 00222070  48 11 03 B9 */	bl setStageFlag__Q26PSGame9SceneInfoFQ36PSGame9SceneInfo7FlagDefQ36PSGame9SceneInfo12FlagBitShift
/* 80225134 00222074  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80225138 00222078  38 60 00 0D */	li r3, 0xd
/* 8022513C 0022207C  98 61 00 2E */	stb r3, 0x2e(r1)
/* 80225140 00222080  28 00 00 00 */	cmplwi r0, 0
/* 80225144 00222084  40 82 00 18 */	bne lbl_8022515C
/* 80225148 00222088  38 7E 01 90 */	addi r3, r30, 0x190
/* 8022514C 0022208C  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225150 00222090  38 80 01 D3 */	li r4, 0x1d3
/* 80225154 00222094  4C C6 31 82 */	crclr 6
/* 80225158 00222098  4B E0 54 E9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022515C:
/* 8022515C 0022209C  80 6D 98 80 */	lwz r3, spSceneMgr__8PSSystem@sda21(r13)
/* 80225160 002220A0  38 81 00 28 */	addi r4, r1, 0x28
/* 80225164 002220A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80225168 002220A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022516C 002220AC  7D 89 03 A6 */	mtctr r12
/* 80225170 002220B0  4E 80 04 21 */	bctrl 
/* 80225174 002220B4  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80225178 002220B8  28 00 00 00 */	cmplwi r0, 0
/* 8022517C 002220BC  40 82 00 18 */	bne lbl_80225194
/* 80225180 002220C0  38 7E 01 90 */	addi r3, r30, 0x190
/* 80225184 002220C4  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225188 002220C8  38 80 01 D3 */	li r4, 0x1d3
/* 8022518C 002220CC  4C C6 31 82 */	crclr 6
/* 80225190 002220D0  4B E0 54 B1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225194:
/* 80225194 002220D4  83 2D 98 80 */	lwz r25, spSceneMgr__8PSSystem@sda21(r13)
/* 80225198 002220D8  80 19 00 04 */	lwz r0, 4(r25)
/* 8022519C 002220DC  28 00 00 00 */	cmplwi r0, 0
/* 802251A0 002220E0  40 82 00 18 */	bne lbl_802251B8
/* 802251A4 002220E4  38 7E 01 9C */	addi r3, r30, 0x19c
/* 802251A8 002220E8  38 BE 00 90 */	addi r5, r30, 0x90
/* 802251AC 002220EC  38 80 00 C7 */	li r4, 0xc7
/* 802251B0 002220F0  4C C6 31 82 */	crclr 6
/* 802251B4 002220F4  4B E0 54 8D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802251B8:
/* 802251B8 002220F8  80 79 00 04 */	lwz r3, 4(r25)
/* 802251BC 002220FC  80 63 00 04 */	lwz r3, 4(r3)
/* 802251C0 00222100  81 83 00 00 */	lwz r12, 0(r3)
/* 802251C4 00222104  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802251C8 00222108  7D 89 03 A6 */	mtctr r12
/* 802251CC 0022210C  4E 80 04 21 */	bctrl 
/* 802251D0 00222110  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 802251D4 00222114  28 00 00 00 */	cmplwi r0, 0
/* 802251D8 00222118  40 82 00 18 */	bne lbl_802251F0
/* 802251DC 0022211C  38 7E 01 90 */	addi r3, r30, 0x190
/* 802251E0 00222120  38 BE 00 90 */	addi r5, r30, 0x90
/* 802251E4 00222124  38 80 01 D3 */	li r4, 0x1d3
/* 802251E8 00222128  4C C6 31 82 */	crclr 6
/* 802251EC 0022212C  4B E0 54 55 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802251F0:
/* 802251F0 00222130  83 2D 98 80 */	lwz r25, spSceneMgr__8PSSystem@sda21(r13)
/* 802251F4 00222134  80 19 00 04 */	lwz r0, 4(r25)
/* 802251F8 00222138  28 00 00 00 */	cmplwi r0, 0
/* 802251FC 0022213C  40 82 00 18 */	bne lbl_80225214
/* 80225200 00222140  38 7E 01 9C */	addi r3, r30, 0x19c
/* 80225204 00222144  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225208 00222148  38 80 00 C7 */	li r4, 0xc7
/* 8022520C 0022214C  4C C6 31 82 */	crclr 6
/* 80225210 00222150  4B E0 54 31 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225214:
/* 80225214 00222154  80 79 00 04 */	lwz r3, 4(r25)
/* 80225218 00222158  80 63 00 04 */	lwz r3, 4(r3)
/* 8022521C 0022215C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225220 00222160  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80225224 00222164  7D 89 03 A6 */	mtctr r12
/* 80225228 00222168  4E 80 04 21 */	bctrl 
/* 8022522C 0022216C  7F A3 EB 78 */	mr r3, r29
/* 80225230 00222170  38 9E 02 70 */	addi r4, r30, 0x270
/* 80225234 00222174  81 9D 00 00 */	lwz r12, 0(r29)
/* 80225238 00222178  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8022523C 0022217C  7D 89 03 A6 */	mtctr r12
/* 80225240 00222180  4E 80 04 21 */	bctrl 
/* 80225244 00222184  7C 79 1B 79 */	or. r25, r3, r3
/* 80225248 00222188  40 82 00 18 */	bne lbl_80225260
/* 8022524C 0022218C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225250 00222190  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225254 00222194  38 80 0A 2B */	li r4, 0xa2b
/* 80225258 00222198  4C C6 31 82 */	crclr 6
/* 8022525C 0022219C  4B E0 53 E5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225260:
/* 80225260 002221A0  7F 24 CB 78 */	mr r4, r25
/* 80225264 002221A4  38 61 02 60 */	addi r3, r1, 0x260
/* 80225268 002221A8  38 A0 FF FF */	li r5, -1
/* 8022526C 002221AC  48 1F 06 8D */	bl __ct__9RamStreamFPvi
/* 80225270 002221B0  38 00 00 01 */	li r0, 1
/* 80225274 002221B4  2C 00 00 01 */	cmpwi r0, 1
/* 80225278 002221B8  90 01 02 6C */	stw r0, 0x26c(r1)
/* 8022527C 002221BC  40 82 00 0C */	bne lbl_80225288
/* 80225280 002221C0  38 00 00 00 */	li r0, 0
/* 80225284 002221C4  90 01 06 74 */	stw r0, 0x674(r1)
lbl_80225288:
/* 80225288 002221C8  38 60 01 00 */	li r3, 0x100
/* 8022528C 002221CC  4B DF EC 19 */	bl __nw__FUl
/* 80225290 002221D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80225294 002221D4  41 82 00 0C */	beq lbl_802252A0
/* 80225298 002221D8  4B F8 81 A1 */	bl __ct__Q24Game10CourseInfoFv
/* 8022529C 002221DC  7C 60 1B 78 */	mr r0, r3
lbl_802252A0:
/* 802252A0 002221E0  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802252A4 002221E4  38 81 02 60 */	addi r4, r1, 0x260
/* 802252A8 002221E8  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252AC 002221EC  4B F8 82 E5 */	bl read__Q24Game10CourseInfoFR6Stream
/* 802252B0 002221F0  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252B4 002221F4  4B F8 82 D9 */	bl dump__Q24Game10CourseInfoFv
/* 802252B8 002221F8  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802252BC 002221FC  38 80 00 00 */	li r4, 0
/* 802252C0 00222200  4B F8 8D 61 */	bl createMapMgr__Q24Game6StagesFPQ24Game10CourseInfoPQ24Game8RouteMgr
/* 802252C4 00222204  38 60 00 48 */	li r3, 0x48
/* 802252C8 00222208  4B DF EB DD */	bl __nw__FUl
/* 802252CC 0022220C  7C 65 1B 79 */	or. r5, r3, r3
/* 802252D0 00222210  41 82 00 0C */	beq lbl_802252DC
/* 802252D4 00222214  4B F3 2F E9 */	bl __ct__Q24Game11CellPyramidFv
/* 802252D8 00222218  7C 65 1B 78 */	mr r5, r3
lbl_802252DC:
/* 802252DC 0022221C  C0 22 BE A4 */	lfs f1, lbl_8051A204@sda21(r2)
/* 802252E0 00222220  38 00 00 00 */	li r0, 0
/* 802252E4 00222224  C0 02 BE A8 */	lfs f0, lbl_8051A208@sda21(r2)
/* 802252E8 00222228  38 81 00 18 */	addi r4, r1, 0x18
/* 802252EC 0022222C  90 AD 92 C8 */	stw r5, cellMgr__4Game@sda21(r13)
/* 802252F0 00222230  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 802252F4 00222234  90 0D 92 CC */	stw r0, platCellMgr__4Game@sda21(r13)
/* 802252F8 00222238  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802252FC 0022223C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80225300 00222240  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80225304 00222244  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80225308 00222248  81 83 00 04 */	lwz r12, 4(r3)
/* 8022530C 0022224C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80225310 00222250  7D 89 03 A6 */	mtctr r12
/* 80225314 00222254  4E 80 04 21 */	bctrl 
/* 80225318 00222258  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8022531C 0022225C  4B DF E4 99 */	bl getFreeSize__7JKRHeapFv
/* 80225320 00222260  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80225324 00222264  38 81 00 18 */	addi r4, r1, 0x18
/* 80225328 00222268  C0 22 BE AC */	lfs f1, lbl_8051A20C@sda21(r2)
/* 8022532C 0022226C  4B F3 36 E1 */	bl create__Q24Game11CellPyramidFR10BoundBox2df
/* 80225330 00222270  80 8D 93 08 */	lwz r4, mapMgr__4Game@sda21(r13)
/* 80225334 00222274  28 04 00 00 */	cmplwi r4, 0
/* 80225338 00222278  41 82 00 08 */	beq lbl_80225340
/* 8022533C 0022227C  80 84 00 00 */	lwz r4, 0(r4)
lbl_80225340:
/* 80225340 00222280  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80225344 00222284  4B F9 0C 05 */	bl addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80225348 00222288  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 8022534C 0022228C  38 80 00 02 */	li r4, 2
/* 80225350 00222290  4B F2 C9 E5 */	bl "alloc__27MonoObjectMgr<Q24Game4Navi>Fi"
/* 80225354 00222294  38 80 00 00 */	li r4, 0
/* 80225358 00222298  38 C0 FF FF */	li r6, -1
/* 8022535C 0022229C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80225360 002222A0  38 60 00 40 */	li r3, 0x40
/* 80225364 002222A4  80 0D 88 2C */	lwz r0, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225368 002222A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022536C 002222AC  80 AD 95 20 */	lwz r5, mgr__Q24Game13PelletOtakara@sda21(r13)
/* 80225370 002222B0  90 81 00 08 */	stw r4, 8(r1)
/* 80225374 002222B4  80 8D 95 28 */	lwz r4, mgr__Q24Game10PelletItem@sda21(r13)
/* 80225378 002222B8  98 C1 00 14 */	stb r6, 0x14(r1)
/* 8022537C 002222BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80225380 002222C0  80 05 00 08 */	lwz r0, 8(r5)
/* 80225384 002222C4  90 01 00 08 */	stw r0, 8(r1)
/* 80225388 002222C8  80 04 00 08 */	lwz r0, 8(r4)
/* 8022538C 002222CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80225390 002222D0  4B DF EB 15 */	bl __nw__FUl
/* 80225394 002222D4  7C 60 1B 79 */	or. r0, r3, r3
/* 80225398 002222D8  41 82 00 0C */	beq lbl_802253A4
/* 8022539C 002222DC  48 00 20 7D */	bl __ct__Q34Game12ResultTexMgr3MgrFv
/* 802253A0 002222E0  7C 60 1B 78 */	mr r0, r3
lbl_802253A4:
/* 802253A4 002222E4  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 802253A8 002222E8  38 81 00 08 */	addi r4, r1, 8
/* 802253AC 002222EC  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 802253B0 002222F0  48 00 21 19 */	bl create__Q34Game12ResultTexMgr3MgrFRQ34Game12ResultTexMgr3Arg
/* 802253B4 002222F4  38 60 00 40 */	li r3, 0x40
/* 802253B8 002222F8  4B DF EA ED */	bl __nw__FUl
/* 802253BC 002222FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 802253C0 00222300  41 82 00 20 */	beq lbl_802253E0
/* 802253C4 00222304  7F 99 E3 78 */	mr r25, r28
/* 802253C8 00222308  48 00 E2 45 */	bl __ct__Q34Game11IconTexture3MgrFv
/* 802253CC 0022230C  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@ha
/* 802253D0 00222310  38 79 00 20 */	addi r3, r25, 0x20
/* 802253D4 00222314  38 04 0D 98 */	addi r0, r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@l
/* 802253D8 00222318  90 19 00 00 */	stw r0, 0(r25)
/* 802253DC 0022231C  48 00 E0 A9 */	bl __ct__Q34Game11IconTexture6LoaderFv
lbl_802253E0:
/* 802253E0 00222320  93 9F 00 EC */	stw r28, 0xec(r31)
/* 802253E4 00222324  38 80 00 66 */	li r4, 0x66
/* 802253E8 00222328  83 3F 00 EC */	lwz r25, 0xec(r31)
/* 802253EC 0022232C  7F 23 CB 78 */	mr r3, r25
/* 802253F0 00222330  48 00 E2 F1 */	bl create__Q34Game11IconTexture3MgrFi
/* 802253F4 00222334  38 79 00 20 */	addi r3, r25, 0x20
/* 802253F8 00222338  38 9E 00 44 */	addi r4, r30, 0x44
/* 802253FC 0022233C  48 00 E1 5D */	bl loadResource__Q34Game11IconTexture6LoaderFPc
/* 80225400 00222340  38 79 00 20 */	addi r3, r25, 0x20
/* 80225404 00222344  38 9E 00 68 */	addi r4, r30, 0x68
/* 80225408 00222348  48 00 E1 D5 */	bl getResTIMG__Q34Game11IconTexture6LoaderFPc
/* 8022540C 0022234C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80225410 00222350  40 82 00 18 */	bne lbl_80225428
/* 80225414 00222354  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225418 00222358  38 BE 00 90 */	addi r5, r30, 0x90
/* 8022541C 0022235C  38 80 01 D2 */	li r4, 0x1d2
/* 80225420 00222360  4C C6 31 82 */	crclr 6
/* 80225424 00222364  4B E0 52 1D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225428:
/* 80225428 00222368  3B 60 00 00 */	li r27, 0
/* 8022542C 0022236C  3F 80 00 01 */	lis r28, 0x0000FFFF@ha
lbl_80225430:
/* 80225430 00222370  7F 63 DB 78 */	mr r3, r27
/* 80225434 00222374  38 9C FF FF */	addi r4, r28, 0x0000FFFF@l
/* 80225438 00222378  4B EF DE A5 */	bl getEnemyName__Q24Game13EnemyInfoFuncFii
/* 8022543C 0022237C  28 03 00 00 */	cmplwi r3, 0
/* 80225440 00222380  41 82 00 50 */	beq lbl_80225490
/* 80225444 00222384  7C 65 1B 78 */	mr r5, r3
/* 80225448 00222388  38 61 00 60 */	addi r3, r1, 0x60
/* 8022544C 0022238C  38 9E 00 9C */	addi r4, r30, 0x9c
/* 80225450 00222390  4C C6 31 82 */	crclr 6
/* 80225454 00222394  4B EA 1F E5 */	bl sprintf
/* 80225458 00222398  38 79 00 20 */	addi r3, r25, 0x20
/* 8022545C 0022239C  38 81 00 60 */	addi r4, r1, 0x60
/* 80225460 002223A0  48 00 E1 7D */	bl getResTIMG__Q34Game11IconTexture6LoaderFPc
/* 80225464 002223A4  7C 65 1B 79 */	or. r5, r3, r3
/* 80225468 002223A8  41 82 00 14 */	beq lbl_8022547C
/* 8022546C 002223AC  7F 23 CB 78 */	mr r3, r25
/* 80225470 002223B0  7F 64 DB 78 */	mr r4, r27
/* 80225474 002223B4  48 00 E2 F1 */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
/* 80225478 002223B8  48 00 00 28 */	b lbl_802254A0
lbl_8022547C:
/* 8022547C 002223BC  7F 23 CB 78 */	mr r3, r25
/* 80225480 002223C0  7F 64 DB 78 */	mr r4, r27
/* 80225484 002223C4  7F 45 D3 78 */	mr r5, r26
/* 80225488 002223C8  48 00 E2 DD */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
/* 8022548C 002223CC  48 00 00 14 */	b lbl_802254A0
lbl_80225490:
/* 80225490 002223D0  7F 23 CB 78 */	mr r3, r25
/* 80225494 002223D4  7F 64 DB 78 */	mr r4, r27
/* 80225498 002223D8  7F 45 D3 78 */	mr r5, r26
/* 8022549C 002223DC  48 00 E2 C9 */	bl setTexture__Q34Game11IconTexture3MgrFiP7ResTIMG
lbl_802254A0:
/* 802254A0 002223E0  3B 7B 00 01 */	addi r27, r27, 1
/* 802254A4 002223E4  2C 1B 00 66 */	cmpwi r27, 0x66
/* 802254A8 002223E8  41 80 FF 88 */	blt lbl_80225430
/* 802254AC 002223EC  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 802254B0 002223F0  7F A3 EB 78 */	mr r3, r29
/* 802254B4 002223F4  90 0D 92 54 */	stw r0, sCamera__Q34Game15IllustratedBook5Parms@sda21(r13)
/* 802254B8 002223F8  93 ED 92 50 */	stw r31, sZukanState__Q34Game15IllustratedBook5Parms@sda21(r13)
/* 802254BC 002223FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802254C0 00222400  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802254C4 00222404  7D 89 03 A6 */	mtctr r12
/* 802254C8 00222408  4E 80 04 21 */	bctrl 
/* 802254CC 0022240C  BB 21 06 E4 */	lmw r25, 0x6e4(r1)
/* 802254D0 00222410  80 01 07 04 */	lwz r0, 0x704(r1)
/* 802254D4 00222414  7C 08 03 A6 */	mtlr r0
/* 802254D8 00222418  38 21 07 00 */	addi r1, r1, 0x700
/* 802254DC 0022241C  4E 80 00 20 */	blr 
.endif

.global createTeki__Q34Game10SingleGame10ZukanStateFi
createTeki__Q34Game10SingleGame10ZukanStateFi:
/* 802254E0 00222420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802254E4 00222424  7C 08 02 A6 */	mflr r0
/* 802254E8 00222428  3C 80 80 48 */	lis r4, lbl_80482E60@ha
/* 802254EC 0022242C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802254F0 00222430  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802254F4 00222434  3B E4 2E 60 */	addi r31, r4, lbl_80482E60@l
/* 802254F8 00222438  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802254FC 0022243C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80225500 00222440  7C 7D 1B 78 */	mr r29, r3
/* 80225504 00222444  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80225508 00222448  28 00 00 00 */	cmplwi r0, 0
/* 8022550C 0022244C  40 82 00 18 */	bne lbl_80225524
/* 80225510 00222450  38 7F 01 90 */	addi r3, r31, 0x190
/* 80225514 00222454  38 BF 00 90 */	addi r5, r31, 0x90
/* 80225518 00222458  38 80 01 D3 */	li r4, 0x1d3
/* 8022551C 0022245C  4C C6 31 82 */	crclr 6
/* 80225520 00222460  4B E0 51 21 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225524:
/* 80225524 00222464  83 CD 98 80 */	lwz r30, spSceneMgr__8PSSystem@sda21(r13)
/* 80225528 00222468  28 1E 00 00 */	cmplwi r30, 0
/* 8022552C 0022246C  40 82 00 18 */	bne lbl_80225544
/* 80225530 00222470  38 7F 01 90 */	addi r3, r31, 0x190
/* 80225534 00222474  38 BF 00 90 */	addi r5, r31, 0x90
/* 80225538 00222478  38 80 01 DC */	li r4, 0x1dc
/* 8022553C 0022247C  4C C6 31 82 */	crclr 6
/* 80225540 00222480  4B E0 51 01 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225544:
/* 80225544 00222484  80 1E 00 04 */	lwz r0, 4(r30)
/* 80225548 00222488  28 00 00 00 */	cmplwi r0, 0
/* 8022554C 0022248C  40 82 00 18 */	bne lbl_80225564
/* 80225550 00222490  38 7F 01 9C */	addi r3, r31, 0x19c
/* 80225554 00222494  38 BF 00 90 */	addi r5, r31, 0x90
/* 80225558 00222498  38 80 00 CF */	li r4, 0xcf
/* 8022555C 0022249C  4C C6 31 82 */	crclr 6
/* 80225560 002224A0  4B E0 50 E1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225564:
/* 80225564 002224A4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80225568 002224A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8022556C 002224AC  28 1E 00 00 */	cmplwi r30, 0
/* 80225570 002224B0  40 82 00 18 */	bne lbl_80225588
/* 80225574 002224B4  38 7F 01 9C */	addi r3, r31, 0x19c
/* 80225578 002224B8  38 BF 01 A8 */	addi r5, r31, 0x1a8
/* 8022557C 002224BC  38 80 00 D1 */	li r4, 0xd1
/* 80225580 002224C0  4C C6 31 82 */	crclr 6
/* 80225584 002224C4  4B E0 50 BD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225588:
/* 80225588 002224C8  7F C3 F3 78 */	mr r3, r30
/* 8022558C 002224CC  48 24 28 D5 */	bl detachObjMgr__Q23PSM13Scene_ObjectsFv
/* 80225590 002224D0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80225594 002224D4  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80225598 002224D8  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 8022559C 002224DC  48 1F D9 9D */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 802255A0 002224E0  38 00 00 00 */	li r0, 0
/* 802255A4 002224E4  98 1D 00 88 */	stb r0, 0x88(r29)
/* 802255A8 002224E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802255AC 002224EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802255B0 002224F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802255B4 002224F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802255B8 002224F8  7C 08 03 A6 */	mtlr r0
/* 802255BC 002224FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802255C0 00222500  4E 80 00 20 */	blr 

.global createPellet__Q34Game10SingleGame10ZukanStateFi
createPellet__Q34Game10SingleGame10ZukanStateFi:
/* 802255C4 00222504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802255C8 00222508  7C 08 02 A6 */	mflr r0
/* 802255CC 0022250C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802255D0 00222510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802255D4 00222514  7C 7F 1B 78 */	mr r31, r3
/* 802255D8 00222518  38 9F 00 1C */	addi r4, r31, 0x1c
/* 802255DC 0022251C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 802255E0 00222520  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 802255E4 00222524  48 1F D9 55 */	bl dvdLoadUseCallBack__6SystemFP16DvdThreadCommandP9IDelegate
/* 802255E8 00222528  38 00 00 00 */	li r0, 0
/* 802255EC 0022252C  98 1F 00 88 */	stb r0, 0x88(r31)
/* 802255F0 00222530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802255F4 00222534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802255F8 00222538  7C 08 03 A6 */	mtlr r0
/* 802255FC 0022253C  38 21 00 10 */	addi r1, r1, 0x10
/* 80225600 00222540  4E 80 00 20 */	blr 

.if version == 1
.global dvdloadB_teki__Q34Game10SingleGame10ZukanStateFv
dvdloadB_teki__Q34Game10SingleGame10ZukanStateFv:
/* 80225604 00222544  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80225608 00222548  7C 08 02 A6 */	mflr r0
/* 8022560C 0022254C  90 01 01 84 */	stw r0, 0x184(r1)
/* 80225610 00222550  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80225614 00222554  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 80225618 00222558  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 8022561C 0022255C  F3 C1 01 68 */	psq_st f30, 360(r1), 0, qr0
/* 80225620 00222560  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80225624 00222564  F3 A1 01 58 */	psq_st f29, 344(r1), 0, qr0
/* 80225628 00222568  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 8022562C 0022256C  F3 81 01 48 */	psq_st f28, 328(r1), 0, qr0
/* 80225630 00222570  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 80225634 00222574  F3 61 01 38 */	psq_st f27, 312(r1), 0, qr0
/* 80225638 00222578  DB 41 01 20 */	stfd f26, 0x120(r1)
/* 8022563C 0022257C  F3 41 01 28 */	psq_st f26, 296(r1), 0, qr0
/* 80225640 00222580  BE 81 00 F0 */	stmw r20, 0xf0(r1)
/* 80225644 00222584  7C 7F 1B 78 */	mr r31, r3
/* 80225648 00222588  3C 80 80 48 */	lis r4, lbl_80482E60@ha
/* 8022564C 0022258C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80225650 00222590  3B C4 2E 60 */	addi r30, r4, lbl_80482E60@l
/* 80225654 00222594  28 00 00 00 */	cmplwi r0, 0
/* 80225658 00222598  41 82 00 38 */	beq lbl_80225690
/* 8022565C 0022259C  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 80225660 002225A0  28 00 00 00 */	cmplwi r0, 0
/* 80225664 002225A4  41 82 00 0C */	beq lbl_80225670
/* 80225668 002225A8  48 00 11 B9 */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 8022566C 002225AC  48 00 00 24 */	b lbl_80225690
lbl_80225670:
/* 80225670 002225B0  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80225674 002225B4  28 00 00 00 */	cmplwi r0, 0
/* 80225678 002225B8  41 82 00 0C */	beq lbl_80225684
/* 8022567C 002225BC  48 00 15 61 */	bl clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv
/* 80225680 002225C0  48 00 00 10 */	b lbl_80225690
lbl_80225684:
/* 80225684 002225C4  48 00 11 0D */	bl clearHeapB_common__Q34Game10SingleGame10ZukanStateFv
/* 80225688 002225C8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8022568C 002225CC  4B DF DF 19 */	bl becomeCurrentHeap__7JKRHeapFv
lbl_80225690:
/* 80225690 002225D0  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80225694 002225D4  4B DF E1 21 */	bl getFreeSize__7JKRHeapFv
/* 80225698 002225D8  90 7F 00 E4 */	stw r3, 0xe4(r31)
/* 8022569C 002225DC  38 62 BE B0 */	addi r3, r2, lbl_8051A210@sda21
/* 802256A0 002225E0  4C C6 31 82 */	crclr 6
/* 802256A4 002225E4  4B EC 80 49 */	bl OSReport
/* 802256A8 002225E8  80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 802256AC 002225EC  38 7E 02 7C */	addi r3, r30, 0x27c
/* 802256B0 002225F0  4C C6 31 82 */	crclr 6
/* 802256B4 002225F4  4B EC 80 39 */	bl OSReport
/* 802256B8 002225F8  82 BF 00 D8 */	lwz r21, 0xd8(r31)
/* 802256BC 002225FC  7E A3 AB 78 */	mr r3, r21
/* 802256C0 00222600  4B DF E0 F5 */	bl getFreeSize__7JKRHeapFv
/* 802256C4 00222604  7E A4 AB 78 */	mr r4, r21
/* 802256C8 00222608  38 A0 00 01 */	li r5, 1
/* 802256CC 0022260C  4B DF A7 FD */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802256D0 00222610  90 7F 00 DC */	stw r3, 0xdc(r31)
/* 802256D4 00222614  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 802256D8 00222618  4B DF DE CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802256DC 0022261C  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 802256E0 00222620  38 80 00 64 */	li r4, 0x64
/* 802256E4 00222624  4B F2 C7 DD */	bl "alloc__27MonoObjectMgr<Q24Game4Piki>Fi"
/* 802256E8 00222628  80 9F 00 94 */	lwz r4, 0x94(r31)
/* 802256EC 0022262C  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802256F0 00222630  80 04 01 28 */	lwz r0, 0x148(r4)
/* 802256F4 00222634  90 03 00 18 */	stw r0, 0x18(r3)
/* 802256F8 00222638  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802256FC 0022263C  48 19 60 1D */	bl start__11ParticleMgrFv
/* 80225700 00222640  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225704 00222644  2C 00 00 00 */	cmpwi r0, 0
/* 80225708 00222648  40 82 00 48 */	bne lbl_80225750
/* 8022570C 0022264C  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225710 00222650  4B DF E0 A5 */	bl getFreeSize__7JKRHeapFv
/* 80225714 00222654  7C 64 1B 78 */	mr r4, r3
/* 80225718 00222658  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8022571C 0022265C  4C C6 31 82 */	crclr 6
/* 80225720 00222660  4B EC 7F CD */	bl OSReport
/* 80225724 00222664  80 6D 94 F8 */	lwz r3, mgr__Q24Game12PelletNumber@sda21(r13)
/* 80225728 00222668  81 83 00 00 */	lwz r12, 0(r3)
/* 8022572C 0022266C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80225730 00222670  7D 89 03 A6 */	mtctr r12
/* 80225734 00222674  4E 80 04 21 */	bctrl 
/* 80225738 00222678  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8022573C 0022267C  4B DF E0 79 */	bl getFreeSize__7JKRHeapFv
/* 80225740 00222680  7C 64 1B 78 */	mr r4, r3
/* 80225744 00222684  38 7E 02 C0 */	addi r3, r30, 0x2c0
/* 80225748 00222688  4C C6 31 82 */	crclr 6
/* 8022574C 0022268C  4B EC 7F A1 */	bl OSReport
lbl_80225750:
/* 80225750 00222690  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 80225754 00222694  28 00 00 00 */	cmplwi r0, 0
/* 80225758 00222698  41 82 00 18 */	beq lbl_80225770
/* 8022575C 0022269C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225760 002226A0  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225764 002226A4  38 80 0A BB */	li r4, 0xabb
/* 80225768 002226A8  4C C6 31 82 */	crclr 6
/* 8022576C 002226AC  4B E0 4E D5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225770:
/* 80225770 002226B0  38 60 00 90 */	li r3, 0x90
/* 80225774 002226B4  4B DF E7 31 */	bl __nw__FUl
/* 80225778 002226B8  7C 64 1B 79 */	or. r4, r3, r3
/* 8022577C 002226BC  41 82 00 0C */	beq lbl_80225788
/* 80225780 002226C0  4B EE 75 69 */	bl __ct__Q24Game15GeneralEnemyMgrFv
/* 80225784 002226C4  7C 64 1B 78 */	mr r4, r3
lbl_80225788:
/* 80225788 002226C8  90 8D 91 E0 */	stw r4, generalEnemyMgr__4Game@sda21(r13)
/* 8022578C 002226CC  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80225790 002226D0  4B F9 07 B9 */	bl addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80225794 002226D4  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 80225798 002226D8  2C 03 FF FF */	cmpwi r3, -1
/* 8022579C 002226DC  41 82 0A 54 */	beq lbl_802261F0
/* 802257A0 002226E0  2C 03 00 00 */	cmpwi r3, 0
/* 802257A4 002226E4  38 00 00 00 */	li r0, 0
/* 802257A8 002226E8  41 80 00 10 */	blt lbl_802257B8
/* 802257AC 002226EC  2C 03 00 66 */	cmpwi r3, 0x66
/* 802257B0 002226F0  40 80 00 08 */	bge lbl_802257B8
/* 802257B4 002226F4  38 00 00 01 */	li r0, 1
lbl_802257B8:
/* 802257B8 002226F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802257BC 002226FC  40 82 00 18 */	bne lbl_802257D4
/* 802257C0 00222700  38 7E 00 7C */	addi r3, r30, 0x7c
/* 802257C4 00222704  38 BE 00 90 */	addi r5, r30, 0x90
/* 802257C8 00222708  38 80 0A C1 */	li r4, 0xac1
/* 802257CC 0022270C  4C C6 31 82 */	crclr 6
/* 802257D0 00222710  4B E0 4E 71 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802257D4:
/* 802257D4 00222714  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 802257D8 00222718  38 A0 00 00 */	li r5, 0
/* 802257DC 0022271C  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 802257E0 00222720  1C 60 02 74 */	mulli r3, r0, 0x274
/* 802257E4 00222724  3B 43 08 28 */	addi r26, r3, 0x828
/* 802257E8 00222728  7F 44 D2 14 */	add r26, r4, r26
/* 802257EC 0022272C  88 1A 00 A0 */	lbz r0, 0xa0(r26)
/* 802257F0 00222730  28 00 00 0A */	cmplwi r0, 0xa
/* 802257F4 00222734  40 80 00 0C */	bge lbl_80225800
/* 802257F8 00222738  7C 05 03 78 */	mr r5, r0
/* 802257FC 0022273C  48 00 00 0C */	b lbl_80225808
lbl_80225800:
/* 80225800 00222740  38 00 00 00 */	li r0, 0
/* 80225804 00222744  98 1A 00 A0 */	stb r0, 0xa0(r26)
lbl_80225808:
/* 80225808 00222748  1C 65 00 C0 */	mulli r3, r5, 0xc0
/* 8022580C 0022274C  80 1A 00 8C */	lwz r0, 0x8c(r26)
/* 80225810 00222750  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80225814 00222754  C3 FA 00 64 */	lfs f31, 0x64(r26)
/* 80225818 00222758  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 8022581C 0022275C  38 A3 00 90 */	addi r5, r3, 0x90
/* 80225820 00222760  7C A4 2A 14 */	add r5, r4, r5
/* 80225824 00222764  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225828 00222768  C3 85 00 8C */	lfs f28, 0x8c(r5)
/* 8022582C 0022276C  C3 A5 00 64 */	lfs f29, 0x64(r5)
/* 80225830 00222770  C3 C5 00 3C */	lfs f30, 0x3c(r5)
/* 80225834 00222774  4B DF DF 81 */	bl getFreeSize__7JKRHeapFv
/* 80225838 00222778  7C 65 1B 78 */	mr r5, r3
/* 8022583C 0022277C  7F 24 CB 78 */	mr r4, r25
/* 80225840 00222780  38 7E 02 D4 */	addi r3, r30, 0x2d4
/* 80225844 00222784  4C C6 31 82 */	crclr 6
/* 80225848 00222788  4B EC 7E A5 */	bl OSReport
/* 8022584C 0022278C  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80225850 00222790  3B 00 00 00 */	li r24, 0
/* 80225854 00222794  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 80225858 00222798  38 63 00 40 */	addi r3, r3, 0x40
/* 8022585C 0022279C  48 00 E2 69 */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80225860 002227A0  28 03 00 00 */	cmplwi r3, 0
/* 80225864 002227A4  41 82 00 14 */	beq lbl_80225878
/* 80225868 002227A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8022586C 002227AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80225870 002227B0  40 81 00 08 */	ble lbl_80225878
/* 80225874 002227B4  3B 00 00 01 */	li r24, 1
lbl_80225878:
/* 80225878 002227B8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8022587C 002227BC  41 82 00 38 */	beq lbl_802258B4
/* 80225880 002227C0  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225884 002227C4  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80225888 002227C8  40 80 00 10 */	bge lbl_80225898
/* 8022588C 002227CC  2C 00 00 02 */	cmpwi r0, 2
/* 80225890 002227D0  41 82 00 10 */	beq lbl_802258A0
/* 80225894 002227D4  48 00 00 20 */	b lbl_802258B4
lbl_80225898:
/* 80225898 002227D8  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8022589C 002227DC  40 80 00 18 */	bge lbl_802258B4
lbl_802258A0:
/* 802258A0 002227E0  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258A4 002227E4  38 80 00 4D */	li r4, 0x4d
/* 802258A8 002227E8  38 A0 00 05 */	li r5, 5
/* 802258AC 002227EC  38 C0 00 00 */	li r6, 0
/* 802258B0 002227F0  4B EE 7F A5 */	bl addEnemyNum__Q24Game15GeneralEnemyMgrFiUcPQ24Game14GenObjectEnemy
lbl_802258B4:
/* 802258B4 002227F4  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258B8 002227F8  7F 25 CB 78 */	mr r5, r25
/* 802258BC 002227FC  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 802258C0 00222800  38 C0 00 00 */	li r6, 0
/* 802258C4 00222804  4B EE 7F 91 */	bl addEnemyNum__Q24Game15GeneralEnemyMgrFiUcPQ24Game14GenObjectEnemy
/* 802258C8 00222808  3C 80 00 10 */	lis r4, 0x000FA000@ha
/* 802258CC 0022280C  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258D0 00222810  38 A4 A0 00 */	addi r5, r4, 0x000FA000@l
/* 802258D4 00222814  38 80 00 01 */	li r4, 1
/* 802258D8 00222818  4B EE 7D 21 */	bl allocateEnemys__Q24Game15GeneralEnemyMgrFUci
/* 802258DC 0022281C  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258E0 00222820  4B EE 76 D5 */	bl setupSoundViewerAndBas__Q24Game15GeneralEnemyMgrFv
/* 802258E4 00222824  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 802258E8 00222828  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802258EC 0022282C  C3 62 BE B4 */	lfs f27, lbl_8051A214@sda21(r2)
/* 802258F0 00222830  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802258F4 00222834  41 82 00 08 */	beq lbl_802258FC
/* 802258F8 00222838  FF 60 08 90 */	fmr f27, f1
lbl_802258FC:
/* 802258FC 0022283C  1C 79 00 0C */	mulli r3, r25, 0xc
/* 80225900 00222840  38 63 00 10 */	addi r3, r3, 0x10
/* 80225904 00222844  4B DF E6 A9 */	bl __nwa__FUl
/* 80225908 00222848  3C 80 80 12 */	lis r4, "__ct__10Vector3<f>Fv"@ha
/* 8022590C 0022284C  7F 27 CB 78 */	mr r7, r25
/* 80225910 00222850  38 84 F3 48 */	addi r4, r4, "__ct__10Vector3<f>Fv"@l
/* 80225914 00222854  38 A0 00 00 */	li r5, 0
/* 80225918 00222858  38 C0 00 0C */	li r6, 0xc
/* 8022591C 0022285C  4B E9 C0 D5 */	bl __construct_new_array
/* 80225920 00222860  1C 99 00 0C */	mulli r4, r25, 0xc
/* 80225924 00222864  7C 7D 1B 78 */	mr r29, r3
/* 80225928 00222868  38 64 00 10 */	addi r3, r4, 0x10
/* 8022592C 0022286C  4B DF E6 81 */	bl __nwa__FUl
/* 80225930 00222870  3C 80 80 12 */	lis r4, "__ct__10Vector3<f>Fv"@ha
/* 80225934 00222874  7F 27 CB 78 */	mr r7, r25
/* 80225938 00222878  38 84 F3 48 */	addi r4, r4, "__ct__10Vector3<f>Fv"@l
/* 8022593C 0022287C  38 A0 00 00 */	li r5, 0
/* 80225940 00222880  38 C0 00 0C */	li r6, 0xc
/* 80225944 00222884  4B E9 C0 AD */	bl __construct_new_array
/* 80225948 00222888  7F BB EB 78 */	mr r27, r29
/* 8022594C 0022288C  7C 7C 1B 78 */	mr r28, r3
/* 80225950 00222890  3A E0 00 00 */	li r23, 0
/* 80225954 00222894  48 00 01 20 */	b lbl_80225A74
lbl_80225958:
/* 80225958 00222898  2C 17 00 00 */	cmpwi r23, 0
/* 8022595C 0022289C  40 82 00 18 */	bne lbl_80225974
/* 80225960 002228A0  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225964 002228A4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80225968 002228A8  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8022596C 002228AC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80225970 002228B0  48 00 00 FC */	b lbl_80225A6C
lbl_80225974:
/* 80225974 002228B4  4B EA 3C 2D */	bl rand
/* 80225978 002228B8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022597C 002228BC  3C 00 43 30 */	lis r0, 0x4330
/* 80225980 002228C0  90 61 00 BC */	stw r3, 0xbc(r1)
/* 80225984 002228C4  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225988 002228C8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8022598C 002228CC  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225990 002228D0  C8 41 00 B8 */	lfd f2, 0xb8(r1)
/* 80225994 002228D4  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225998 002228D8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8022599C 002228DC  EC 22 08 24 */	fdivs f1, f2, f1
/* 802259A0 002228E0  EF 40 00 72 */	fmuls f26, f0, f1
/* 802259A4 002228E4  4B EA 3B FD */	bl rand
/* 802259A8 002228E8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802259AC 002228EC  3C 00 43 30 */	lis r0, 0x4330
/* 802259B0 002228F0  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 802259B4 002228F4  FC 60 D0 90 */	fmr f3, f26
/* 802259B8 002228F8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802259BC 002228FC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 802259C0 00222900  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 802259C4 00222904  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802259C8 00222908  C8 21 00 C0 */	lfd f1, 0xc0(r1)
/* 802259CC 0022290C  C0 02 BE 18 */	lfs f0, lbl_8051A178@sda21(r2)
/* 802259D0 00222910  EC 21 10 28 */	fsubs f1, f1, f2
/* 802259D4 00222914  EC 01 00 24 */	fdivs f0, f1, f0
/* 802259D8 00222918  EC 9F 00 32 */	fmuls f4, f31, f0
/* 802259DC 0022291C  40 80 00 08 */	bge lbl_802259E4
/* 802259E0 00222920  FC 60 D0 50 */	fneg f3, f26
lbl_802259E4:
/* 802259E4 00222924  C0 42 BE 34 */	lfs f2, lbl_8051A194@sda21(r2)
/* 802259E8 00222928  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 802259EC 0022292C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802259F0 00222930  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 802259F4 00222934  EC 23 00 B2 */	fmuls f1, f3, f2
/* 802259F8 00222938  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802259FC 0022293C  FC 00 08 1E */	fctiwz f0, f1
/* 80225A00 00222940  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80225A04 00222944  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80225A08 00222948  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A0C 0022294C  7C 64 02 14 */	add r3, r4, r0
/* 80225A10 00222950  C0 03 00 04 */	lfs f0, 4(r3)
/* 80225A14 00222954  EC 64 00 32 */	fmuls f3, f4, f0
/* 80225A18 00222958  40 80 00 28 */	bge lbl_80225A40
/* 80225A1C 0022295C  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 80225A20 00222960  EC 1A 00 32 */	fmuls f0, f26, f0
/* 80225A24 00222964  FC 00 00 1E */	fctiwz f0, f0
/* 80225A28 00222968  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80225A2C 0022296C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80225A30 00222970  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A34 00222974  7C 04 04 2E */	lfsx f0, r4, r0
/* 80225A38 00222978  FC 00 00 50 */	fneg f0, f0
/* 80225A3C 0022297C  48 00 00 1C */	b lbl_80225A58
lbl_80225A40:
/* 80225A40 00222980  EC 1A 00 B2 */	fmuls f0, f26, f2
/* 80225A44 00222984  FC 00 00 1E */	fctiwz f0, f0
/* 80225A48 00222988  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80225A4C 0022298C  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80225A50 00222990  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A54 00222994  7C 04 04 2E */	lfsx f0, r4, r0
lbl_80225A58:
/* 80225A58 00222998  EC 24 00 32 */	fmuls f1, f4, f0
/* 80225A5C 0022299C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225A60 002229A0  D0 3B 00 00 */	stfs f1, 0(r27)
/* 80225A64 002229A4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80225A68 002229A8  D0 7B 00 08 */	stfs f3, 8(r27)
lbl_80225A6C:
/* 80225A6C 002229AC  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80225A70 002229B0  3A F7 00 01 */	addi r23, r23, 1
lbl_80225A74:
/* 80225A74 002229B4  7C 17 C8 00 */	cmpw r23, r25
/* 80225A78 002229B8  41 80 FE E0 */	blt lbl_80225958
/* 80225A7C 002229BC  C3 E2 BD C8 */	lfs f31, lbl_8051A128@sda21(r2)
/* 80225A80 002229C0  3B 79 FF F8 */	addi r27, r25, -8
/* 80225A84 002229C4  3A E0 00 00 */	li r23, 0
lbl_80225A88:
/* 80225A88 002229C8  2C 19 00 00 */	cmpwi r25, 0
/* 80225A8C 002229CC  38 80 00 00 */	li r4, 0
/* 80225A90 002229D0  40 81 00 C8 */	ble lbl_80225B58
/* 80225A94 002229D4  2C 19 00 08 */	cmpwi r25, 8
/* 80225A98 002229D8  40 81 00 8C */	ble lbl_80225B24
/* 80225A9C 002229DC  38 1B 00 07 */	addi r0, r27, 7
/* 80225AA0 002229E0  7F 83 E3 78 */	mr r3, r28
/* 80225AA4 002229E4  54 00 E8 FE */	srwi r0, r0, 3
/* 80225AA8 002229E8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225AAC 002229EC  7C 09 03 A6 */	mtctr r0
/* 80225AB0 002229F0  2C 1B 00 00 */	cmpwi r27, 0
/* 80225AB4 002229F4  40 81 00 70 */	ble lbl_80225B24
lbl_80225AB8:
/* 80225AB8 002229F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80225ABC 002229FC  38 84 00 08 */	addi r4, r4, 8
/* 80225AC0 00222A00  D0 03 00 04 */	stfs f0, 4(r3)
/* 80225AC4 00222A04  D0 03 00 00 */	stfs f0, 0(r3)
/* 80225AC8 00222A08  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80225ACC 00222A0C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80225AD0 00222A10  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80225AD4 00222A14  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80225AD8 00222A18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80225ADC 00222A1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80225AE0 00222A20  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80225AE4 00222A24  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80225AE8 00222A28  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80225AEC 00222A2C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80225AF0 00222A30  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80225AF4 00222A34  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80225AF8 00222A38  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80225AFC 00222A3C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80225B00 00222A40  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80225B04 00222A44  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80225B08 00222A48  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80225B0C 00222A4C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80225B10 00222A50  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80225B14 00222A54  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80225B18 00222A58  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80225B1C 00222A5C  38 63 00 60 */	addi r3, r3, 0x60
/* 80225B20 00222A60  42 00 FF 98 */	bdnz lbl_80225AB8
lbl_80225B24:
/* 80225B24 00222A64  1C 64 00 0C */	mulli r3, r4, 0xc
/* 80225B28 00222A68  7C 04 C8 50 */	subf r0, r4, r25
/* 80225B2C 00222A6C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225B30 00222A70  7C 7C 1A 14 */	add r3, r28, r3
/* 80225B34 00222A74  7C 09 03 A6 */	mtctr r0
/* 80225B38 00222A78  7C 04 C8 00 */	cmpw r4, r25
/* 80225B3C 00222A7C  40 80 00 1C */	bge lbl_80225B58
lbl_80225B40:
/* 80225B40 00222A80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80225B44 00222A84  38 84 00 01 */	addi r4, r4, 1
/* 80225B48 00222A88  D0 03 00 04 */	stfs f0, 4(r3)
/* 80225B4C 00222A8C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80225B50 00222A90  38 63 00 0C */	addi r3, r3, 0xc
/* 80225B54 00222A94  42 00 FF EC */	bdnz lbl_80225B40
lbl_80225B58:
/* 80225B58 00222A98  7F A5 EB 78 */	mr r5, r29
/* 80225B5C 00222A9C  7F 86 E3 78 */	mr r6, r28
/* 80225B60 00222AA0  38 E0 00 00 */	li r7, 0
/* 80225B64 00222AA4  48 00 01 4C */	b lbl_80225CB0
lbl_80225B68:
/* 80225B68 00222AA8  39 07 00 01 */	addi r8, r7, 1
/* 80225B6C 00222AAC  1C 88 00 0C */	mulli r4, r8, 0xc
/* 80225B70 00222AB0  7C 08 C8 50 */	subf r0, r8, r25
/* 80225B74 00222AB4  7C 7D 22 14 */	add r3, r29, r4
/* 80225B78 00222AB8  7C 9C 22 14 */	add r4, r28, r4
/* 80225B7C 00222ABC  7C 09 03 A6 */	mtctr r0
/* 80225B80 00222AC0  7C 08 C8 00 */	cmpw r8, r25
/* 80225B84 00222AC4  40 80 01 20 */	bge lbl_80225CA4
lbl_80225B88:
/* 80225B88 00222AC8  C0 25 00 04 */	lfs f1, 4(r5)
/* 80225B8C 00222ACC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80225B90 00222AD0  C0 45 00 08 */	lfs f2, 8(r5)
/* 80225B94 00222AD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80225B98 00222AD8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80225B9C 00222ADC  C0 65 00 00 */	lfs f3, 0(r5)
/* 80225BA0 00222AE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80225BA4 00222AE4  C0 43 00 00 */	lfs f2, 0(r3)
/* 80225BA8 00222AE8  EC A0 00 32 */	fmuls f5, f0, f0
/* 80225BAC 00222AEC  EC C3 10 28 */	fsubs f6, f3, f2
/* 80225BB0 00222AF0  EC E1 00 72 */	fmuls f7, f1, f1
/* 80225BB4 00222AF4  EC 46 29 BA */	fmadds f2, f6, f6, f5
/* 80225BB8 00222AF8  ED 07 10 2A */	fadds f8, f7, f2
/* 80225BBC 00222AFC  FC 08 F8 40 */	fcmpo cr0, f8, f31
/* 80225BC0 00222B00  40 81 00 1C */	ble lbl_80225BDC
/* 80225BC4 00222B04  40 81 00 10 */	ble lbl_80225BD4
/* 80225BC8 00222B08  FC 40 40 34 */	frsqrte f2, f8
/* 80225BCC 00222B0C  EC 82 02 32 */	fmuls f4, f2, f8
/* 80225BD0 00222B10  48 00 00 10 */	b lbl_80225BE0
lbl_80225BD4:
/* 80225BD4 00222B14  FC 80 40 90 */	fmr f4, f8
/* 80225BD8 00222B18  48 00 00 08 */	b lbl_80225BE0
lbl_80225BDC:
/* 80225BDC 00222B1C  FC 80 F8 90 */	fmr f4, f31
lbl_80225BE0:
/* 80225BE0 00222B20  FC 04 D8 40 */	fcmpo cr0, f4, f27
/* 80225BE4 00222B24  40 80 00 B0 */	bge lbl_80225C94
/* 80225BE8 00222B28  C0 62 BD C8 */	lfs f3, lbl_8051A128@sda21(r2)
/* 80225BEC 00222B2C  FC 08 18 40 */	fcmpo cr0, f8, f3
/* 80225BF0 00222B30  40 81 00 20 */	ble lbl_80225C10
/* 80225BF4 00222B34  EC 46 29 BA */	fmadds f2, f6, f6, f5
/* 80225BF8 00222B38  EC A7 10 2A */	fadds f5, f7, f2
/* 80225BFC 00222B3C  FC 05 18 40 */	fcmpo cr0, f5, f3
/* 80225C00 00222B40  40 81 00 14 */	ble lbl_80225C14
/* 80225C04 00222B44  FC 40 28 34 */	frsqrte f2, f5
/* 80225C08 00222B48  EC A2 01 72 */	fmuls f5, f2, f5
/* 80225C0C 00222B4C  48 00 00 08 */	b lbl_80225C14
lbl_80225C10:
/* 80225C10 00222B50  FC A0 18 90 */	fmr f5, f3
lbl_80225C14:
/* 80225C14 00222B54  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80225C18 00222B58  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 80225C1C 00222B5C  40 81 00 18 */	ble lbl_80225C34
/* 80225C20 00222B60  C0 42 BD BC */	lfs f2, lbl_8051A11C@sda21(r2)
/* 80225C24 00222B64  EC 42 28 24 */	fdivs f2, f2, f5
/* 80225C28 00222B68  EC C6 00 B2 */	fmuls f6, f6, f2
/* 80225C2C 00222B6C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80225C30 00222B70  EC 21 00 B2 */	fmuls f1, f1, f2
lbl_80225C34:
/* 80225C34 00222B74  EC 7B 20 28 */	fsubs f3, f27, f4
/* 80225C38 00222B78  C0 82 BD E8 */	lfs f4, lbl_8051A148@sda21(r2)
/* 80225C3C 00222B7C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80225C40 00222B80  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80225C44 00222B84  EC C6 00 F2 */	fmuls f6, f6, f3
/* 80225C48 00222B88  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80225C4C 00222B8C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80225C50 00222B90  EC 42 30 2A */	fadds f2, f2, f6
/* 80225C54 00222B94  D0 46 00 00 */	stfs f2, 0(r6)
/* 80225C58 00222B98  C0 46 00 04 */	lfs f2, 4(r6)
/* 80225C5C 00222B9C  EC 42 00 2A */	fadds f2, f2, f0
/* 80225C60 00222BA0  D0 46 00 04 */	stfs f2, 4(r6)
/* 80225C64 00222BA4  C0 46 00 08 */	lfs f2, 8(r6)
/* 80225C68 00222BA8  EC 42 08 2A */	fadds f2, f2, f1
/* 80225C6C 00222BAC  D0 46 00 08 */	stfs f2, 8(r6)
/* 80225C70 00222BB0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80225C74 00222BB4  EC 42 30 28 */	fsubs f2, f2, f6
/* 80225C78 00222BB8  D0 44 00 00 */	stfs f2, 0(r4)
/* 80225C7C 00222BBC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80225C80 00222BC0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80225C84 00222BC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80225C88 00222BC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80225C8C 00222BCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80225C90 00222BD0  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80225C94:
/* 80225C94 00222BD4  38 63 00 0C */	addi r3, r3, 0xc
/* 80225C98 00222BD8  38 84 00 0C */	addi r4, r4, 0xc
/* 80225C9C 00222BDC  39 08 00 01 */	addi r8, r8, 1
/* 80225CA0 00222BE0  42 00 FE E8 */	bdnz lbl_80225B88
lbl_80225CA4:
/* 80225CA4 00222BE4  38 A5 00 0C */	addi r5, r5, 0xc
/* 80225CA8 00222BE8  38 C6 00 0C */	addi r6, r6, 0xc
/* 80225CAC 00222BEC  38 E7 00 01 */	addi r7, r7, 1
lbl_80225CB0:
/* 80225CB0 00222BF0  7C 07 C8 00 */	cmpw r7, r25
/* 80225CB4 00222BF4  41 80 FE B4 */	blt lbl_80225B68
/* 80225CB8 00222BF8  7F 96 E3 78 */	mr r22, r28
/* 80225CBC 00222BFC  7F B5 EB 78 */	mr r21, r29
/* 80225CC0 00222C00  3A 80 00 00 */	li r20, 0
/* 80225CC4 00222C04  48 00 00 5C */	b lbl_80225D20
lbl_80225CC8:
/* 80225CC8 00222C08  C0 35 00 00 */	lfs f1, 0(r21)
/* 80225CCC 00222C0C  7E A4 AB 78 */	mr r4, r21
/* 80225CD0 00222C10  C0 16 00 00 */	lfs f0, 0(r22)
/* 80225CD4 00222C14  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CD8 00222C18  D0 15 00 00 */	stfs f0, 0(r21)
/* 80225CDC 00222C1C  C0 35 00 04 */	lfs f1, 4(r21)
/* 80225CE0 00222C20  C0 16 00 04 */	lfs f0, 4(r22)
/* 80225CE4 00222C24  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CE8 00222C28  D0 15 00 04 */	stfs f0, 4(r21)
/* 80225CEC 00222C2C  C0 35 00 08 */	lfs f1, 8(r21)
/* 80225CF0 00222C30  C0 16 00 08 */	lfs f0, 8(r22)
/* 80225CF4 00222C34  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CF8 00222C38  D0 15 00 08 */	stfs f0, 8(r21)
/* 80225CFC 00222C3C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80225D00 00222C40  81 83 00 04 */	lwz r12, 4(r3)
/* 80225D04 00222C44  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80225D08 00222C48  7D 89 03 A6 */	mtctr r12
/* 80225D0C 00222C4C  4E 80 04 21 */	bctrl 
/* 80225D10 00222C50  D0 35 00 04 */	stfs f1, 4(r21)
/* 80225D14 00222C54  3A D6 00 0C */	addi r22, r22, 0xc
/* 80225D18 00222C58  3A B5 00 0C */	addi r21, r21, 0xc
/* 80225D1C 00222C5C  3A 94 00 01 */	addi r20, r20, 1
lbl_80225D20:
/* 80225D20 00222C60  7C 14 C8 00 */	cmpw r20, r25
/* 80225D24 00222C64  41 80 FF A4 */	blt lbl_80225CC8
/* 80225D28 00222C68  3A F7 00 01 */	addi r23, r23, 1
/* 80225D2C 00222C6C  2C 17 00 05 */	cmpwi r23, 5
/* 80225D30 00222C70  41 80 FD 58 */	blt lbl_80225A88
/* 80225D34 00222C74  7F B5 EB 78 */	mr r21, r29
/* 80225D38 00222C78  3A 80 00 00 */	li r20, 0
/* 80225D3C 00222C7C  48 00 00 F0 */	b lbl_80225E2C
lbl_80225D40:
/* 80225D40 00222C80  38 61 00 84 */	addi r3, r1, 0x84
/* 80225D44 00222C84  4B F0 8E E1 */	bl __ct__Q24Game13EnemyBirthArgFv
/* 80225D48 00222C88  2C 14 00 00 */	cmpwi r20, 0
/* 80225D4C 00222C8C  40 82 00 10 */	bne lbl_80225D5C
/* 80225D50 00222C90  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225D54 00222C94  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80225D58 00222C98  48 00 00 38 */	b lbl_80225D90
lbl_80225D5C:
/* 80225D5C 00222C9C  4B EA 38 45 */	bl rand
/* 80225D60 00222CA0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80225D64 00222CA4  3C 00 43 30 */	lis r0, 0x4330
/* 80225D68 00222CA8  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80225D6C 00222CAC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225D70 00222CB0  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80225D74 00222CB4  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225D78 00222CB8  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 80225D7C 00222CBC  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225D80 00222CC0  EC 42 18 28 */	fsubs f2, f2, f3
/* 80225D84 00222CC4  EC 22 08 24 */	fdivs f1, f2, f1
/* 80225D88 00222CC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80225D8C 00222CCC  D0 01 00 90 */	stfs f0, 0x90(r1)
lbl_80225D90:
/* 80225D90 00222CD0  C0 15 00 00 */	lfs f0, 0(r21)
/* 80225D94 00222CD4  38 81 00 84 */	addi r4, r1, 0x84
/* 80225D98 00222CD8  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80225D9C 00222CDC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80225DA0 00222CE0  EC 40 F0 2A */	fadds f2, f0, f30
/* 80225DA4 00222CE4  C0 15 00 04 */	lfs f0, 4(r21)
/* 80225DA8 00222CE8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80225DAC 00222CEC  EC 20 E8 2A */	fadds f1, f0, f29
/* 80225DB0 00222CF0  C0 75 00 08 */	lfs f3, 8(r21)
/* 80225DB4 00222CF4  EC 03 E0 2A */	fadds f0, f3, f28
/* 80225DB8 00222CF8  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80225DBC 00222CFC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80225DC0 00222D00  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80225DC4 00222D04  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80225DC8 00222D08  81 83 00 04 */	lwz r12, 4(r3)
/* 80225DCC 00222D0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80225DD0 00222D10  7D 89 03 A6 */	mtctr r12
/* 80225DD4 00222D14  4E 80 04 21 */	bctrl 
/* 80225DD8 00222D18  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80225DDC 00222D1C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80225DE0 00222D20  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80225DE4 00222D24  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 80225DE8 00222D28  4B EE 76 D9 */	bl birth__Q24Game15GeneralEnemyMgrFiRQ24Game13EnemyBirthArg
/* 80225DEC 00222D2C  7C 77 1B 79 */	or. r23, r3, r3
/* 80225DF0 00222D30  40 82 00 20 */	bne lbl_80225E10
/* 80225DF4 00222D34  80 DF 00 A0 */	lwz r6, 0xa0(r31)
/* 80225DF8 00222D38  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225DFC 00222D3C  38 BE 02 F4 */	addi r5, r30, 0x2f4
/* 80225E00 00222D40  38 80 0B 3F */	li r4, 0xb3f
/* 80225E04 00222D44  4C C6 31 82 */	crclr 6
/* 80225E08 00222D48  4B E0 48 39 */	bl panic_f__12JUTExceptionFPCciPCce
/* 80225E0C 00222D4C  48 00 00 18 */	b lbl_80225E24
lbl_80225E10:
/* 80225E10 00222D50  38 80 00 00 */	li r4, 0
/* 80225E14 00222D54  4B F1 51 B5 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 80225E18 00222D58  2C 14 00 00 */	cmpwi r20, 0
/* 80225E1C 00222D5C  40 82 00 08 */	bne lbl_80225E24
/* 80225E20 00222D60  92 FF 00 A4 */	stw r23, 0xa4(r31)
lbl_80225E24:
/* 80225E24 00222D64  3A B5 00 0C */	addi r21, r21, 0xc
/* 80225E28 00222D68  3A 94 00 01 */	addi r20, r20, 1
lbl_80225E2C:
/* 80225E2C 00222D6C  7C 14 C8 00 */	cmpw r20, r25
/* 80225E30 00222D70  41 80 FF 10 */	blt lbl_80225D40
/* 80225E34 00222D74  7F A3 EB 78 */	mr r3, r29
/* 80225E38 00222D78  4B DF E2 7D */	bl __dl__FPv
/* 80225E3C 00222D7C  7F 83 E3 78 */	mr r3, r28
/* 80225E40 00222D80  4B DF E2 75 */	bl __dl__FPv
/* 80225E44 00222D84  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80225E48 00222D88  41 82 00 C8 */	beq lbl_80225F10
/* 80225E4C 00222D8C  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225E50 00222D90  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80225E54 00222D94  40 80 00 10 */	bge lbl_80225E64
/* 80225E58 00222D98  2C 00 00 02 */	cmpwi r0, 2
/* 80225E5C 00222D9C  41 82 00 10 */	beq lbl_80225E6C
/* 80225E60 00222DA0  48 00 00 B0 */	b lbl_80225F10
lbl_80225E64:
/* 80225E64 00222DA4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80225E68 00222DA8  40 80 00 A8 */	bge lbl_80225F10
lbl_80225E6C:
/* 80225E6C 00222DAC  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80225E70 00222DB0  38 80 00 4D */	li r4, 0x4d
/* 80225E74 00222DB4  4B EE 7E 31 */	bl getEnemyMgr__Q24Game15GeneralEnemyMgrFi
/* 80225E78 00222DB8  7C 74 1B 79 */	or. r20, r3, r3
/* 80225E7C 00222DBC  41 82 00 94 */	beq lbl_80225F10
/* 80225E80 00222DC0  38 61 00 50 */	addi r3, r1, 0x50
/* 80225E84 00222DC4  4B F0 8D A1 */	bl __ct__Q24Game13EnemyBirthArgFv
/* 80225E88 00222DC8  80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 80225E8C 00222DCC  38 61 00 20 */	addi r3, r1, 0x20
/* 80225E90 00222DD0  81 84 00 00 */	lwz r12, 0(r4)
/* 80225E94 00222DD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80225E98 00222DD8  7D 89 03 A6 */	mtctr r12
/* 80225E9C 00222DDC  4E 80 04 21 */	bctrl 
/* 80225EA0 00222DE0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80225EA4 00222DE4  C0 02 BD D8 */	lfs f0, lbl_8051A138@sda21(r2)
/* 80225EA8 00222DE8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80225EAC 00222DEC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80225EB0 00222DF0  EC 02 00 2A */	fadds f0, f2, f0
/* 80225EB4 00222DF4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80225EB8 00222DF8  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80225EBC 00222DFC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80225EC0 00222E00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80225EC4 00222E04  4B EA 36 DD */	bl rand
/* 80225EC8 00222E08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80225ECC 00222E0C  3C 00 43 30 */	lis r0, 0x4330
/* 80225ED0 00222E10  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80225ED4 00222E14  7E 83 A3 78 */	mr r3, r20
/* 80225ED8 00222E18  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225EDC 00222E1C  38 81 00 50 */	addi r4, r1, 0x50
/* 80225EE0 00222E20  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80225EE4 00222E24  38 C0 00 05 */	li r6, 5
/* 80225EE8 00222E28  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225EEC 00222E2C  38 E0 00 00 */	li r7, 0
/* 80225EF0 00222E30  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 80225EF4 00222E34  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225EF8 00222E38  EC 42 18 28 */	fsubs f2, f2, f3
/* 80225EFC 00222E3C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80225F00 00222E40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80225F04 00222E44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80225F08 00222E48  80 BF 00 A4 */	lwz r5, 0xa4(r31)
/* 80225F0C 00222E4C  48 16 33 65 */	bl createGroupByEnemy__Q34Game11ShijimiChou3MgrFRQ24Game13EnemyBirthArgPQ24Game9EnemyBaseib
lbl_80225F10:
/* 80225F10 00222E50  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F14 00222E54  80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 80225F18 00222E58  4B FF B5 F5 */	bl setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature
/* 80225F1C 00222E5C  C0 9A 01 B8 */	lfs f4, 0x1b8(r26)
/* 80225F20 00222E60  3A E0 00 00 */	li r23, 0
/* 80225F24 00222E64  C0 7A 01 90 */	lfs f3, 0x190(r26)
/* 80225F28 00222E68  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F2C 00222E6C  C0 1A 01 68 */	lfs f0, 0x168(r26)
/* 80225F30 00222E70  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 80225F34 00222E74  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80225F38 00222E78  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80225F3C 00222E7C  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80225F40 00222E80  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 80225F44 00222E84  C0 1A 00 C8 */	lfs f0, 0xc8(r26)
/* 80225F48 00222E88  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F4C 00222E8C  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80225F50 00222E90  C0 1A 00 F0 */	lfs f0, 0xf0(r26)
/* 80225F54 00222E94  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F58 00222E98  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80225F5C 00222E9C  C0 7A 01 40 */	lfs f3, 0x140(r26)
/* 80225F60 00222EA0  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F64 00222EA4  C0 1A 01 18 */	lfs f0, 0x118(r26)
/* 80225F68 00222EA8  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80225F6C 00222EAC  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80225F70 00222EB0  C0 9A 02 30 */	lfs f4, 0x230(r26)
/* 80225F74 00222EB4  C0 7A 02 08 */	lfs f3, 0x208(r26)
/* 80225F78 00222EB8  C0 1A 01 E0 */	lfs f0, 0x1e0(r26)
/* 80225F7C 00222EBC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F80 00222EC0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80225F84 00222EC4  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80225F88 00222EC8  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80225F8C 00222ECC  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80225F90 00222ED0  C0 1A 02 58 */	lfs f0, 0x258(r26)
/* 80225F94 00222ED4  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F98 00222ED8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80225F9C 00222EDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80225FA0 00222EE0  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 80225FA4 00222EE4  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225FA8 00222EE8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80225FAC 00222EEC  41 82 00 28 */	beq lbl_80225FD4
/* 80225FB0 00222EF0  40 80 00 18 */	bge lbl_80225FC8
/* 80225FB4 00222EF4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80225FB8 00222EF8  40 80 00 20 */	bge lbl_80225FD8
/* 80225FBC 00222EFC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80225FC0 00222F00  40 80 00 14 */	bge lbl_80225FD4
/* 80225FC4 00222F04  48 00 00 14 */	b lbl_80225FD8
lbl_80225FC8:
/* 80225FC8 00222F08  2C 00 00 46 */	cmpwi r0, 0x46
/* 80225FCC 00222F0C  41 82 00 08 */	beq lbl_80225FD4
/* 80225FD0 00222F10  48 00 00 08 */	b lbl_80225FD8
lbl_80225FD4:
/* 80225FD4 00222F14  3A E0 00 0A */	li r23, 0xa
lbl_80225FD8:
/* 80225FD8 00222F18  2C 17 00 00 */	cmpwi r23, 0
/* 80225FDC 00222F1C  40 81 02 C0 */	ble lbl_8022629C
/* 80225FE0 00222F20  3B 00 00 00 */	li r24, 0
/* 80225FE4 00222F24  48 00 02 00 */	b lbl_802261E4
lbl_80225FE8:
/* 80225FE8 00222F28  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80225FEC 00222F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225FF0 00222F30  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80225FF4 00222F34  7D 89 03 A6 */	mtctr r12
/* 80225FF8 00222F38  4E 80 04 21 */	bctrl 
/* 80225FFC 00222F3C  7C 79 1B 79 */	or. r25, r3, r3
/* 80226000 00222F40  41 82 01 E0 */	beq lbl_802261E0
/* 80226004 00222F44  3C A0 80 4B */	lis r5, __vt__Q24Game15CreatureInitArg@ha
/* 80226008 00222F48  3C 80 80 4B */	lis r4, __vt__Q24Game11PikiInitArg@ha
/* 8022600C 00222F4C  38 05 A2 F4 */	addi r0, r5, __vt__Q24Game15CreatureInitArg@l
/* 80226010 00222F50  38 A0 00 20 */	li r5, 0x20
/* 80226014 00222F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80226018 00222F58  38 C4 10 F4 */	addi r6, r4, __vt__Q24Game11PikiInitArg@l
/* 8022601C 00222F5C  38 00 00 00 */	li r0, 0
/* 80226020 00222F60  38 81 00 44 */	addi r4, r1, 0x44
/* 80226024 00222F64  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80226028 00222F68  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8022602C 00222F6C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80226030 00222F70  4B F1 4F 99 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 80226034 00222F74  7F 23 CB 78 */	mr r3, r25
/* 80226038 00222F78  38 80 00 06 */	li r4, 6
/* 8022603C 00222F7C  4B F2 45 85 */	bl changeShape__Q24Game4PikiFi
/* 80226040 00222F80  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80226044 00222F84  38 61 00 14 */	addi r3, r1, 0x14
/* 80226048 00222F88  48 1F 4A 51 */	bl getLookAtPosition__6CameraFv
/* 8022604C 00222F8C  C3 81 00 14 */	lfs f28, 0x14(r1)
/* 80226050 00222F90  38 61 00 08 */	addi r3, r1, 8
/* 80226054 00222F94  C3 A1 00 18 */	lfs f29, 0x18(r1)
/* 80226058 00222F98  C3 C1 00 1C */	lfs f30, 0x1c(r1)
/* 8022605C 00222F9C  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80226060 00222FA0  48 1F 42 75 */	bl getViewVector__11CullFrustumFv
/* 80226064 00222FA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80226068 00222FA8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8022606C 00222FAC  EC 60 00 32 */	fmuls f3, f0, f0
/* 80226070 00222FB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80226074 00222FB4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80226078 00222FB8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022607C 00222FBC  EC 21 18 7A */	fmadds f1, f1, f1, f3
/* 80226080 00222FC0  EC 22 08 2A */	fadds f1, f2, f1
/* 80226084 00222FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80226088 00222FC8  4B EA 35 19 */	bl rand
/* 8022608C 00222FCC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80226090 00222FD0  3C 00 43 30 */	lis r0, 0x4330
/* 80226094 00222FD4  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80226098 00222FD8  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 8022609C 00222FDC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 802260A0 00222FE0  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802260A4 00222FE4  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 802260A8 00222FE8  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 802260AC 00222FEC  EC 42 18 28 */	fsubs f2, f2, f3
/* 802260B0 00222FF0  EC 22 08 24 */	fdivs f1, f2, f1
/* 802260B4 00222FF4  EF 40 00 72 */	fmuls f26, f0, f1
/* 802260B8 00222FF8  4B EA 34 E9 */	bl rand
/* 802260BC 00222FFC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802260C0 00223000  3C 00 43 30 */	lis r0, 0x4330
/* 802260C4 00223004  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 802260C8 00223008  FC 60 D0 90 */	fmr f3, f26
/* 802260CC 0022300C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802260D0 00223010  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 802260D4 00223014  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 802260D8 00223018  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802260DC 0022301C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 802260E0 00223020  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802260E4 00223024  EC 40 10 28 */	fsubs f2, f0, f2
/* 802260E8 00223028  C0 02 BD C4 */	lfs f0, lbl_8051A124@sda21(r2)
/* 802260EC 0022302C  EC 22 08 24 */	fdivs f1, f2, f1
/* 802260F0 00223030  EC 80 00 72 */	fmuls f4, f0, f1
/* 802260F4 00223034  40 80 00 08 */	bge lbl_802260FC
/* 802260F8 00223038  FC 60 D0 50 */	fneg f3, f26
lbl_802260FC:
/* 802260FC 0022303C  C0 42 BE 34 */	lfs f2, lbl_8051A194@sda21(r2)
/* 80226100 00223040  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80226104 00223044  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80226108 00223048  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 8022610C 0022304C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 80226110 00223050  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 80226114 00223054  FC 00 08 1E */	fctiwz f0, f1
/* 80226118 00223058  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8022611C 0022305C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80226120 00223060  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80226124 00223064  7C 64 02 14 */	add r3, r4, r0
/* 80226128 00223068  C0 03 00 04 */	lfs f0, 4(r3)
/* 8022612C 0022306C  EC 24 00 32 */	fmuls f1, f4, f0
/* 80226130 00223070  40 80 00 28 */	bge lbl_80226158
/* 80226134 00223074  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 80226138 00223078  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8022613C 0022307C  FC 00 00 1E */	fctiwz f0, f0
/* 80226140 00223080  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80226144 00223084  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80226148 00223088  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 8022614C 0022308C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80226150 00223090  FC 00 00 50 */	fneg f0, f0
/* 80226154 00223094  48 00 00 1C */	b lbl_80226170
lbl_80226158:
/* 80226158 00223098  EC 1A 00 B2 */	fmuls f0, f26, f2
/* 8022615C 0022309C  FC 00 00 1E */	fctiwz f0, f0
/* 80226160 002230A0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80226164 002230A4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80226168 002230A8  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 8022616C 002230AC  7C 04 04 2E */	lfsx f0, r4, r0
lbl_80226170:
/* 80226170 002230B0  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80226174 002230B4  EC 64 00 32 */	fmuls f3, f4, f0
/* 80226178 002230B8  EC 3E 08 2A */	fadds f1, f30, f1
/* 8022617C 002230BC  C0 02 BE C0 */	lfs f0, lbl_8051A220@sda21(r2)
/* 80226180 002230C0  EC 5D 10 2A */	fadds f2, f29, f2
/* 80226184 002230C4  7F 23 CB 78 */	mr r3, r25
/* 80226188 002230C8  EC 7C 18 2A */	fadds f3, f28, f3
/* 8022618C 002230CC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80226190 002230D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80226194 002230D4  38 81 00 38 */	addi r4, r1, 0x38
/* 80226198 002230D8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8022619C 002230DC  38 A0 00 00 */	li r5, 0
/* 802261A0 002230E0  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 802261A4 002230E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802261A8 002230E8  4B F1 50 01 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 802261AC 002230EC  4B EA 33 F5 */	bl rand
/* 802261B0 002230F0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802261B4 002230F4  3C 00 43 30 */	lis r0, 0x4330
/* 802261B8 002230F8  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 802261BC 002230FC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802261C0 00223100  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 802261C4 00223104  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802261C8 00223108  C8 41 00 E0 */	lfd f2, 0xe0(r1)
/* 802261CC 0022310C  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 802261D0 00223110  EC 42 18 28 */	fsubs f2, f2, f3
/* 802261D4 00223114  EC 22 08 24 */	fdivs f1, f2, f1
/* 802261D8 00223118  EC 00 00 72 */	fmuls f0, f0, f1
/* 802261DC 0022311C  D0 19 01 FC */	stfs f0, 0x1fc(r25)
lbl_802261E0:
/* 802261E0 00223120  3B 18 00 01 */	addi r24, r24, 1
lbl_802261E4:
/* 802261E4 00223124  7C 18 B8 00 */	cmpw r24, r23
/* 802261E8 00223128  41 80 FE 00 */	blt lbl_80225FE8
/* 802261EC 0022312C  48 00 00 B0 */	b lbl_8022629C
lbl_802261F0:
/* 802261F0 00223130  82 BF 01 00 */	lwz r21, 0x100(r31)
/* 802261F4 00223134  38 81 00 2C */	addi r4, r1, 0x2c
/* 802261F8 00223138  C0 55 01 1C */	lfs f2, 0x11c(r21)
/* 802261FC 0022313C  C0 35 00 F4 */	lfs f1, 0xf4(r21)
/* 80226200 00223140  C0 15 00 CC */	lfs f0, 0xcc(r21)
/* 80226204 00223144  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80226208 00223148  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8022620C 0022314C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80226210 00223150  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226214 00223154  4B FF B2 71 */	bl "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
/* 80226218 00223158  C0 95 09 E0 */	lfs f4, 0x9e0(r21)
/* 8022621C 0022315C  C0 75 09 B8 */	lfs f3, 0x9b8(r21)
/* 80226220 00223160  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226224 00223164  C0 15 09 90 */	lfs f0, 0x990(r21)
/* 80226228 00223168  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 8022622C 0022316C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226230 00223170  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80226234 00223174  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226238 00223178  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 8022623C 0022317C  C0 15 08 F0 */	lfs f0, 0x8f0(r21)
/* 80226240 00223180  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226244 00223184  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226248 00223188  C0 15 09 18 */	lfs f0, 0x918(r21)
/* 8022624C 0022318C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226250 00223190  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80226254 00223194  C0 75 09 68 */	lfs f3, 0x968(r21)
/* 80226258 00223198  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8022625C 0022319C  C0 15 09 40 */	lfs f0, 0x940(r21)
/* 80226260 002231A0  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80226264 002231A4  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226268 002231A8  C0 95 0A 58 */	lfs f4, 0xa58(r21)
/* 8022626C 002231AC  C0 75 0A 30 */	lfs f3, 0xa30(r21)
/* 80226270 002231B0  C0 15 0A 08 */	lfs f0, 0xa08(r21)
/* 80226274 002231B4  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226278 002231B8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022627C 002231BC  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226280 002231C0  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80226284 002231C4  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226288 002231C8  C0 15 0A 80 */	lfs f0, 0xa80(r21)
/* 8022628C 002231CC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226290 002231D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226294 002231D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226298 002231D8  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
lbl_8022629C:
/* 8022629C 002231DC  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 802262A0 002231E0  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 802262A4 002231E4  E3 C1 01 68 */	psq_l f30, 360(r1), 0, qr0
/* 802262A8 002231E8  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 802262AC 002231EC  E3 A1 01 58 */	psq_l f29, 344(r1), 0, qr0
/* 802262B0 002231F0  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 802262B4 002231F4  E3 81 01 48 */	psq_l f28, 328(r1), 0, qr0
/* 802262B8 002231F8  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 802262BC 002231FC  E3 61 01 38 */	psq_l f27, 312(r1), 0, qr0
/* 802262C0 00223200  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 802262C4 00223204  E3 41 01 28 */	psq_l f26, 296(r1), 0, qr0
/* 802262C8 00223208  CB 41 01 20 */	lfd f26, 0x120(r1)
/* 802262CC 0022320C  BA 81 00 F0 */	lmw r20, 0xf0(r1)
/* 802262D0 00223210  80 01 01 84 */	lwz r0, 0x184(r1)
/* 802262D4 00223214  7C 08 03 A6 */	mtlr r0
/* 802262D8 00223218  38 21 01 80 */	addi r1, r1, 0x180
/* 802262DC 0022321C  4E 80 00 20 */	blr 
.else
.global dvdloadB_teki__Q34Game10SingleGame10ZukanStateFv
dvdloadB_teki__Q34Game10SingleGame10ZukanStateFv:
/* 80225604 00222544  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80225608 00222548  7C 08 02 A6 */	mflr r0
/* 8022560C 0022254C  90 01 01 84 */	stw r0, 0x184(r1)
/* 80225610 00222550  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80225614 00222554  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 80225618 00222558  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 8022561C 0022255C  F3 C1 01 68 */	psq_st f30, 360(r1), 0, qr0
/* 80225620 00222560  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80225624 00222564  F3 A1 01 58 */	psq_st f29, 344(r1), 0, qr0
/* 80225628 00222568  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 8022562C 0022256C  F3 81 01 48 */	psq_st f28, 328(r1), 0, qr0
/* 80225630 00222570  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 80225634 00222574  F3 61 01 38 */	psq_st f27, 312(r1), 0, qr0
/* 80225638 00222578  DB 41 01 20 */	stfd f26, 0x120(r1)
/* 8022563C 0022257C  F3 41 01 28 */	psq_st f26, 296(r1), 0, qr0
/* 80225640 00222580  BE 81 00 F0 */	stmw r20, 0xf0(r1)
/* 80225644 00222584  7C 7F 1B 78 */	mr r31, r3
/* 80225648 00222588  3C 80 80 48 */	lis r4, lbl_80482E60@ha
/* 8022564C 0022258C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80225650 00222590  3B C4 2E 60 */	addi r30, r4, lbl_80482E60@l
/* 80225654 00222594  28 00 00 00 */	cmplwi r0, 0
/* 80225658 00222598  41 82 00 38 */	beq lbl_80225690
/* 8022565C 0022259C  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 80225660 002225A0  28 00 00 00 */	cmplwi r0, 0
/* 80225664 002225A4  41 82 00 0C */	beq lbl_80225670
/* 80225668 002225A8  48 00 11 B9 */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 8022566C 002225AC  48 00 00 24 */	b lbl_80225690
lbl_80225670:
/* 80225670 002225B0  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80225674 002225B4  28 00 00 00 */	cmplwi r0, 0
/* 80225678 002225B8  41 82 00 0C */	beq lbl_80225684
/* 8022567C 002225BC  48 00 15 61 */	bl clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv
/* 80225680 002225C0  48 00 00 10 */	b lbl_80225690
lbl_80225684:
/* 80225684 002225C4  48 00 11 0D */	bl clearHeapB_common__Q34Game10SingleGame10ZukanStateFv
/* 80225688 002225C8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8022568C 002225CC  4B DF DF 19 */	bl becomeCurrentHeap__7JKRHeapFv
lbl_80225690:
/* 80225690 002225D0  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80225694 002225D4  4B DF E1 21 */	bl getFreeSize__7JKRHeapFv
/* 80225698 002225D8  90 7F 00 E4 */	stw r3, 0xe4(r31)
/* 8022569C 002225DC  38 62 BE B0 */	addi r3, r2, lbl_8051A210@sda21
/* 802256A0 002225E0  4C C6 31 82 */	crclr 6
/* 802256A4 002225E4  4B EC 80 49 */	bl OSReport
/* 802256A8 002225E8  80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 802256AC 002225EC  38 7E 02 7C */	addi r3, r30, 0x27c
/* 802256B0 002225F0  4C C6 31 82 */	crclr 6
/* 802256B4 002225F4  4B EC 80 39 */	bl OSReport
/* 802256B8 002225F8  82 BF 00 D8 */	lwz r21, 0xd8(r31)
/* 802256BC 002225FC  7E A3 AB 78 */	mr r3, r21
/* 802256C0 00222600  4B DF E0 F5 */	bl getFreeSize__7JKRHeapFv
/* 802256C4 00222604  7E A4 AB 78 */	mr r4, r21
/* 802256C8 00222608  38 A0 00 01 */	li r5, 1
/* 802256CC 0022260C  4B DF A7 FD */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802256D0 00222610  90 7F 00 DC */	stw r3, 0xdc(r31)
/* 802256D4 00222614  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 802256D8 00222618  4B DF DE CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802256DC 0022261C  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 802256E0 00222620  38 80 00 64 */	li r4, 0x64
/* 802256E4 00222624  4B F2 C7 DD */	bl "alloc__27MonoObjectMgr<Q24Game4Piki>Fi"
/* 802256E8 00222628  80 9F 00 94 */	lwz r4, 0x94(r31)
/* 802256EC 0022262C  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802256F0 00222630  80 04 01 28 */	lwz r0, 0x128(r4)
/* 802256F4 00222634  90 03 00 18 */	stw r0, 0x18(r3)
/* 802256F8 00222638  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802256FC 0022263C  48 19 60 1D */	bl start__11ParticleMgrFv
/* 80225700 00222640  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225704 00222644  2C 00 00 00 */	cmpwi r0, 0
/* 80225708 00222648  40 82 00 48 */	bne lbl_80225750
/* 8022570C 0022264C  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225710 00222650  4B DF E0 A5 */	bl getFreeSize__7JKRHeapFv
/* 80225714 00222654  7C 64 1B 78 */	mr r4, r3
/* 80225718 00222658  38 7E 02 8C */	addi r3, r30, 0x28c
/* 8022571C 0022265C  4C C6 31 82 */	crclr 6
/* 80225720 00222660  4B EC 7F CD */	bl OSReport
/* 80225724 00222664  80 6D 94 F8 */	lwz r3, mgr__Q24Game12PelletNumber@sda21(r13)
/* 80225728 00222668  81 83 00 00 */	lwz r12, 0(r3)
/* 8022572C 0022266C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80225730 00222670  7D 89 03 A6 */	mtctr r12
/* 80225734 00222674  4E 80 04 21 */	bctrl 
/* 80225738 00222678  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 8022573C 0022267C  4B DF E0 79 */	bl getFreeSize__7JKRHeapFv
/* 80225740 00222680  7C 64 1B 78 */	mr r4, r3
/* 80225744 00222684  38 7E 02 C0 */	addi r3, r30, 0x2c0
/* 80225748 00222688  4C C6 31 82 */	crclr 6
/* 8022574C 0022268C  4B EC 7F A1 */	bl OSReport
lbl_80225750:
/* 80225750 00222690  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 80225754 00222694  28 00 00 00 */	cmplwi r0, 0
/* 80225758 00222698  41 82 00 18 */	beq lbl_80225770
/* 8022575C 0022269C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225760 002226A0  38 BE 00 90 */	addi r5, r30, 0x90
/* 80225764 002226A4  38 80 0A BB */	li r4, 0xabb
/* 80225768 002226A8  4C C6 31 82 */	crclr 6
/* 8022576C 002226AC  4B E0 4E D5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80225770:
/* 80225770 002226B0  38 60 00 90 */	li r3, 0x90
/* 80225774 002226B4  4B DF E7 31 */	bl __nw__FUl
/* 80225778 002226B8  7C 64 1B 79 */	or. r4, r3, r3
/* 8022577C 002226BC  41 82 00 0C */	beq lbl_80225788
/* 80225780 002226C0  4B EE 75 69 */	bl __ct__Q24Game15GeneralEnemyMgrFv
/* 80225784 002226C4  7C 64 1B 78 */	mr r4, r3
lbl_80225788:
/* 80225788 002226C8  90 8D 91 E0 */	stw r4, generalEnemyMgr__4Game@sda21(r13)
/* 8022578C 002226CC  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80225790 002226D0  4B F9 07 B9 */	bl addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80225794 002226D4  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 80225798 002226D8  2C 03 FF FF */	cmpwi r3, -1
/* 8022579C 002226DC  41 82 0A 54 */	beq lbl_802261F0
/* 802257A0 002226E0  2C 03 00 00 */	cmpwi r3, 0
/* 802257A4 002226E4  38 00 00 00 */	li r0, 0
/* 802257A8 002226E8  41 80 00 10 */	blt lbl_802257B8
/* 802257AC 002226EC  2C 03 00 66 */	cmpwi r3, 0x66
/* 802257B0 002226F0  40 80 00 08 */	bge lbl_802257B8
/* 802257B4 002226F4  38 00 00 01 */	li r0, 1
lbl_802257B8:
/* 802257B8 002226F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802257BC 002226FC  40 82 00 18 */	bne lbl_802257D4
/* 802257C0 00222700  38 7E 00 7C */	addi r3, r30, 0x7c
/* 802257C4 00222704  38 BE 00 90 */	addi r5, r30, 0x90
/* 802257C8 00222708  38 80 0A C1 */	li r4, 0xac1
/* 802257CC 0022270C  4C C6 31 82 */	crclr 6
/* 802257D0 00222710  4B E0 4E 71 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802257D4:
/* 802257D4 00222714  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 802257D8 00222718  38 A0 00 00 */	li r5, 0
/* 802257DC 0022271C  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 802257E0 00222720  1C 60 02 74 */	mulli r3, r0, 0x274
/* 802257E4 00222724  3B 43 08 28 */	addi r26, r3, 0x828
/* 802257E8 00222728  7F 44 D2 14 */	add r26, r4, r26
/* 802257EC 0022272C  88 1A 00 A0 */	lbz r0, 0xa0(r26)
/* 802257F0 00222730  28 00 00 0A */	cmplwi r0, 0xa
/* 802257F4 00222734  40 80 00 0C */	bge lbl_80225800
/* 802257F8 00222738  7C 05 03 78 */	mr r5, r0
/* 802257FC 0022273C  48 00 00 0C */	b lbl_80225808
lbl_80225800:
/* 80225800 00222740  38 00 00 00 */	li r0, 0
/* 80225804 00222744  98 1A 00 A0 */	stb r0, 0xa0(r26)
lbl_80225808:
/* 80225808 00222748  1C 65 00 C0 */	mulli r3, r5, 0xc0
/* 8022580C 0022274C  80 1A 00 8C */	lwz r0, 0x8c(r26)
/* 80225810 00222750  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80225814 00222754  C3 FA 00 64 */	lfs f31, 0x64(r26)
/* 80225818 00222758  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 8022581C 0022275C  38 A3 00 90 */	addi r5, r3, 0x90
/* 80225820 00222760  7C A4 2A 14 */	add r5, r4, r5
/* 80225824 00222764  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80225828 00222768  C3 85 00 8C */	lfs f28, 0x8c(r5)
/* 8022582C 0022276C  C3 A5 00 64 */	lfs f29, 0x64(r5)
/* 80225830 00222770  C3 C5 00 3C */	lfs f30, 0x3c(r5)
/* 80225834 00222774  4B DF DF 81 */	bl getFreeSize__7JKRHeapFv
/* 80225838 00222778  7C 65 1B 78 */	mr r5, r3
/* 8022583C 0022277C  7F 24 CB 78 */	mr r4, r25
/* 80225840 00222780  38 7E 02 D4 */	addi r3, r30, 0x2d4
/* 80225844 00222784  4C C6 31 82 */	crclr 6
/* 80225848 00222788  4B EC 7E A5 */	bl OSReport
/* 8022584C 0022278C  80 6D 94 90 */	lwz r3, playData__4Game@sda21(r13)
/* 80225850 00222790  3B 00 00 00 */	li r24, 0
/* 80225854 00222794  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 80225858 00222798  38 63 00 40 */	addi r3, r3, 0x40
/* 8022585C 0022279C  48 00 E2 69 */	bl getTekiInfo__Q34Game8TekiStat3MgrFi
/* 80225860 002227A0  28 03 00 00 */	cmplwi r3, 0
/* 80225864 002227A4  41 82 00 14 */	beq lbl_80225878
/* 80225868 002227A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8022586C 002227AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80225870 002227B0  40 81 00 08 */	ble lbl_80225878
/* 80225874 002227B4  3B 00 00 01 */	li r24, 1
lbl_80225878:
/* 80225878 002227B8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8022587C 002227BC  41 82 00 38 */	beq lbl_802258B4
/* 80225880 002227C0  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225884 002227C4  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80225888 002227C8  40 80 00 10 */	bge lbl_80225898
/* 8022588C 002227CC  2C 00 00 02 */	cmpwi r0, 2
/* 80225890 002227D0  41 82 00 10 */	beq lbl_802258A0
/* 80225894 002227D4  48 00 00 20 */	b lbl_802258B4
lbl_80225898:
/* 80225898 002227D8  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8022589C 002227DC  40 80 00 18 */	bge lbl_802258B4
lbl_802258A0:
/* 802258A0 002227E0  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258A4 002227E4  38 80 00 4D */	li r4, 0x4d
/* 802258A8 002227E8  38 A0 00 05 */	li r5, 5
/* 802258AC 002227EC  38 C0 00 00 */	li r6, 0
/* 802258B0 002227F0  4B EE 7F A5 */	bl addEnemyNum__Q24Game15GeneralEnemyMgrFiUcPQ24Game14GenObjectEnemy
lbl_802258B4:
/* 802258B4 002227F4  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258B8 002227F8  7F 25 CB 78 */	mr r5, r25
/* 802258BC 002227FC  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 802258C0 00222800  38 C0 00 00 */	li r6, 0
/* 802258C4 00222804  4B EE 7F 91 */	bl addEnemyNum__Q24Game15GeneralEnemyMgrFiUcPQ24Game14GenObjectEnemy
/* 802258C8 00222808  3C 80 00 10 */	lis r4, 0x000FA000@ha
/* 802258CC 0022280C  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258D0 00222810  38 A4 A0 00 */	addi r5, r4, 0x000FA000@l
/* 802258D4 00222814  38 80 00 01 */	li r4, 1
/* 802258D8 00222818  4B EE 7D 21 */	bl allocateEnemys__Q24Game15GeneralEnemyMgrFUci
/* 802258DC 0022281C  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 802258E0 00222820  4B EE 76 D5 */	bl setupSoundViewerAndBas__Q24Game15GeneralEnemyMgrFv
/* 802258E4 00222824  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 802258E8 00222828  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802258EC 0022282C  C3 62 BE B4 */	lfs f27, lbl_8051A214@sda21(r2)
/* 802258F0 00222830  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802258F4 00222834  41 82 00 08 */	beq lbl_802258FC
/* 802258F8 00222838  FF 60 08 90 */	fmr f27, f1
lbl_802258FC:
/* 802258FC 0022283C  1C 79 00 0C */	mulli r3, r25, 0xc
/* 80225900 00222840  38 63 00 10 */	addi r3, r3, 0x10
/* 80225904 00222844  4B DF E6 A9 */	bl __nwa__FUl
/* 80225908 00222848  3C 80 80 12 */	lis r4, "__ct__10Vector3<f>Fv"@ha
/* 8022590C 0022284C  7F 27 CB 78 */	mr r7, r25
/* 80225910 00222850  38 84 F3 48 */	addi r4, r4, "__ct__10Vector3<f>Fv"@l
/* 80225914 00222854  38 A0 00 00 */	li r5, 0
/* 80225918 00222858  38 C0 00 0C */	li r6, 0xc
/* 8022591C 0022285C  4B E9 C0 D5 */	bl __construct_new_array
/* 80225920 00222860  1C 99 00 0C */	mulli r4, r25, 0xc
/* 80225924 00222864  7C 7D 1B 78 */	mr r29, r3
/* 80225928 00222868  38 64 00 10 */	addi r3, r4, 0x10
/* 8022592C 0022286C  4B DF E6 81 */	bl __nwa__FUl
/* 80225930 00222870  3C 80 80 12 */	lis r4, "__ct__10Vector3<f>Fv"@ha
/* 80225934 00222874  7F 27 CB 78 */	mr r7, r25
/* 80225938 00222878  38 84 F3 48 */	addi r4, r4, "__ct__10Vector3<f>Fv"@l
/* 8022593C 0022287C  38 A0 00 00 */	li r5, 0
/* 80225940 00222880  38 C0 00 0C */	li r6, 0xc
/* 80225944 00222884  4B E9 C0 AD */	bl __construct_new_array
/* 80225948 00222888  7F BB EB 78 */	mr r27, r29
/* 8022594C 0022288C  7C 7C 1B 78 */	mr r28, r3
/* 80225950 00222890  3A E0 00 00 */	li r23, 0
/* 80225954 00222894  48 00 01 20 */	b lbl_80225A74
lbl_80225958:
/* 80225958 00222898  2C 17 00 00 */	cmpwi r23, 0
/* 8022595C 0022289C  40 82 00 18 */	bne lbl_80225974
/* 80225960 002228A0  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225964 002228A4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80225968 002228A8  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8022596C 002228AC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80225970 002228B0  48 00 00 FC */	b lbl_80225A6C
lbl_80225974:
/* 80225974 002228B4  4B EA 3C 2D */	bl rand
/* 80225978 002228B8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8022597C 002228BC  3C 00 43 30 */	lis r0, 0x4330
/* 80225980 002228C0  90 61 00 BC */	stw r3, 0xbc(r1)
/* 80225984 002228C4  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225988 002228C8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8022598C 002228CC  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225990 002228D0  C8 41 00 B8 */	lfd f2, 0xb8(r1)
/* 80225994 002228D4  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225998 002228D8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8022599C 002228DC  EC 22 08 24 */	fdivs f1, f2, f1
/* 802259A0 002228E0  EF 40 00 72 */	fmuls f26, f0, f1
/* 802259A4 002228E4  4B EA 3B FD */	bl rand
/* 802259A8 002228E8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802259AC 002228EC  3C 00 43 30 */	lis r0, 0x4330
/* 802259B0 002228F0  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 802259B4 002228F4  FC 60 D0 90 */	fmr f3, f26
/* 802259B8 002228F8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802259BC 002228FC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 802259C0 00222900  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 802259C4 00222904  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802259C8 00222908  C8 21 00 C0 */	lfd f1, 0xc0(r1)
/* 802259CC 0022290C  C0 02 BE 18 */	lfs f0, lbl_8051A178@sda21(r2)
/* 802259D0 00222910  EC 21 10 28 */	fsubs f1, f1, f2
/* 802259D4 00222914  EC 01 00 24 */	fdivs f0, f1, f0
/* 802259D8 00222918  EC 9F 00 32 */	fmuls f4, f31, f0
/* 802259DC 0022291C  40 80 00 08 */	bge lbl_802259E4
/* 802259E0 00222920  FC 60 D0 50 */	fneg f3, f26
lbl_802259E4:
/* 802259E4 00222924  C0 42 BE 34 */	lfs f2, lbl_8051A194@sda21(r2)
/* 802259E8 00222928  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 802259EC 0022292C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802259F0 00222930  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 802259F4 00222934  EC 23 00 B2 */	fmuls f1, f3, f2
/* 802259F8 00222938  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802259FC 0022293C  FC 00 08 1E */	fctiwz f0, f1
/* 80225A00 00222940  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80225A04 00222944  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80225A08 00222948  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A0C 0022294C  7C 64 02 14 */	add r3, r4, r0
/* 80225A10 00222950  C0 03 00 04 */	lfs f0, 4(r3)
/* 80225A14 00222954  EC 64 00 32 */	fmuls f3, f4, f0
/* 80225A18 00222958  40 80 00 28 */	bge lbl_80225A40
/* 80225A1C 0022295C  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 80225A20 00222960  EC 1A 00 32 */	fmuls f0, f26, f0
/* 80225A24 00222964  FC 00 00 1E */	fctiwz f0, f0
/* 80225A28 00222968  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80225A2C 0022296C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80225A30 00222970  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A34 00222974  7C 04 04 2E */	lfsx f0, r4, r0
/* 80225A38 00222978  FC 00 00 50 */	fneg f0, f0
/* 80225A3C 0022297C  48 00 00 1C */	b lbl_80225A58
lbl_80225A40:
/* 80225A40 00222980  EC 1A 00 B2 */	fmuls f0, f26, f2
/* 80225A44 00222984  FC 00 00 1E */	fctiwz f0, f0
/* 80225A48 00222988  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80225A4C 0022298C  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80225A50 00222990  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80225A54 00222994  7C 04 04 2E */	lfsx f0, r4, r0
lbl_80225A58:
/* 80225A58 00222998  EC 24 00 32 */	fmuls f1, f4, f0
/* 80225A5C 0022299C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225A60 002229A0  D0 3B 00 00 */	stfs f1, 0(r27)
/* 80225A64 002229A4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80225A68 002229A8  D0 7B 00 08 */	stfs f3, 8(r27)
lbl_80225A6C:
/* 80225A6C 002229AC  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80225A70 002229B0  3A F7 00 01 */	addi r23, r23, 1
lbl_80225A74:
/* 80225A74 002229B4  7C 17 C8 00 */	cmpw r23, r25
/* 80225A78 002229B8  41 80 FE E0 */	blt lbl_80225958
/* 80225A7C 002229BC  C3 E2 BD C8 */	lfs f31, lbl_8051A128@sda21(r2)
/* 80225A80 002229C0  3B 79 FF F8 */	addi r27, r25, -8
/* 80225A84 002229C4  3A E0 00 00 */	li r23, 0
lbl_80225A88:
/* 80225A88 002229C8  2C 19 00 00 */	cmpwi r25, 0
/* 80225A8C 002229CC  38 80 00 00 */	li r4, 0
/* 80225A90 002229D0  40 81 00 C8 */	ble lbl_80225B58
/* 80225A94 002229D4  2C 19 00 08 */	cmpwi r25, 8
/* 80225A98 002229D8  40 81 00 8C */	ble lbl_80225B24
/* 80225A9C 002229DC  38 1B 00 07 */	addi r0, r27, 7
/* 80225AA0 002229E0  7F 83 E3 78 */	mr r3, r28
/* 80225AA4 002229E4  54 00 E8 FE */	srwi r0, r0, 3
/* 80225AA8 002229E8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225AAC 002229EC  7C 09 03 A6 */	mtctr r0
/* 80225AB0 002229F0  2C 1B 00 00 */	cmpwi r27, 0
/* 80225AB4 002229F4  40 81 00 70 */	ble lbl_80225B24
lbl_80225AB8:
/* 80225AB8 002229F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80225ABC 002229FC  38 84 00 08 */	addi r4, r4, 8
/* 80225AC0 00222A00  D0 03 00 04 */	stfs f0, 4(r3)
/* 80225AC4 00222A04  D0 03 00 00 */	stfs f0, 0(r3)
/* 80225AC8 00222A08  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80225ACC 00222A0C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80225AD0 00222A10  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80225AD4 00222A14  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80225AD8 00222A18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80225ADC 00222A1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80225AE0 00222A20  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80225AE4 00222A24  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80225AE8 00222A28  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80225AEC 00222A2C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80225AF0 00222A30  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80225AF4 00222A34  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80225AF8 00222A38  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80225AFC 00222A3C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80225B00 00222A40  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80225B04 00222A44  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80225B08 00222A48  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80225B0C 00222A4C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80225B10 00222A50  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80225B14 00222A54  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80225B18 00222A58  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80225B1C 00222A5C  38 63 00 60 */	addi r3, r3, 0x60
/* 80225B20 00222A60  42 00 FF 98 */	bdnz lbl_80225AB8
lbl_80225B24:
/* 80225B24 00222A64  1C 64 00 0C */	mulli r3, r4, 0xc
/* 80225B28 00222A68  7C 04 C8 50 */	subf r0, r4, r25
/* 80225B2C 00222A6C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225B30 00222A70  7C 7C 1A 14 */	add r3, r28, r3
/* 80225B34 00222A74  7C 09 03 A6 */	mtctr r0
/* 80225B38 00222A78  7C 04 C8 00 */	cmpw r4, r25
/* 80225B3C 00222A7C  40 80 00 1C */	bge lbl_80225B58
lbl_80225B40:
/* 80225B40 00222A80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80225B44 00222A84  38 84 00 01 */	addi r4, r4, 1
/* 80225B48 00222A88  D0 03 00 04 */	stfs f0, 4(r3)
/* 80225B4C 00222A8C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80225B50 00222A90  38 63 00 0C */	addi r3, r3, 0xc
/* 80225B54 00222A94  42 00 FF EC */	bdnz lbl_80225B40
lbl_80225B58:
/* 80225B58 00222A98  7F A5 EB 78 */	mr r5, r29
/* 80225B5C 00222A9C  7F 86 E3 78 */	mr r6, r28
/* 80225B60 00222AA0  38 E0 00 00 */	li r7, 0
/* 80225B64 00222AA4  48 00 01 4C */	b lbl_80225CB0
lbl_80225B68:
/* 80225B68 00222AA8  39 07 00 01 */	addi r8, r7, 1
/* 80225B6C 00222AAC  1C 88 00 0C */	mulli r4, r8, 0xc
/* 80225B70 00222AB0  7C 08 C8 50 */	subf r0, r8, r25
/* 80225B74 00222AB4  7C 7D 22 14 */	add r3, r29, r4
/* 80225B78 00222AB8  7C 9C 22 14 */	add r4, r28, r4
/* 80225B7C 00222ABC  7C 09 03 A6 */	mtctr r0
/* 80225B80 00222AC0  7C 08 C8 00 */	cmpw r8, r25
/* 80225B84 00222AC4  40 80 01 20 */	bge lbl_80225CA4
lbl_80225B88:
/* 80225B88 00222AC8  C0 25 00 04 */	lfs f1, 4(r5)
/* 80225B8C 00222ACC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80225B90 00222AD0  C0 45 00 08 */	lfs f2, 8(r5)
/* 80225B94 00222AD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80225B98 00222AD8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80225B9C 00222ADC  C0 65 00 00 */	lfs f3, 0(r5)
/* 80225BA0 00222AE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80225BA4 00222AE4  C0 43 00 00 */	lfs f2, 0(r3)
/* 80225BA8 00222AE8  EC A0 00 32 */	fmuls f5, f0, f0
/* 80225BAC 00222AEC  EC C3 10 28 */	fsubs f6, f3, f2
/* 80225BB0 00222AF0  EC E1 00 72 */	fmuls f7, f1, f1
/* 80225BB4 00222AF4  EC 46 29 BA */	fmadds f2, f6, f6, f5
/* 80225BB8 00222AF8  ED 07 10 2A */	fadds f8, f7, f2
/* 80225BBC 00222AFC  FC 08 F8 40 */	fcmpo cr0, f8, f31
/* 80225BC0 00222B00  40 81 00 1C */	ble lbl_80225BDC
/* 80225BC4 00222B04  40 81 00 10 */	ble lbl_80225BD4
/* 80225BC8 00222B08  FC 40 40 34 */	frsqrte f2, f8
/* 80225BCC 00222B0C  EC 82 02 32 */	fmuls f4, f2, f8
/* 80225BD0 00222B10  48 00 00 10 */	b lbl_80225BE0
lbl_80225BD4:
/* 80225BD4 00222B14  FC 80 40 90 */	fmr f4, f8
/* 80225BD8 00222B18  48 00 00 08 */	b lbl_80225BE0
lbl_80225BDC:
/* 80225BDC 00222B1C  FC 80 F8 90 */	fmr f4, f31
lbl_80225BE0:
/* 80225BE0 00222B20  FC 04 D8 40 */	fcmpo cr0, f4, f27
/* 80225BE4 00222B24  40 80 00 B0 */	bge lbl_80225C94
/* 80225BE8 00222B28  C0 62 BD C8 */	lfs f3, lbl_8051A128@sda21(r2)
/* 80225BEC 00222B2C  FC 08 18 40 */	fcmpo cr0, f8, f3
/* 80225BF0 00222B30  40 81 00 20 */	ble lbl_80225C10
/* 80225BF4 00222B34  EC 46 29 BA */	fmadds f2, f6, f6, f5
/* 80225BF8 00222B38  EC A7 10 2A */	fadds f5, f7, f2
/* 80225BFC 00222B3C  FC 05 18 40 */	fcmpo cr0, f5, f3
/* 80225C00 00222B40  40 81 00 14 */	ble lbl_80225C14
/* 80225C04 00222B44  FC 40 28 34 */	frsqrte f2, f5
/* 80225C08 00222B48  EC A2 01 72 */	fmuls f5, f2, f5
/* 80225C0C 00222B4C  48 00 00 08 */	b lbl_80225C14
lbl_80225C10:
/* 80225C10 00222B50  FC A0 18 90 */	fmr f5, f3
lbl_80225C14:
/* 80225C14 00222B54  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80225C18 00222B58  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 80225C1C 00222B5C  40 81 00 18 */	ble lbl_80225C34
/* 80225C20 00222B60  C0 42 BD BC */	lfs f2, lbl_8051A11C@sda21(r2)
/* 80225C24 00222B64  EC 42 28 24 */	fdivs f2, f2, f5
/* 80225C28 00222B68  EC C6 00 B2 */	fmuls f6, f6, f2
/* 80225C2C 00222B6C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80225C30 00222B70  EC 21 00 B2 */	fmuls f1, f1, f2
lbl_80225C34:
/* 80225C34 00222B74  EC 7B 20 28 */	fsubs f3, f27, f4
/* 80225C38 00222B78  C0 82 BD E8 */	lfs f4, lbl_8051A148@sda21(r2)
/* 80225C3C 00222B7C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80225C40 00222B80  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80225C44 00222B84  EC C6 00 F2 */	fmuls f6, f6, f3
/* 80225C48 00222B88  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80225C4C 00222B8C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80225C50 00222B90  EC 42 30 2A */	fadds f2, f2, f6
/* 80225C54 00222B94  D0 46 00 00 */	stfs f2, 0(r6)
/* 80225C58 00222B98  C0 46 00 04 */	lfs f2, 4(r6)
/* 80225C5C 00222B9C  EC 42 00 2A */	fadds f2, f2, f0
/* 80225C60 00222BA0  D0 46 00 04 */	stfs f2, 4(r6)
/* 80225C64 00222BA4  C0 46 00 08 */	lfs f2, 8(r6)
/* 80225C68 00222BA8  EC 42 08 2A */	fadds f2, f2, f1
/* 80225C6C 00222BAC  D0 46 00 08 */	stfs f2, 8(r6)
/* 80225C70 00222BB0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80225C74 00222BB4  EC 42 30 28 */	fsubs f2, f2, f6
/* 80225C78 00222BB8  D0 44 00 00 */	stfs f2, 0(r4)
/* 80225C7C 00222BBC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80225C80 00222BC0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80225C84 00222BC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80225C88 00222BC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80225C8C 00222BCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80225C90 00222BD0  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80225C94:
/* 80225C94 00222BD4  38 63 00 0C */	addi r3, r3, 0xc
/* 80225C98 00222BD8  38 84 00 0C */	addi r4, r4, 0xc
/* 80225C9C 00222BDC  39 08 00 01 */	addi r8, r8, 1
/* 80225CA0 00222BE0  42 00 FE E8 */	bdnz lbl_80225B88
lbl_80225CA4:
/* 80225CA4 00222BE4  38 A5 00 0C */	addi r5, r5, 0xc
/* 80225CA8 00222BE8  38 C6 00 0C */	addi r6, r6, 0xc
/* 80225CAC 00222BEC  38 E7 00 01 */	addi r7, r7, 1
lbl_80225CB0:
/* 80225CB0 00222BF0  7C 07 C8 00 */	cmpw r7, r25
/* 80225CB4 00222BF4  41 80 FE B4 */	blt lbl_80225B68
/* 80225CB8 00222BF8  7F 96 E3 78 */	mr r22, r28
/* 80225CBC 00222BFC  7F B5 EB 78 */	mr r21, r29
/* 80225CC0 00222C00  3A 80 00 00 */	li r20, 0
/* 80225CC4 00222C04  48 00 00 5C */	b lbl_80225D20
lbl_80225CC8:
/* 80225CC8 00222C08  C0 35 00 00 */	lfs f1, 0(r21)
/* 80225CCC 00222C0C  7E A4 AB 78 */	mr r4, r21
/* 80225CD0 00222C10  C0 16 00 00 */	lfs f0, 0(r22)
/* 80225CD4 00222C14  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CD8 00222C18  D0 15 00 00 */	stfs f0, 0(r21)
/* 80225CDC 00222C1C  C0 35 00 04 */	lfs f1, 4(r21)
/* 80225CE0 00222C20  C0 16 00 04 */	lfs f0, 4(r22)
/* 80225CE4 00222C24  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CE8 00222C28  D0 15 00 04 */	stfs f0, 4(r21)
/* 80225CEC 00222C2C  C0 35 00 08 */	lfs f1, 8(r21)
/* 80225CF0 00222C30  C0 16 00 08 */	lfs f0, 8(r22)
/* 80225CF4 00222C34  EC 01 00 2A */	fadds f0, f1, f0
/* 80225CF8 00222C38  D0 15 00 08 */	stfs f0, 8(r21)
/* 80225CFC 00222C3C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80225D00 00222C40  81 83 00 04 */	lwz r12, 4(r3)
/* 80225D04 00222C44  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80225D08 00222C48  7D 89 03 A6 */	mtctr r12
/* 80225D0C 00222C4C  4E 80 04 21 */	bctrl 
/* 80225D10 00222C50  D0 35 00 04 */	stfs f1, 4(r21)
/* 80225D14 00222C54  3A D6 00 0C */	addi r22, r22, 0xc
/* 80225D18 00222C58  3A B5 00 0C */	addi r21, r21, 0xc
/* 80225D1C 00222C5C  3A 94 00 01 */	addi r20, r20, 1
lbl_80225D20:
/* 80225D20 00222C60  7C 14 C8 00 */	cmpw r20, r25
/* 80225D24 00222C64  41 80 FF A4 */	blt lbl_80225CC8
/* 80225D28 00222C68  3A F7 00 01 */	addi r23, r23, 1
/* 80225D2C 00222C6C  2C 17 00 05 */	cmpwi r23, 5
/* 80225D30 00222C70  41 80 FD 58 */	blt lbl_80225A88
/* 80225D34 00222C74  7F B5 EB 78 */	mr r21, r29
/* 80225D38 00222C78  3A 80 00 00 */	li r20, 0
/* 80225D3C 00222C7C  48 00 00 F0 */	b lbl_80225E2C
lbl_80225D40:
/* 80225D40 00222C80  38 61 00 84 */	addi r3, r1, 0x84
/* 80225D44 00222C84  4B F0 8E E1 */	bl __ct__Q24Game13EnemyBirthArgFv
/* 80225D48 00222C88  2C 14 00 00 */	cmpwi r20, 0
/* 80225D4C 00222C8C  40 82 00 10 */	bne lbl_80225D5C
/* 80225D50 00222C90  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80225D54 00222C94  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80225D58 00222C98  48 00 00 38 */	b lbl_80225D90
lbl_80225D5C:
/* 80225D5C 00222C9C  4B EA 38 45 */	bl rand
/* 80225D60 00222CA0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80225D64 00222CA4  3C 00 43 30 */	lis r0, 0x4330
/* 80225D68 00222CA8  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80225D6C 00222CAC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225D70 00222CB0  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80225D74 00222CB4  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225D78 00222CB8  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 80225D7C 00222CBC  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225D80 00222CC0  EC 42 18 28 */	fsubs f2, f2, f3
/* 80225D84 00222CC4  EC 22 08 24 */	fdivs f1, f2, f1
/* 80225D88 00222CC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80225D8C 00222CCC  D0 01 00 90 */	stfs f0, 0x90(r1)
lbl_80225D90:
/* 80225D90 00222CD0  C0 15 00 00 */	lfs f0, 0(r21)
/* 80225D94 00222CD4  38 81 00 84 */	addi r4, r1, 0x84
/* 80225D98 00222CD8  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 80225D9C 00222CDC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80225DA0 00222CE0  EC 40 F0 2A */	fadds f2, f0, f30
/* 80225DA4 00222CE4  C0 15 00 04 */	lfs f0, 4(r21)
/* 80225DA8 00222CE8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80225DAC 00222CEC  EC 20 E8 2A */	fadds f1, f0, f29
/* 80225DB0 00222CF0  C0 75 00 08 */	lfs f3, 8(r21)
/* 80225DB4 00222CF4  EC 03 E0 2A */	fadds f0, f3, f28
/* 80225DB8 00222CF8  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80225DBC 00222CFC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80225DC0 00222D00  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80225DC4 00222D04  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80225DC8 00222D08  81 83 00 04 */	lwz r12, 4(r3)
/* 80225DCC 00222D0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80225DD0 00222D10  7D 89 03 A6 */	mtctr r12
/* 80225DD4 00222D14  4E 80 04 21 */	bctrl 
/* 80225DD8 00222D18  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80225DDC 00222D1C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80225DE0 00222D20  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80225DE4 00222D24  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 80225DE8 00222D28  4B EE 76 D9 */	bl birth__Q24Game15GeneralEnemyMgrFiRQ24Game13EnemyBirthArg
/* 80225DEC 00222D2C  7C 77 1B 79 */	or. r23, r3, r3
/* 80225DF0 00222D30  40 82 00 20 */	bne lbl_80225E10
/* 80225DF4 00222D34  80 DF 00 A0 */	lwz r6, 0xa0(r31)
/* 80225DF8 00222D38  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80225DFC 00222D3C  38 BE 02 F4 */	addi r5, r30, 0x2f4
/* 80225E00 00222D40  38 80 0B 3F */	li r4, 0xb3f
/* 80225E04 00222D44  4C C6 31 82 */	crclr 6
/* 80225E08 00222D48  4B E0 48 39 */	bl panic_f__12JUTExceptionFPCciPCce
/* 80225E0C 00222D4C  48 00 00 18 */	b lbl_80225E24
lbl_80225E10:
/* 80225E10 00222D50  38 80 00 00 */	li r4, 0
/* 80225E14 00222D54  4B F1 51 B5 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 80225E18 00222D58  2C 14 00 00 */	cmpwi r20, 0
/* 80225E1C 00222D5C  40 82 00 08 */	bne lbl_80225E24
/* 80225E20 00222D60  92 FF 00 A4 */	stw r23, 0xa4(r31)
lbl_80225E24:
/* 80225E24 00222D64  3A B5 00 0C */	addi r21, r21, 0xc
/* 80225E28 00222D68  3A 94 00 01 */	addi r20, r20, 1
lbl_80225E2C:
/* 80225E2C 00222D6C  7C 14 C8 00 */	cmpw r20, r25
/* 80225E30 00222D70  41 80 FF 10 */	blt lbl_80225D40
/* 80225E34 00222D74  7F A3 EB 78 */	mr r3, r29
/* 80225E38 00222D78  4B DF E2 7D */	bl __dl__FPv
/* 80225E3C 00222D7C  7F 83 E3 78 */	mr r3, r28
/* 80225E40 00222D80  4B DF E2 75 */	bl __dl__FPv
/* 80225E44 00222D84  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80225E48 00222D88  41 82 00 C8 */	beq lbl_80225F10
/* 80225E4C 00222D8C  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225E50 00222D90  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80225E54 00222D94  40 80 00 10 */	bge lbl_80225E64
/* 80225E58 00222D98  2C 00 00 02 */	cmpwi r0, 2
/* 80225E5C 00222D9C  41 82 00 10 */	beq lbl_80225E6C
/* 80225E60 00222DA0  48 00 00 B0 */	b lbl_80225F10
lbl_80225E64:
/* 80225E64 00222DA4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80225E68 00222DA8  40 80 00 A8 */	bge lbl_80225F10
lbl_80225E6C:
/* 80225E6C 00222DAC  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80225E70 00222DB0  38 80 00 4D */	li r4, 0x4d
/* 80225E74 00222DB4  4B EE 7E 31 */	bl getEnemyMgr__Q24Game15GeneralEnemyMgrFi
/* 80225E78 00222DB8  7C 74 1B 79 */	or. r20, r3, r3
/* 80225E7C 00222DBC  41 82 00 94 */	beq lbl_80225F10
/* 80225E80 00222DC0  38 61 00 50 */	addi r3, r1, 0x50
/* 80225E84 00222DC4  4B F0 8D A1 */	bl __ct__Q24Game13EnemyBirthArgFv
/* 80225E88 00222DC8  80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 80225E8C 00222DCC  38 61 00 20 */	addi r3, r1, 0x20
/* 80225E90 00222DD0  81 84 00 00 */	lwz r12, 0(r4)
/* 80225E94 00222DD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80225E98 00222DD8  7D 89 03 A6 */	mtctr r12
/* 80225E9C 00222DDC  4E 80 04 21 */	bctrl 
/* 80225EA0 00222DE0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80225EA4 00222DE4  C0 02 BD D8 */	lfs f0, lbl_8051A138@sda21(r2)
/* 80225EA8 00222DE8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80225EAC 00222DEC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80225EB0 00222DF0  EC 02 00 2A */	fadds f0, f2, f0
/* 80225EB4 00222DF4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80225EB8 00222DF8  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80225EBC 00222DFC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80225EC0 00222E00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80225EC4 00222E04  4B EA 36 DD */	bl rand
/* 80225EC8 00222E08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80225ECC 00222E0C  3C 00 43 30 */	lis r0, 0x4330
/* 80225ED0 00222E10  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80225ED4 00222E14  7E 83 A3 78 */	mr r3, r20
/* 80225ED8 00222E18  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 80225EDC 00222E1C  38 81 00 50 */	addi r4, r1, 0x50
/* 80225EE0 00222E20  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80225EE4 00222E24  38 C0 00 05 */	li r6, 5
/* 80225EE8 00222E28  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 80225EEC 00222E2C  38 E0 00 00 */	li r7, 0
/* 80225EF0 00222E30  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 80225EF4 00222E34  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 80225EF8 00222E38  EC 42 18 28 */	fsubs f2, f2, f3
/* 80225EFC 00222E3C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80225F00 00222E40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80225F04 00222E44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80225F08 00222E48  80 BF 00 A4 */	lwz r5, 0xa4(r31)
/* 80225F0C 00222E4C  48 16 33 65 */	bl createGroupByEnemy__Q34Game11ShijimiChou3MgrFRQ24Game13EnemyBirthArgPQ24Game9EnemyBaseib
lbl_80225F10:
/* 80225F10 00222E50  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F14 00222E54  80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 80225F18 00222E58  4B FF B5 F5 */	bl setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature
/* 80225F1C 00222E5C  C0 9A 01 B8 */	lfs f4, 0x1b8(r26)
/* 80225F20 00222E60  3A E0 00 00 */	li r23, 0
/* 80225F24 00222E64  C0 7A 01 90 */	lfs f3, 0x190(r26)
/* 80225F28 00222E68  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F2C 00222E6C  C0 1A 01 68 */	lfs f0, 0x168(r26)
/* 80225F30 00222E70  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 80225F34 00222E74  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80225F38 00222E78  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80225F3C 00222E7C  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80225F40 00222E80  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 80225F44 00222E84  C0 1A 00 C8 */	lfs f0, 0xc8(r26)
/* 80225F48 00222E88  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F4C 00222E8C  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80225F50 00222E90  C0 1A 00 F0 */	lfs f0, 0xf0(r26)
/* 80225F54 00222E94  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F58 00222E98  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80225F5C 00222E9C  C0 7A 01 40 */	lfs f3, 0x140(r26)
/* 80225F60 00222EA0  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F64 00222EA4  C0 1A 01 18 */	lfs f0, 0x118(r26)
/* 80225F68 00222EA8  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80225F6C 00222EAC  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80225F70 00222EB0  C0 9A 02 30 */	lfs f4, 0x230(r26)
/* 80225F74 00222EB4  C0 7A 02 08 */	lfs f3, 0x208(r26)
/* 80225F78 00222EB8  C0 1A 01 E0 */	lfs f0, 0x1e0(r26)
/* 80225F7C 00222EBC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F80 00222EC0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80225F84 00222EC4  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80225F88 00222EC8  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80225F8C 00222ECC  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80225F90 00222ED0  C0 1A 02 58 */	lfs f0, 0x258(r26)
/* 80225F94 00222ED4  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80225F98 00222ED8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80225F9C 00222EDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80225FA0 00222EE0  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 80225FA4 00222EE4  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80225FA8 00222EE8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80225FAC 00222EEC  41 82 00 28 */	beq lbl_80225FD4
/* 80225FB0 00222EF0  40 80 00 18 */	bge lbl_80225FC8
/* 80225FB4 00222EF4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80225FB8 00222EF8  40 80 00 20 */	bge lbl_80225FD8
/* 80225FBC 00222EFC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80225FC0 00222F00  40 80 00 14 */	bge lbl_80225FD4
/* 80225FC4 00222F04  48 00 00 14 */	b lbl_80225FD8
lbl_80225FC8:
/* 80225FC8 00222F08  2C 00 00 46 */	cmpwi r0, 0x46
/* 80225FCC 00222F0C  41 82 00 08 */	beq lbl_80225FD4
/* 80225FD0 00222F10  48 00 00 08 */	b lbl_80225FD8
lbl_80225FD4:
/* 80225FD4 00222F14  3A E0 00 0A */	li r23, 0xa
lbl_80225FD8:
/* 80225FD8 00222F18  2C 17 00 00 */	cmpwi r23, 0
/* 80225FDC 00222F1C  40 81 02 C0 */	ble lbl_8022629C
/* 80225FE0 00222F20  3B 00 00 00 */	li r24, 0
/* 80225FE4 00222F24  48 00 02 00 */	b lbl_802261E4
lbl_80225FE8:
/* 80225FE8 00222F28  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80225FEC 00222F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225FF0 00222F30  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80225FF4 00222F34  7D 89 03 A6 */	mtctr r12
/* 80225FF8 00222F38  4E 80 04 21 */	bctrl 
/* 80225FFC 00222F3C  7C 79 1B 79 */	or. r25, r3, r3
/* 80226000 00222F40  41 82 01 E0 */	beq lbl_802261E0
/* 80226004 00222F44  3C A0 80 4B */	lis r5, __vt__Q24Game15CreatureInitArg@ha
/* 80226008 00222F48  3C 80 80 4B */	lis r4, __vt__Q24Game11PikiInitArg@ha
/* 8022600C 00222F4C  38 05 A2 F4 */	addi r0, r5, __vt__Q24Game15CreatureInitArg@l
/* 80226010 00222F50  38 A0 00 20 */	li r5, 0x20
/* 80226014 00222F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80226018 00222F58  38 C4 10 F4 */	addi r6, r4, __vt__Q24Game11PikiInitArg@l
/* 8022601C 00222F5C  38 00 00 00 */	li r0, 0
/* 80226020 00222F60  38 81 00 44 */	addi r4, r1, 0x44
/* 80226024 00222F64  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80226028 00222F68  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8022602C 00222F6C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80226030 00222F70  4B F1 4F 99 */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 80226034 00222F74  7F 23 CB 78 */	mr r3, r25
/* 80226038 00222F78  38 80 00 06 */	li r4, 6
/* 8022603C 00222F7C  4B F2 45 85 */	bl changeShape__Q24Game4PikiFi
/* 80226040 00222F80  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80226044 00222F84  38 61 00 14 */	addi r3, r1, 0x14
/* 80226048 00222F88  48 1F 4A 51 */	bl getLookAtPosition__6CameraFv
/* 8022604C 00222F8C  C3 81 00 14 */	lfs f28, 0x14(r1)
/* 80226050 00222F90  38 61 00 08 */	addi r3, r1, 8
/* 80226054 00222F94  C3 A1 00 18 */	lfs f29, 0x18(r1)
/* 80226058 00222F98  C3 C1 00 1C */	lfs f30, 0x1c(r1)
/* 8022605C 00222F9C  80 9F 00 98 */	lwz r4, 0x98(r31)
/* 80226060 00222FA0  48 1F 42 75 */	bl getViewVector__11CullFrustumFv
/* 80226064 00222FA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80226068 00222FA8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8022606C 00222FAC  EC 60 00 32 */	fmuls f3, f0, f0
/* 80226070 00222FB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80226074 00222FB4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80226078 00222FB8  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 8022607C 00222FBC  EC 21 18 7A */	fmadds f1, f1, f1, f3
/* 80226080 00222FC0  EC 22 08 2A */	fadds f1, f2, f1
/* 80226084 00222FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80226088 00222FC8  4B EA 35 19 */	bl rand
/* 8022608C 00222FCC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80226090 00222FD0  3C 00 43 30 */	lis r0, 0x4330
/* 80226094 00222FD4  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80226098 00222FD8  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 8022609C 00222FDC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 802260A0 00222FE0  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802260A4 00222FE4  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 802260A8 00222FE8  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 802260AC 00222FEC  EC 42 18 28 */	fsubs f2, f2, f3
/* 802260B0 00222FF0  EC 22 08 24 */	fdivs f1, f2, f1
/* 802260B4 00222FF4  EF 40 00 72 */	fmuls f26, f0, f1
/* 802260B8 00222FF8  4B EA 34 E9 */	bl rand
/* 802260BC 00222FFC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802260C0 00223000  3C 00 43 30 */	lis r0, 0x4330
/* 802260C4 00223004  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 802260C8 00223008  FC 60 D0 90 */	fmr f3, f26
/* 802260CC 0022300C  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 802260D0 00223010  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 802260D4 00223014  C8 42 BE 28 */	lfd f2, lbl_8051A188@sda21(r2)
/* 802260D8 00223018  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 802260DC 0022301C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 802260E0 00223020  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802260E4 00223024  EC 40 10 28 */	fsubs f2, f0, f2
/* 802260E8 00223028  C0 02 BD C4 */	lfs f0, lbl_8051A124@sda21(r2)
/* 802260EC 0022302C  EC 22 08 24 */	fdivs f1, f2, f1
/* 802260F0 00223030  EC 80 00 72 */	fmuls f4, f0, f1
/* 802260F4 00223034  40 80 00 08 */	bge lbl_802260FC
/* 802260F8 00223038  FC 60 D0 50 */	fneg f3, f26
lbl_802260FC:
/* 802260FC 0022303C  C0 42 BE 34 */	lfs f2, lbl_8051A194@sda21(r2)
/* 80226100 00223040  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80226104 00223044  C0 02 BD C8 */	lfs f0, lbl_8051A128@sda21(r2)
/* 80226108 00223048  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 8022610C 0022304C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 80226110 00223050  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 80226114 00223054  FC 00 08 1E */	fctiwz f0, f1
/* 80226118 00223058  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8022611C 0022305C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80226120 00223060  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80226124 00223064  7C 64 02 14 */	add r3, r4, r0
/* 80226128 00223068  C0 03 00 04 */	lfs f0, 4(r3)
/* 8022612C 0022306C  EC 24 00 32 */	fmuls f1, f4, f0
/* 80226130 00223070  40 80 00 28 */	bge lbl_80226158
/* 80226134 00223074  C0 02 BE 38 */	lfs f0, lbl_8051A198@sda21(r2)
/* 80226138 00223078  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8022613C 0022307C  FC 00 00 1E */	fctiwz f0, f0
/* 80226140 00223080  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80226144 00223084  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80226148 00223088  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 8022614C 0022308C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80226150 00223090  FC 00 00 50 */	fneg f0, f0
/* 80226154 00223094  48 00 00 1C */	b lbl_80226170
lbl_80226158:
/* 80226158 00223098  EC 1A 00 B2 */	fmuls f0, f26, f2
/* 8022615C 0022309C  FC 00 00 1E */	fctiwz f0, f0
/* 80226160 002230A0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80226164 002230A4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80226168 002230A8  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 8022616C 002230AC  7C 04 04 2E */	lfsx f0, r4, r0
lbl_80226170:
/* 80226170 002230B0  C0 42 BD C8 */	lfs f2, lbl_8051A128@sda21(r2)
/* 80226174 002230B4  EC 64 00 32 */	fmuls f3, f4, f0
/* 80226178 002230B8  EC 3E 08 2A */	fadds f1, f30, f1
/* 8022617C 002230BC  C0 02 BE C0 */	lfs f0, lbl_8051A220@sda21(r2)
/* 80226180 002230C0  EC 5D 10 2A */	fadds f2, f29, f2
/* 80226184 002230C4  7F 23 CB 78 */	mr r3, r25
/* 80226188 002230C8  EC 7C 18 2A */	fadds f3, f28, f3
/* 8022618C 002230CC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80226190 002230D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80226194 002230D4  38 81 00 38 */	addi r4, r1, 0x38
/* 80226198 002230D8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8022619C 002230DC  38 A0 00 00 */	li r5, 0
/* 802261A0 002230E0  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 802261A4 002230E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802261A8 002230E8  4B F1 50 01 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 802261AC 002230EC  4B EA 33 F5 */	bl rand
/* 802261B0 002230F0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802261B4 002230F4  3C 00 43 30 */	lis r0, 0x4330
/* 802261B8 002230F8  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 802261BC 002230FC  C8 62 BE 28 */	lfd f3, lbl_8051A188@sda21(r2)
/* 802261C0 00223100  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 802261C4 00223104  C0 22 BE 18 */	lfs f1, lbl_8051A178@sda21(r2)
/* 802261C8 00223108  C8 41 00 E0 */	lfd f2, 0xe0(r1)
/* 802261CC 0022310C  C0 02 BE 40 */	lfs f0, lbl_8051A1A0@sda21(r2)
/* 802261D0 00223110  EC 42 18 28 */	fsubs f2, f2, f3
/* 802261D4 00223114  EC 22 08 24 */	fdivs f1, f2, f1
/* 802261D8 00223118  EC 00 00 72 */	fmuls f0, f0, f1
/* 802261DC 0022311C  D0 19 01 FC */	stfs f0, 0x1fc(r25)
lbl_802261E0:
/* 802261E0 00223120  3B 18 00 01 */	addi r24, r24, 1
lbl_802261E4:
/* 802261E4 00223124  7C 18 B8 00 */	cmpw r24, r23
/* 802261E8 00223128  41 80 FE 00 */	blt lbl_80225FE8
/* 802261EC 0022312C  48 00 00 B0 */	b lbl_8022629C
lbl_802261F0:
/* 802261F0 00223130  82 BF 01 00 */	lwz r21, 0x100(r31)
/* 802261F4 00223134  38 81 00 2C */	addi r4, r1, 0x2c
/* 802261F8 00223138  C0 55 01 1C */	lfs f2, 0x11c(r21)
/* 802261FC 0022313C  C0 35 00 F4 */	lfs f1, 0xf4(r21)
/* 80226200 00223140  C0 15 00 CC */	lfs f0, 0xcc(r21)
/* 80226204 00223144  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80226208 00223148  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8022620C 0022314C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80226210 00223150  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226214 00223154  4B FF B2 71 */	bl "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
/* 80226218 00223158  C0 95 09 E0 */	lfs f4, 0x9e0(r21)
/* 8022621C 0022315C  C0 75 09 B8 */	lfs f3, 0x9b8(r21)
/* 80226220 00223160  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226224 00223164  C0 15 09 90 */	lfs f0, 0x990(r21)
/* 80226228 00223168  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 8022622C 0022316C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226230 00223170  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80226234 00223174  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226238 00223178  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 8022623C 0022317C  C0 15 08 F0 */	lfs f0, 0x8f0(r21)
/* 80226240 00223180  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226244 00223184  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226248 00223188  C0 15 09 18 */	lfs f0, 0x918(r21)
/* 8022624C 0022318C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226250 00223190  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80226254 00223194  C0 75 09 68 */	lfs f3, 0x968(r21)
/* 80226258 00223198  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8022625C 0022319C  C0 15 09 40 */	lfs f0, 0x940(r21)
/* 80226260 002231A0  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80226264 002231A4  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226268 002231A8  C0 95 0A 58 */	lfs f4, 0xa58(r21)
/* 8022626C 002231AC  C0 75 0A 30 */	lfs f3, 0xa30(r21)
/* 80226270 002231B0  C0 15 0A 08 */	lfs f0, 0xa08(r21)
/* 80226274 002231B4  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226278 002231B8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022627C 002231BC  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226280 002231C0  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80226284 002231C4  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226288 002231C8  C0 15 0A 80 */	lfs f0, 0xa80(r21)
/* 8022628C 002231CC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80226290 002231D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226294 002231D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226298 002231D8  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
lbl_8022629C:
/* 8022629C 002231DC  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 802262A0 002231E0  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 802262A4 002231E4  E3 C1 01 68 */	psq_l f30, 360(r1), 0, qr0
/* 802262A8 002231E8  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 802262AC 002231EC  E3 A1 01 58 */	psq_l f29, 344(r1), 0, qr0
/* 802262B0 002231F0  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 802262B4 002231F4  E3 81 01 48 */	psq_l f28, 328(r1), 0, qr0
/* 802262B8 002231F8  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 802262BC 002231FC  E3 61 01 38 */	psq_l f27, 312(r1), 0, qr0
/* 802262C0 00223200  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 802262C4 00223204  E3 41 01 28 */	psq_l f26, 296(r1), 0, qr0
/* 802262C8 00223208  CB 41 01 20 */	lfd f26, 0x120(r1)
/* 802262CC 0022320C  BA 81 00 F0 */	lmw r20, 0xf0(r1)
/* 802262D0 00223210  80 01 01 84 */	lwz r0, 0x184(r1)
/* 802262D4 00223214  7C 08 03 A6 */	mtlr r0
/* 802262D8 00223218  38 21 01 80 */	addi r1, r1, 0x180
/* 802262DC 0022321C  4E 80 00 20 */	blr 
.endif

.if version == 1
.global dvdloadB_pellet__Q34Game10SingleGame10ZukanStateFv
dvdloadB_pellet__Q34Game10SingleGame10ZukanStateFv:
/* 802262E0 00223220  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802262E4 00223224  7C 08 02 A6 */	mflr r0
/* 802262E8 00223228  90 01 00 84 */	stw r0, 0x84(r1)
/* 802262EC 0022322C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802262F0 00223230  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802262F4 00223234  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 802262F8 00223238  7C 7D 1B 78 */	mr r29, r3
/* 802262FC 0022323C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80226300 00223240  28 00 00 00 */	cmplwi r0, 0
/* 80226304 00223244  41 82 00 38 */	beq lbl_8022633C
/* 80226308 00223248  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 8022630C 0022324C  28 00 00 00 */	cmplwi r0, 0
/* 80226310 00223250  41 82 00 0C */	beq lbl_8022631C
/* 80226314 00223254  48 00 05 0D */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 80226318 00223258  48 00 00 24 */	b lbl_8022633C
lbl_8022631C:
/* 8022631C 0022325C  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 80226320 00223260  28 00 00 00 */	cmplwi r0, 0
/* 80226324 00223264  41 82 00 0C */	beq lbl_80226330
/* 80226328 00223268  48 00 08 B5 */	bl clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv
/* 8022632C 0022326C  48 00 00 10 */	b lbl_8022633C
lbl_80226330:
/* 80226330 00223270  48 00 04 61 */	bl clearHeapB_common__Q34Game10SingleGame10ZukanStateFv
/* 80226334 00223274  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80226338 00223278  4B DF D2 6D */	bl becomeCurrentHeap__7JKRHeapFv
lbl_8022633C:
/* 8022633C 0022327C  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80226340 00223280  4B DF D4 75 */	bl getFreeSize__7JKRHeapFv
/* 80226344 00223284  90 7D 00 E4 */	stw r3, 0xe4(r29)
/* 80226348 00223288  38 62 BE B0 */	addi r3, r2, lbl_8051A210@sda21
/* 8022634C 0022328C  4C C6 31 82 */	crclr 6
/* 80226350 00223290  4B EC 73 9D */	bl OSReport
/* 80226354 00223294  3C 60 80 48 */	lis r3, lbl_804830DC@ha
/* 80226358 00223298  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 8022635C 0022329C  38 63 30 DC */	addi r3, r3, lbl_804830DC@l
/* 80226360 002232A0  4C C6 31 82 */	crclr 6
/* 80226364 002232A4  4B EC 73 89 */	bl OSReport
/* 80226368 002232A8  83 3D 00 D8 */	lwz r25, 0xd8(r29)
/* 8022636C 002232AC  7F 23 CB 78 */	mr r3, r25
/* 80226370 002232B0  4B DF D4 45 */	bl getFreeSize__7JKRHeapFv
/* 80226374 002232B4  7F 24 CB 78 */	mr r4, r25
/* 80226378 002232B8  38 A0 00 01 */	li r5, 1
/* 8022637C 002232BC  4B DF 9B 4D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80226380 002232C0  90 7D 00 DC */	stw r3, 0xdc(r29)
/* 80226384 002232C4  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 80226388 002232C8  4B DF D2 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 8022638C 002232CC  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226390 002232D0  38 80 00 64 */	li r4, 0x64
/* 80226394 002232D4  4B F2 BB 2D */	bl "alloc__27MonoObjectMgr<Q24Game4Piki>Fi"
/* 80226398 002232D8  80 9D 00 94 */	lwz r4, 0x94(r29)
/* 8022639C 002232DC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802263A0 002232E0  80 04 01 28 */	lwz r0, 0x148(r4)
/* 802263A4 002232E4  90 03 00 18 */	stw r0, 0x18(r3)
/* 802263A8 002232E8  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802263AC 002232EC  48 19 53 6D */	bl start__11ParticleMgrFv
/* 802263B0 002232F0  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 802263B4 002232F4  2C 00 FF FF */	cmpwi r0, -1
/* 802263B8 002232F8  41 82 02 E8 */	beq lbl_802266A0
/* 802263BC 002232FC  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 802263C0 00223300  1C 00 02 78 */	mulli r0, r0, 0x278
/* 802263C4 00223304  38 80 00 00 */	li r4, 0
/* 802263C8 00223308  3C 63 00 01 */	addis r3, r3, 1
/* 802263CC 0022330C  80 63 02 78 */	lwz r3, 0x278(r3)
/* 802263D0 00223310  7F E3 02 14 */	add r31, r3, r0
/* 802263D4 00223314  88 1F 00 A0 */	lbz r0, 0xa0(r31)
/* 802263D8 00223318  28 00 00 0A */	cmplwi r0, 0xa
/* 802263DC 0022331C  40 80 00 0C */	bge lbl_802263E8
/* 802263E0 00223320  7C 04 03 78 */	mr r4, r0
/* 802263E4 00223324  48 00 00 0C */	b lbl_802263F0
lbl_802263E8:
/* 802263E8 00223328  38 00 00 00 */	li r0, 0
/* 802263EC 0022332C  98 1F 00 A0 */	stb r0, 0xa0(r31)
lbl_802263F0:
/* 802263F0 00223330  3C 60 80 4B */	lis r3, __vt__Q24Game15CreatureInitArg@ha
/* 802263F4 00223334  81 1D 01 00 */	lwz r8, 0x100(r29)
/* 802263F8 00223338  38 03 A2 F4 */	addi r0, r3, __vt__Q24Game15CreatureInitArg@l
/* 802263FC 0022333C  38 C0 00 00 */	li r6, 0
/* 80226400 00223340  3C 60 80 4B */	lis r3, __vt__Q24Game13PelletInitArg@ha
/* 80226404 00223344  90 01 00 20 */	stw r0, 0x20(r1)
/* 80226408 00223348  38 00 FF FF */	li r0, -1
/* 8022640C 0022334C  38 A0 00 FF */	li r5, 0xff
/* 80226410 00223350  1C E4 00 C0 */	mulli r7, r4, 0xc0
/* 80226414 00223354  38 63 A2 B8 */	addi r3, r3, __vt__Q24Game13PelletInitArg@l
/* 80226418 00223358  38 80 00 01 */	li r4, 1
/* 8022641C 0022335C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80226420 00223360  38 60 00 03 */	li r3, 3
/* 80226424 00223364  3B C7 00 90 */	addi r30, r7, 0x90
/* 80226428 00223368  98 C1 00 3C */	stb r6, 0x3c(r1)
/* 8022642C 0022336C  7F C8 F2 14 */	add r30, r8, r30
/* 80226430 00223370  B0 C1 00 34 */	sth r6, 0x34(r1)
/* 80226434 00223374  98 A1 00 36 */	stb r5, 0x36(r1)
/* 80226438 00223378  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8022643C 0022337C  98 C1 00 37 */	stb r6, 0x37(r1)
/* 80226440 00223380  98 81 00 24 */	stb r4, 0x24(r1)
/* 80226444 00223384  98 C1 00 3D */	stb r6, 0x3d(r1)
/* 80226448 00223388  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022644C 0022338C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80226450 00223390  98 C1 00 3E */	stb r6, 0x3e(r1)
/* 80226454 00223394  98 C1 00 3F */	stb r6, 0x3f(r1)
/* 80226458 00223398  83 3D 00 A8 */	lwz r25, 0xa8(r29)
/* 8022645C 0022339C  48 00 19 01 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226460 002233A0  7C 7A 1B 78 */	mr r26, r3
/* 80226464 002233A4  38 60 00 04 */	li r3, 4
/* 80226468 002233A8  48 00 18 F5 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 8022646C 002233AC  7C 7C 1B 78 */	mr r28, r3
/* 80226470 002233B0  38 60 00 03 */	li r3, 3
/* 80226474 002233B4  48 00 18 E9 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226478 002233B8  38 60 00 04 */	li r3, 4
/* 8022647C 002233BC  48 00 18 E1 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226480 002233C0  38 60 00 03 */	li r3, 3
/* 80226484 002233C4  48 00 19 49 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226488 002233C8  7C 7B 1B 78 */	mr r27, r3
/* 8022648C 002233CC  38 60 00 04 */	li r3, 4
/* 80226490 002233D0  48 00 19 3D */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226494 002233D4  7C 19 D8 00 */	cmpw r25, r27
/* 80226498 002233D8  40 80 00 0C */	bge lbl_802264A4
/* 8022649C 002233DC  38 00 00 03 */	li r0, 3
/* 802264A0 002233E0  48 00 00 0C */	b lbl_802264AC
lbl_802264A4:
/* 802264A4 002233E4  7F 3B C8 50 */	subf r25, r27, r25
/* 802264A8 002233E8  38 00 00 04 */	li r0, 4
lbl_802264AC:
/* 802264AC 002233EC  2C 00 00 03 */	cmpwi r0, 3
/* 802264B0 002233F0  40 82 00 18 */	bne lbl_802264C8
/* 802264B4 002233F4  7F 43 D3 78 */	mr r3, r26
/* 802264B8 002233F8  7F 24 CB 78 */	mr r4, r25
/* 802264BC 002233FC  4B F8 DF ED */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 802264C0 00223400  7C 7B 1B 78 */	mr r27, r3
/* 802264C4 00223404  48 00 00 14 */	b lbl_802264D8
lbl_802264C8:
/* 802264C8 00223408  7F 83 E3 78 */	mr r3, r28
/* 802264CC 0022340C  7F 24 CB 78 */	mr r4, r25
/* 802264D0 00223410  4B F8 DF D9 */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 802264D4 00223414  7C 7B 1B 78 */	mr r27, r3
lbl_802264D8:
/* 802264D8 00223418  83 3D 00 A8 */	lwz r25, 0xa8(r29)
/* 802264DC 0022341C  38 60 00 03 */	li r3, 3
/* 802264E0 00223420  48 00 18 7D */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264E4 00223424  38 60 00 04 */	li r3, 4
/* 802264E8 00223428  48 00 18 75 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264EC 0022342C  38 60 00 03 */	li r3, 3
/* 802264F0 00223430  48 00 18 DD */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264F4 00223434  7C 7C 1B 78 */	mr r28, r3
/* 802264F8 00223438  38 60 00 04 */	li r3, 4
/* 802264FC 0022343C  48 00 18 D1 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226500 00223440  7C 19 E0 00 */	cmpw r25, r28
/* 80226504 00223444  40 80 00 10 */	bge lbl_80226514
/* 80226508 00223448  7F 27 CB 78 */	mr r7, r25
/* 8022650C 0022344C  38 00 00 03 */	li r0, 3
/* 80226510 00223450  48 00 00 0C */	b lbl_8022651C
lbl_80226514:
/* 80226514 00223454  7C FC C8 50 */	subf r7, r28, r25
/* 80226518 00223458  38 00 00 04 */	li r0, 4
lbl_8022651C:
/* 8022651C 0022345C  98 01 00 36 */	stb r0, 0x36(r1)
/* 80226520 00223460  38 A0 00 00 */	li r5, 0
/* 80226524 00223464  38 00 00 03 */	li r0, 3
/* 80226528 00223468  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 8022652C 0022346C  80 DB 00 40 */	lwz r6, 0x40(r27)
/* 80226530 00223470  38 81 00 20 */	addi r4, r1, 0x20
/* 80226534 00223474  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80226538 00223478  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8022653C 0022347C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80226540 00223480  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80226544 00223484  4B F4 71 99 */	bl setUse__Q24Game9PelletMgrFPQ24Game13PelletInitArg
/* 80226548 00223488  88 01 00 36 */	lbz r0, 0x36(r1)
/* 8022654C 0022348C  28 00 00 03 */	cmplwi r0, 3
/* 80226550 00223490  40 82 00 1C */	bne lbl_8022656C
/* 80226554 00223494  80 6D 95 20 */	lwz r3, mgr__Q24Game13PelletOtakara@sda21(r13)
/* 80226558 00223498  81 83 00 00 */	lwz r12, 0(r3)
/* 8022655C 0022349C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80226560 002234A0  7D 89 03 A6 */	mtctr r12
/* 80226564 002234A4  4E 80 04 21 */	bctrl 
/* 80226568 002234A8  48 00 00 18 */	b lbl_80226580
lbl_8022656C:
/* 8022656C 002234AC  80 6D 95 28 */	lwz r3, mgr__Q24Game10PelletItem@sda21(r13)
/* 80226570 002234B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80226574 002234B4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80226578 002234B8  7D 89 03 A6 */	mtctr r12
/* 8022657C 002234BC  4E 80 04 21 */	bctrl 
lbl_80226580:
/* 80226580 002234C0  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226584 002234C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80226588 002234C8  4B F4 6F 39 */	bl birth__Q24Game9PelletMgrFPQ24Game13PelletInitArg
/* 8022658C 002234CC  90 7D 00 AC */	stw r3, 0xac(r29)
/* 80226590 002234D0  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 80226594 002234D4  28 00 00 00 */	cmplwi r0, 0
/* 80226598 002234D8  41 82 01 58 */	beq lbl_802266F0
/* 8022659C 002234DC  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 802265A0 002234E0  38 81 00 14 */	addi r4, r1, 0x14
/* 802265A4 002234E4  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 802265A8 002234E8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 802265AC 002234EC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 802265B0 002234F0  EC 63 10 2A */	fadds f3, f3, f2
/* 802265B4 002234F4  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 802265B8 002234F8  EC 01 00 2A */	fadds f0, f1, f0
/* 802265BC 002234FC  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 802265C0 00223500  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802265C4 00223504  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802265C8 00223508  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802265CC 0022350C  81 83 00 04 */	lwz r12, 4(r3)
/* 802265D0 00223510  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802265D4 00223514  7D 89 03 A6 */	mtctr r12
/* 802265D8 00223518  4E 80 04 21 */	bctrl 
/* 802265DC 0022351C  FF E0 08 90 */	fmr f31, f1
/* 802265E0 00223520  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 802265E4 00223524  4B F4 03 F1 */	bl getCylinderHeight__Q24Game6PelletFv
/* 802265E8 00223528  C0 42 BD E8 */	lfs f2, lbl_8051A148@sda21(r2)
/* 802265EC 0022352C  38 81 00 14 */	addi r4, r1, 0x14
/* 802265F0 00223530  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802265F4 00223534  38 A0 00 00 */	li r5, 0
/* 802265F8 00223538  EC 22 F8 7A */	fmadds f1, f2, f1, f31
/* 802265FC 0022353C  EC 00 08 2A */	fadds f0, f0, f1
/* 80226600 00223540  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80226604 00223544  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 80226608 00223548  4B F1 4B A1 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 8022660C 0022354C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226610 00223550  80 9D 00 AC */	lwz r4, 0xac(r29)
/* 80226614 00223554  4B FF AE F9 */	bl setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature
/* 80226618 00223558  C0 9F 01 B8 */	lfs f4, 0x1b8(r31)
/* 8022661C 0022355C  C0 7F 01 90 */	lfs f3, 0x190(r31)
/* 80226620 00223560  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226624 00223564  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80226628 00223568  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 8022662C 0022356C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226630 00223570  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80226634 00223574  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226638 00223578  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 8022663C 0022357C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80226640 00223580  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226644 00223584  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226648 00223588  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8022664C 0022358C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226650 00223590  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80226654 00223594  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 80226658 00223598  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8022665C 0022359C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80226660 002235A0  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80226664 002235A4  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226668 002235A8  C0 9F 02 30 */	lfs f4, 0x230(r31)
/* 8022666C 002235AC  C0 7F 02 08 */	lfs f3, 0x208(r31)
/* 80226670 002235B0  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80226674 002235B4  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226678 002235B8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022667C 002235BC  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226680 002235C0  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80226684 002235C4  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226688 002235C8  C0 1F 02 58 */	lfs f0, 0x258(r31)
/* 8022668C 002235CC  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226690 002235D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226694 002235D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226698 002235D8  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 8022669C 002235DC  48 00 00 54 */	b lbl_802266F0
lbl_802266A0:
/* 802266A0 002235E0  80 BD 01 00 */	lwz r5, 0x100(r29)
/* 802266A4 002235E4  38 00 00 00 */	li r0, 0
/* 802266A8 002235E8  38 81 00 08 */	addi r4, r1, 8
/* 802266AC 002235EC  3C 65 00 01 */	addis r3, r5, 1
/* 802266B0 002235F0  83 E3 02 78 */	lwz r31, 0x278(r3)
/* 802266B4 002235F4  90 1D 00 AC */	stw r0, 0xac(r29)
/* 802266B8 002235F8  C0 25 01 1C */	lfs f1, 0x11c(r5)
/* 802266BC 002235FC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 802266C0 00223600  C0 65 00 F4 */	lfs f3, 0xf4(r5)
/* 802266C4 00223604  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 802266C8 00223608  EC 81 00 2A */	fadds f4, f1, f0
/* 802266CC 0022360C  C0 25 00 CC */	lfs f1, 0xcc(r5)
/* 802266D0 00223610  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 802266D4 00223614  EC 43 10 2A */	fadds f2, f3, f2
/* 802266D8 00223618  EC 01 00 2A */	fadds f0, f1, f0
/* 802266DC 0022361C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802266E0 00223620  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802266E4 00223624  D0 01 00 08 */	stfs f0, 8(r1)
/* 802266E8 00223628  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 802266EC 0022362C  4B FF AD 99 */	bl "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
lbl_802266F0:
/* 802266F0 00223630  C0 9F 01 B8 */	lfs f4, 0x1b8(r31)
/* 802266F4 00223634  C0 7F 01 90 */	lfs f3, 0x190(r31)
/* 802266F8 00223638  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 802266FC 0022363C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80226700 00223640  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 80226704 00223644  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226708 00223648  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 8022670C 0022364C  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226710 00223650  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 80226714 00223654  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80226718 00223658  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8022671C 0022365C  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226720 00223660  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80226724 00223664  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226728 00223668  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 8022672C 0022366C  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 80226730 00223670  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226734 00223674  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80226738 00223678  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 8022673C 0022367C  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226740 00223680  C0 9F 02 30 */	lfs f4, 0x230(r31)
/* 80226744 00223684  C0 7F 02 08 */	lfs f3, 0x208(r31)
/* 80226748 00223688  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 8022674C 0022368C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226750 00223690  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80226754 00223694  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226758 00223698  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 8022675C 0022369C  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226760 002236A0  C0 1F 02 58 */	lfs f0, 0x258(r31)
/* 80226764 002236A4  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226768 002236A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022676C 002236AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226770 002236B0  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 80226774 002236B4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80226778 002236B8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8022677C 002236BC  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 80226780 002236C0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80226784 002236C4  7C 08 03 A6 */	mtlr r0
/* 80226788 002236C8  38 21 00 80 */	addi r1, r1, 0x80
/* 8022678C 002236CC  4E 80 00 20 */	blr 
.else
.global dvdloadB_pellet__Q34Game10SingleGame10ZukanStateFv
dvdloadB_pellet__Q34Game10SingleGame10ZukanStateFv:
/* 802262E0 00223220  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802262E4 00223224  7C 08 02 A6 */	mflr r0
/* 802262E8 00223228  90 01 00 84 */	stw r0, 0x84(r1)
/* 802262EC 0022322C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802262F0 00223230  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802262F4 00223234  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 802262F8 00223238  7C 7D 1B 78 */	mr r29, r3
/* 802262FC 0022323C  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80226300 00223240  28 00 00 00 */	cmplwi r0, 0
/* 80226304 00223244  41 82 00 38 */	beq lbl_8022633C
/* 80226308 00223248  80 0D 91 E0 */	lwz r0, generalEnemyMgr__4Game@sda21(r13)
/* 8022630C 0022324C  28 00 00 00 */	cmplwi r0, 0
/* 80226310 00223250  41 82 00 0C */	beq lbl_8022631C
/* 80226314 00223254  48 00 05 0D */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 80226318 00223258  48 00 00 24 */	b lbl_8022633C
lbl_8022631C:
/* 8022631C 0022325C  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 80226320 00223260  28 00 00 00 */	cmplwi r0, 0
/* 80226324 00223264  41 82 00 0C */	beq lbl_80226330
/* 80226328 00223268  48 00 08 B5 */	bl clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv
/* 8022632C 0022326C  48 00 00 10 */	b lbl_8022633C
lbl_80226330:
/* 80226330 00223270  48 00 04 61 */	bl clearHeapB_common__Q34Game10SingleGame10ZukanStateFv
/* 80226334 00223274  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80226338 00223278  4B DF D2 6D */	bl becomeCurrentHeap__7JKRHeapFv
lbl_8022633C:
/* 8022633C 0022327C  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80226340 00223280  4B DF D4 75 */	bl getFreeSize__7JKRHeapFv
/* 80226344 00223284  90 7D 00 E4 */	stw r3, 0xe4(r29)
/* 80226348 00223288  38 62 BE B0 */	addi r3, r2, lbl_8051A210@sda21
/* 8022634C 0022328C  4C C6 31 82 */	crclr 6
/* 80226350 00223290  4B EC 73 9D */	bl OSReport
/* 80226354 00223294  3C 60 80 48 */	lis r3, lbl_804830DC@ha
/* 80226358 00223298  80 9D 00 E4 */	lwz r4, 0xe4(r29)
/* 8022635C 0022329C  38 63 30 DC */	addi r3, r3, lbl_804830DC@l
/* 80226360 002232A0  4C C6 31 82 */	crclr 6
/* 80226364 002232A4  4B EC 73 89 */	bl OSReport
/* 80226368 002232A8  83 3D 00 D8 */	lwz r25, 0xd8(r29)
/* 8022636C 002232AC  7F 23 CB 78 */	mr r3, r25
/* 80226370 002232B0  4B DF D4 45 */	bl getFreeSize__7JKRHeapFv
/* 80226374 002232B4  7F 24 CB 78 */	mr r4, r25
/* 80226378 002232B8  38 A0 00 01 */	li r5, 1
/* 8022637C 002232BC  4B DF 9B 4D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80226380 002232C0  90 7D 00 DC */	stw r3, 0xdc(r29)
/* 80226384 002232C4  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 80226388 002232C8  4B DF D2 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 8022638C 002232CC  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226390 002232D0  38 80 00 64 */	li r4, 0x64
/* 80226394 002232D4  4B F2 BB 2D */	bl "alloc__27MonoObjectMgr<Q24Game4Piki>Fi"
/* 80226398 002232D8  80 9D 00 94 */	lwz r4, 0x94(r29)
/* 8022639C 002232DC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802263A0 002232E0  80 04 01 28 */	lwz r0, 0x128(r4)
/* 802263A4 002232E4  90 03 00 18 */	stw r0, 0x18(r3)
/* 802263A8 002232E8  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802263AC 002232EC  48 19 53 6D */	bl start__11ParticleMgrFv
/* 802263B0 002232F0  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 802263B4 002232F4  2C 00 FF FF */	cmpwi r0, -1
/* 802263B8 002232F8  41 82 02 E8 */	beq lbl_802266A0
/* 802263BC 002232FC  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 802263C0 00223300  1C 00 02 78 */	mulli r0, r0, 0x278
/* 802263C4 00223304  38 80 00 00 */	li r4, 0
/* 802263C8 00223308  3C 63 00 01 */	addis r3, r3, 1
/* 802263CC 0022330C  80 63 02 78 */	lwz r3, 0x278(r3)
/* 802263D0 00223310  7F E3 02 14 */	add r31, r3, r0
/* 802263D4 00223314  88 1F 00 A0 */	lbz r0, 0xa0(r31)
/* 802263D8 00223318  28 00 00 0A */	cmplwi r0, 0xa
/* 802263DC 0022331C  40 80 00 0C */	bge lbl_802263E8
/* 802263E0 00223320  7C 04 03 78 */	mr r4, r0
/* 802263E4 00223324  48 00 00 0C */	b lbl_802263F0
lbl_802263E8:
/* 802263E8 00223328  38 00 00 00 */	li r0, 0
/* 802263EC 0022332C  98 1F 00 A0 */	stb r0, 0xa0(r31)
lbl_802263F0:
/* 802263F0 00223330  3C 60 80 4B */	lis r3, __vt__Q24Game15CreatureInitArg@ha
/* 802263F4 00223334  81 1D 01 00 */	lwz r8, 0x100(r29)
/* 802263F8 00223338  38 03 A2 F4 */	addi r0, r3, __vt__Q24Game15CreatureInitArg@l
/* 802263FC 0022333C  38 C0 00 00 */	li r6, 0
/* 80226400 00223340  3C 60 80 4B */	lis r3, __vt__Q24Game13PelletInitArg@ha
/* 80226404 00223344  90 01 00 20 */	stw r0, 0x20(r1)
/* 80226408 00223348  38 00 FF FF */	li r0, -1
/* 8022640C 0022334C  38 A0 00 FF */	li r5, 0xff
/* 80226410 00223350  1C E4 00 C0 */	mulli r7, r4, 0xc0
/* 80226414 00223354  38 63 A2 B8 */	addi r3, r3, __vt__Q24Game13PelletInitArg@l
/* 80226418 00223358  38 80 00 01 */	li r4, 1
/* 8022641C 0022335C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80226420 00223360  38 60 00 03 */	li r3, 3
/* 80226424 00223364  3B C7 00 90 */	addi r30, r7, 0x90
/* 80226428 00223368  98 C1 00 3C */	stb r6, 0x3c(r1)
/* 8022642C 0022336C  7F C8 F2 14 */	add r30, r8, r30
/* 80226430 00223370  B0 C1 00 34 */	sth r6, 0x34(r1)
/* 80226434 00223374  98 A1 00 36 */	stb r5, 0x36(r1)
/* 80226438 00223378  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8022643C 0022337C  98 C1 00 37 */	stb r6, 0x37(r1)
/* 80226440 00223380  98 81 00 24 */	stb r4, 0x24(r1)
/* 80226444 00223384  98 C1 00 3D */	stb r6, 0x3d(r1)
/* 80226448 00223388  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022644C 0022338C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80226450 00223390  98 C1 00 3E */	stb r6, 0x3e(r1)
/* 80226454 00223394  98 C1 00 3F */	stb r6, 0x3f(r1)
/* 80226458 00223398  83 3D 00 A8 */	lwz r25, 0xa8(r29)
/* 8022645C 0022339C  48 00 19 01 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226460 002233A0  7C 7A 1B 78 */	mr r26, r3
/* 80226464 002233A4  38 60 00 04 */	li r3, 4
/* 80226468 002233A8  48 00 18 F5 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 8022646C 002233AC  7C 7C 1B 78 */	mr r28, r3
/* 80226470 002233B0  38 60 00 03 */	li r3, 3
/* 80226474 002233B4  48 00 18 E9 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226478 002233B8  38 60 00 04 */	li r3, 4
/* 8022647C 002233BC  48 00 18 E1 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226480 002233C0  38 60 00 03 */	li r3, 3
/* 80226484 002233C4  48 00 19 49 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226488 002233C8  7C 7B 1B 78 */	mr r27, r3
/* 8022648C 002233CC  38 60 00 04 */	li r3, 4
/* 80226490 002233D0  48 00 19 3D */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226494 002233D4  7C 19 D8 00 */	cmpw r25, r27
/* 80226498 002233D8  40 80 00 0C */	bge lbl_802264A4
/* 8022649C 002233DC  38 00 00 03 */	li r0, 3
/* 802264A0 002233E0  48 00 00 0C */	b lbl_802264AC
lbl_802264A4:
/* 802264A4 002233E4  7F 3B C8 50 */	subf r25, r27, r25
/* 802264A8 002233E8  38 00 00 04 */	li r0, 4
lbl_802264AC:
/* 802264AC 002233EC  2C 00 00 03 */	cmpwi r0, 3
/* 802264B0 002233F0  40 82 00 18 */	bne lbl_802264C8
/* 802264B4 002233F4  7F 43 D3 78 */	mr r3, r26
/* 802264B8 002233F8  7F 24 CB 78 */	mr r4, r25
/* 802264BC 002233FC  4B F8 DF ED */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 802264C0 00223400  7C 7B 1B 78 */	mr r27, r3
/* 802264C4 00223404  48 00 00 14 */	b lbl_802264D8
lbl_802264C8:
/* 802264C8 00223408  7F 83 E3 78 */	mr r3, r28
/* 802264CC 0022340C  7F 24 CB 78 */	mr r4, r25
/* 802264D0 00223410  4B F8 DF D9 */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 802264D4 00223414  7C 7B 1B 78 */	mr r27, r3
lbl_802264D8:
/* 802264D8 00223418  83 3D 00 A8 */	lwz r25, 0xa8(r29)
/* 802264DC 0022341C  38 60 00 03 */	li r3, 3
/* 802264E0 00223420  48 00 18 7D */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264E4 00223424  38 60 00 04 */	li r3, 4
/* 802264E8 00223428  48 00 18 75 */	bl getConfigList__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264EC 0022342C  38 60 00 03 */	li r3, 3
/* 802264F0 00223430  48 00 18 DD */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 802264F4 00223434  7C 7C 1B 78 */	mr r28, r3
/* 802264F8 00223438  38 60 00 04 */	li r3, 4
/* 802264FC 0022343C  48 00 18 D1 */	bl getCount__Q34Game10PelletList3MgrFQ34Game10PelletList5cKind
/* 80226500 00223440  7C 19 E0 00 */	cmpw r25, r28
/* 80226504 00223444  40 80 00 10 */	bge lbl_80226514
/* 80226508 00223448  7F 27 CB 78 */	mr r7, r25
/* 8022650C 0022344C  38 00 00 03 */	li r0, 3
/* 80226510 00223450  48 00 00 0C */	b lbl_8022651C
lbl_80226514:
/* 80226514 00223454  7C FC C8 50 */	subf r7, r28, r25
/* 80226518 00223458  38 00 00 04 */	li r0, 4
lbl_8022651C:
/* 8022651C 0022345C  98 01 00 36 */	stb r0, 0x36(r1)
/* 80226520 00223460  38 A0 00 00 */	li r5, 0
/* 80226524 00223464  38 00 00 03 */	li r0, 3
/* 80226528 00223468  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 8022652C 0022346C  80 DB 00 40 */	lwz r6, 0x40(r27)
/* 80226530 00223470  38 81 00 20 */	addi r4, r1, 0x20
/* 80226534 00223474  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80226538 00223478  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8022653C 0022347C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80226540 00223480  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80226544 00223484  4B F4 71 99 */	bl setUse__Q24Game9PelletMgrFPQ24Game13PelletInitArg
/* 80226548 00223488  88 01 00 36 */	lbz r0, 0x36(r1)
/* 8022654C 0022348C  28 00 00 03 */	cmplwi r0, 3
/* 80226550 00223490  40 82 00 1C */	bne lbl_8022656C
/* 80226554 00223494  80 6D 95 20 */	lwz r3, mgr__Q24Game13PelletOtakara@sda21(r13)
/* 80226558 00223498  81 83 00 00 */	lwz r12, 0(r3)
/* 8022655C 0022349C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80226560 002234A0  7D 89 03 A6 */	mtctr r12
/* 80226564 002234A4  4E 80 04 21 */	bctrl 
/* 80226568 002234A8  48 00 00 18 */	b lbl_80226580
lbl_8022656C:
/* 8022656C 002234AC  80 6D 95 28 */	lwz r3, mgr__Q24Game10PelletItem@sda21(r13)
/* 80226570 002234B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80226574 002234B4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80226578 002234B8  7D 89 03 A6 */	mtctr r12
/* 8022657C 002234BC  4E 80 04 21 */	bctrl 
lbl_80226580:
/* 80226580 002234C0  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226584 002234C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80226588 002234C8  4B F4 6F 39 */	bl birth__Q24Game9PelletMgrFPQ24Game13PelletInitArg
/* 8022658C 002234CC  90 7D 00 AC */	stw r3, 0xac(r29)
/* 80226590 002234D0  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 80226594 002234D4  28 00 00 00 */	cmplwi r0, 0
/* 80226598 002234D8  41 82 01 58 */	beq lbl_802266F0
/* 8022659C 002234DC  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 802265A0 002234E0  38 81 00 14 */	addi r4, r1, 0x14
/* 802265A4 002234E4  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 802265A8 002234E8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 802265AC 002234EC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 802265B0 002234F0  EC 63 10 2A */	fadds f3, f3, f2
/* 802265B4 002234F4  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 802265B8 002234F8  EC 01 00 2A */	fadds f0, f1, f0
/* 802265BC 002234FC  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 802265C0 00223500  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802265C4 00223504  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802265C8 00223508  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802265CC 0022350C  81 83 00 04 */	lwz r12, 4(r3)
/* 802265D0 00223510  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802265D4 00223514  7D 89 03 A6 */	mtctr r12
/* 802265D8 00223518  4E 80 04 21 */	bctrl 
/* 802265DC 0022351C  FF E0 08 90 */	fmr f31, f1
/* 802265E0 00223520  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 802265E4 00223524  4B F4 03 F1 */	bl getCylinderHeight__Q24Game6PelletFv
/* 802265E8 00223528  C0 42 BD E8 */	lfs f2, lbl_8051A148@sda21(r2)
/* 802265EC 0022352C  38 81 00 14 */	addi r4, r1, 0x14
/* 802265F0 00223530  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802265F4 00223534  38 A0 00 00 */	li r5, 0
/* 802265F8 00223538  EC 22 F8 7A */	fmadds f1, f2, f1, f31
/* 802265FC 0022353C  EC 00 08 2A */	fadds f0, f0, f1
/* 80226600 00223540  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80226604 00223544  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 80226608 00223548  4B F1 4B A1 */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 8022660C 0022354C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226610 00223550  80 9D 00 AC */	lwz r4, 0xac(r29)
/* 80226614 00223554  4B FF AE F9 */	bl setTarget__Q34Game15IllustratedBook6CameraFPQ24Game8Creature
/* 80226618 00223558  C0 9F 01 B8 */	lfs f4, 0x1b8(r31)
/* 8022661C 0022355C  C0 7F 01 90 */	lfs f3, 0x190(r31)
/* 80226620 00223560  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226624 00223564  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80226628 00223568  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 8022662C 0022356C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226630 00223570  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 80226634 00223574  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226638 00223578  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 8022663C 0022357C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80226640 00223580  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226644 00223584  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226648 00223588  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8022664C 0022358C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226650 00223590  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 80226654 00223594  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 80226658 00223598  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8022665C 0022359C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80226660 002235A0  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 80226664 002235A4  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226668 002235A8  C0 9F 02 30 */	lfs f4, 0x230(r31)
/* 8022666C 002235AC  C0 7F 02 08 */	lfs f3, 0x208(r31)
/* 80226670 002235B0  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80226674 002235B4  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226678 002235B8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022667C 002235BC  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226680 002235C0  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 80226684 002235C4  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226688 002235C8  C0 1F 02 58 */	lfs f0, 0x258(r31)
/* 8022668C 002235CC  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226690 002235D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80226694 002235D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226698 002235D8  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 8022669C 002235DC  48 00 00 54 */	b lbl_802266F0
lbl_802266A0:
/* 802266A0 002235E0  80 BD 01 00 */	lwz r5, 0x100(r29)
/* 802266A4 002235E4  38 00 00 00 */	li r0, 0
/* 802266A8 002235E8  38 81 00 08 */	addi r4, r1, 8
/* 802266AC 002235EC  3C 65 00 01 */	addis r3, r5, 1
/* 802266B0 002235F0  83 E3 02 78 */	lwz r31, 0x278(r3)
/* 802266B4 002235F4  90 1D 00 AC */	stw r0, 0xac(r29)
/* 802266B8 002235F8  C0 25 01 1C */	lfs f1, 0x11c(r5)
/* 802266BC 002235FC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 802266C0 00223600  C0 65 00 F4 */	lfs f3, 0xf4(r5)
/* 802266C4 00223604  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 802266C8 00223608  EC 81 00 2A */	fadds f4, f1, f0
/* 802266CC 0022360C  C0 25 00 CC */	lfs f1, 0xcc(r5)
/* 802266D0 00223610  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 802266D4 00223614  EC 43 10 2A */	fadds f2, f3, f2
/* 802266D8 00223618  EC 01 00 2A */	fadds f0, f1, f0
/* 802266DC 0022361C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802266E0 00223620  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802266E4 00223624  D0 01 00 08 */	stfs f0, 8(r1)
/* 802266E8 00223628  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 802266EC 0022362C  4B FF AD 99 */	bl "move__Q34Game15IllustratedBook6CameraFRC10Vector3<f>"
lbl_802266F0:
/* 802266F0 00223630  C0 9F 01 B8 */	lfs f4, 0x1b8(r31)
/* 802266F4 00223634  C0 7F 01 90 */	lfs f3, 0x190(r31)
/* 802266F8 00223638  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 802266FC 0022363C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80226700 00223640  C0 22 BE BC */	lfs f1, lbl_8051A21C@sda21(r2)
/* 80226704 00223644  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 80226708 00223648  C0 42 BE B8 */	lfs f2, lbl_8051A218@sda21(r2)
/* 8022670C 0022364C  D0 63 01 E8 */	stfs f3, 0x1e8(r3)
/* 80226710 00223650  D0 83 01 EC */	stfs f4, 0x1ec(r3)
/* 80226714 00223654  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80226718 00223658  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8022671C 0022365C  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80226720 00223660  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80226724 00223664  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226728 00223668  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 8022672C 0022366C  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 80226730 00223670  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226734 00223674  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80226738 00223678  D0 03 01 D0 */	stfs f0, 0x1d0(r3)
/* 8022673C 0022367C  D0 63 01 D4 */	stfs f3, 0x1d4(r3)
/* 80226740 00223680  C0 9F 02 30 */	lfs f4, 0x230(r31)
/* 80226744 00223684  C0 7F 02 08 */	lfs f3, 0x208(r31)
/* 80226748 00223688  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 8022674C 0022368C  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226750 00223690  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80226754 00223694  D0 03 02 88 */	stfs f0, 0x288(r3)
/* 80226758 00223698  D0 63 02 8C */	stfs f3, 0x28c(r3)
/* 8022675C 0022369C  D0 83 02 90 */	stfs f4, 0x290(r3)
/* 80226760 002236A0  C0 1F 02 58 */	lfs f0, 0x258(r31)
/* 80226764 002236A4  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 80226768 002236A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022676C 002236AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80226770 002236B0  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 80226774 002236B4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80226778 002236B8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8022677C 002236BC  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 80226780 002236C0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80226784 002236C4  7C 08 03 A6 */	mtlr r0
/* 80226788 002236C8  38 21 00 80 */	addi r1, r1, 0x80
/* 8022678C 002236CC  4E 80 00 20 */	blr 
.endif

.global clearHeapB_common__Q34Game10SingleGame10ZukanStateFv
clearHeapB_common__Q34Game10SingleGame10ZukanStateFv:
/* 80226790 002236D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226794 002236D4  7C 08 02 A6 */	mflr r0
/* 80226798 002236D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022679C 002236DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802267A0 002236E0  7C 7F 1B 78 */	mr r31, r3
/* 802267A4 002236E4  80 0D 91 D8 */	lwz r0, farmMgr__Q24Game4Farm@sda21(r13)
/* 802267A8 002236E8  28 00 00 00 */	cmplwi r0, 0
/* 802267AC 002236EC  41 82 00 0C */	beq lbl_802267B8
/* 802267B0 002236F0  7C 03 03 78 */	mr r3, r0
/* 802267B4 002236F4  4B EF DE D1 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_802267B8:
/* 802267B8 002236F8  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 802267BC 002236FC  4B F4 6A 7D */	bl resetMgrs__Q24Game9PelletMgrFv
/* 802267C0 00223700  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 802267C4 00223704  4B F3 10 19 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 802267C8 00223708  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 802267CC 0022370C  4B F3 1B 2D */	bl clear__Q24Game11CellPyramidFv
/* 802267D0 00223710  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802267D4 00223714  48 19 4F C1 */	bl killAll__11ParticleMgrFv
/* 802267D8 00223718  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 802267DC 0022371C  48 19 4F 61 */	bl reset__11ParticleMgrFv
/* 802267E0 00223720  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 802267E4 00223724  48 01 B4 2D */	bl killAll__Q24Game9ShadowMgrFv
/* 802267E8 00223728  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 802267EC 0022372C  38 80 00 02 */	li r4, 2
/* 802267F0 00223730  48 02 D2 81 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 802267F4 00223734  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 802267F8 00223738  4B DF CF 39 */	bl freeAll__7JKRHeapFv
/* 802267FC 0022373C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226800 00223740  4B DF CD B5 */	bl destroy__7JKRHeapFv
/* 80226804 00223744  38 00 00 00 */	li r0, 0
/* 80226808 00223748  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8022680C 0022374C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226810 00223750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226814 00223754  7C 08 03 A6 */	mtlr r0
/* 80226818 00223758  38 21 00 10 */	addi r1, r1, 0x10
/* 8022681C 0022375C  4E 80 00 20 */	blr 

.global clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv:
/* 80226820 00223760  94 21 F9 70 */	stwu r1, -0x690(r1)
/* 80226824 00223764  7C 08 02 A6 */	mflr r0
/* 80226828 00223768  90 01 06 94 */	stw r0, 0x694(r1)
/* 8022682C 0022376C  BF 41 06 78 */	stmw r26, 0x678(r1)
/* 80226830 00223770  7C 7E 1B 78 */	mr r30, r3
/* 80226834 00223774  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80226838 00223778  28 00 00 00 */	cmplwi r0, 0
/* 8022683C 0022377C  41 82 03 84 */	beq lbl_80226BC0
/* 80226840 00223780  38 61 00 20 */	addi r3, r1, 0x20
/* 80226844 00223784  3B 40 00 00 */	li r26, 0
/* 80226848 00223788  3B A0 00 00 */	li r29, 0
/* 8022684C 0022378C  4B F4 61 1D */	bl __ct__Q24Game14PelletIteratorFv
/* 80226850 00223790  38 61 00 20 */	addi r3, r1, 0x20
/* 80226854 00223794  4B F4 61 2D */	bl first__Q24Game14PelletIteratorFv
/* 80226858 00223798  3C 80 80 48 */	lis r4, lbl_80482EDC@ha
/* 8022685C 0022379C  3C 60 80 48 */	lis r3, lbl_80483170@ha
/* 80226860 002237A0  3B 61 03 50 */	addi r27, r1, 0x350
/* 80226864 002237A4  3B E4 2E DC */	addi r31, r4, lbl_80482EDC@l
/* 80226868 002237A8  3B 83 31 70 */	addi r28, r3, lbl_80483170@l
/* 8022686C 002237AC  48 00 00 40 */	b lbl_802268AC
lbl_80226870:
/* 80226870 002237B0  38 61 00 20 */	addi r3, r1, 0x20
/* 80226874 002237B4  4B F4 61 59 */	bl __ml__Q24Game14PelletIteratorFv
/* 80226878 002237B8  2C 1A 00 C8 */	cmpwi r26, 0xc8
/* 8022687C 002237BC  40 80 00 14 */	bge lbl_80226890
/* 80226880 002237C0  7C 7B E9 2E */	stwx r3, r27, r29
/* 80226884 002237C4  3B 5A 00 01 */	addi r26, r26, 1
/* 80226888 002237C8  3B BD 00 04 */	addi r29, r29, 4
/* 8022688C 002237CC  48 00 00 18 */	b lbl_802268A4
lbl_80226890:
/* 80226890 002237D0  7F E3 FB 78 */	mr r3, r31
/* 80226894 002237D4  7F 85 E3 78 */	mr r5, r28
/* 80226898 002237D8  38 80 0C 5C */	li r4, 0xc5c
/* 8022689C 002237DC  4C C6 31 82 */	crclr 6
/* 802268A0 002237E0  4B E0 3D A1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802268A4:
/* 802268A4 002237E4  38 61 00 20 */	addi r3, r1, 0x20
/* 802268A8 002237E8  4B F4 61 8D */	bl next__Q24Game14PelletIteratorFv
lbl_802268AC:
/* 802268AC 002237EC  38 61 00 20 */	addi r3, r1, 0x20
/* 802268B0 002237F0  4B F4 62 45 */	bl isDone__Q24Game14PelletIteratorFv
/* 802268B4 002237F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802268B8 002237F8  41 82 FF B8 */	beq lbl_80226870
/* 802268BC 002237FC  3B 61 03 50 */	addi r27, r1, 0x350
/* 802268C0 00223800  3B 80 00 00 */	li r28, 0
/* 802268C4 00223804  48 00 00 18 */	b lbl_802268DC
lbl_802268C8:
/* 802268C8 00223808  80 7B 00 00 */	lwz r3, 0(r27)
/* 802268CC 0022380C  38 80 00 00 */	li r4, 0
/* 802268D0 00223810  4B F1 48 21 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 802268D4 00223814  3B 7B 00 04 */	addi r27, r27, 4
/* 802268D8 00223818  3B 9C 00 01 */	addi r28, r28, 1
lbl_802268DC:
/* 802268DC 0022381C  7C 1C D0 00 */	cmpw r28, r26
/* 802268E0 00223820  41 80 FF E8 */	blt lbl_802268C8
/* 802268E4 00223824  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 802268E8 00223828  4B F4 69 51 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 802268EC 0022382C  80 6D 93 90 */	lwz r3, dynParticleMgr__4Game@sda21(r13)
/* 802268F0 00223830  81 83 00 00 */	lwz r12, 0(r3)
/* 802268F4 00223834  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 802268F8 00223838  7D 89 03 A6 */	mtctr r12
/* 802268FC 0022383C  4E 80 04 21 */	bctrl 
/* 80226900 00223840  38 00 00 00 */	li r0, 0
/* 80226904 00223844  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226908 00223848  3C 80 80 4B */	lis r4, "__vt__22Iterator<Q24Game4Piki>"@ha
/* 8022690C 0022384C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80226910 00223850  38 84 BC 9C */	addi r4, r4, "__vt__22Iterator<Q24Game4Piki>"@l
/* 80226914 00223854  28 00 00 00 */	cmplwi r0, 0
/* 80226918 00223858  90 81 00 10 */	stw r4, 0x10(r1)
/* 8022691C 0022385C  3B E0 00 00 */	li r31, 0
/* 80226920 00223860  3B A0 00 00 */	li r29, 0
/* 80226924 00223864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80226928 00223868  90 61 00 18 */	stw r3, 0x18(r1)
/* 8022692C 0022386C  40 82 00 1C */	bne lbl_80226948
/* 80226930 00223870  81 83 00 00 */	lwz r12, 0(r3)
/* 80226934 00223874  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80226938 00223878  7D 89 03 A6 */	mtctr r12
/* 8022693C 0022387C  4E 80 04 21 */	bctrl 
/* 80226940 00223880  90 61 00 14 */	stw r3, 0x14(r1)
/* 80226944 00223884  48 00 00 8C */	b lbl_802269D0
lbl_80226948:
/* 80226948 00223888  81 83 00 00 */	lwz r12, 0(r3)
/* 8022694C 0022388C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80226950 00223890  7D 89 03 A6 */	mtctr r12
/* 80226954 00223894  4E 80 04 21 */	bctrl 
/* 80226958 00223898  90 61 00 14 */	stw r3, 0x14(r1)
/* 8022695C 0022389C  48 00 00 58 */	b lbl_802269B4
lbl_80226960:
/* 80226960 002238A0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226964 002238A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226968 002238A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022696C 002238AC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80226970 002238B0  7D 89 03 A6 */	mtctr r12
/* 80226974 002238B4  4E 80 04 21 */	bctrl 
/* 80226978 002238B8  7C 64 1B 78 */	mr r4, r3
/* 8022697C 002238BC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80226980 002238C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80226984 002238C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80226988 002238C8  7D 89 03 A6 */	mtctr r12
/* 8022698C 002238CC  4E 80 04 21 */	bctrl 
/* 80226990 002238D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226994 002238D4  40 82 00 3C */	bne lbl_802269D0
/* 80226998 002238D8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8022699C 002238DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802269A0 002238E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802269A4 002238E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802269A8 002238E8  7D 89 03 A6 */	mtctr r12
/* 802269AC 002238EC  4E 80 04 21 */	bctrl 
/* 802269B0 002238F0  90 61 00 14 */	stw r3, 0x14(r1)
lbl_802269B4:
/* 802269B4 002238F4  81 81 00 10 */	lwz r12, 0x10(r1)
/* 802269B8 002238F8  38 61 00 10 */	addi r3, r1, 0x10
/* 802269BC 002238FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802269C0 00223900  7D 89 03 A6 */	mtctr r12
/* 802269C4 00223904  4E 80 04 21 */	bctrl 
/* 802269C8 00223908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802269CC 0022390C  41 82 FF 94 */	beq lbl_80226960
lbl_802269D0:
/* 802269D0 00223910  3B 81 00 30 */	addi r28, r1, 0x30
/* 802269D4 00223914  48 00 00 E0 */	b lbl_80226AB4
lbl_802269D8:
/* 802269D8 00223918  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802269DC 0022391C  81 83 00 00 */	lwz r12, 0(r3)
/* 802269E0 00223920  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802269E4 00223924  7D 89 03 A6 */	mtctr r12
/* 802269E8 00223928  4E 80 04 21 */	bctrl 
/* 802269EC 0022392C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802269F0 00223930  3B FF 00 01 */	addi r31, r31, 1
/* 802269F4 00223934  7C 7C E9 2E */	stwx r3, r28, r29
/* 802269F8 00223938  3B BD 00 04 */	addi r29, r29, 4
/* 802269FC 0022393C  28 00 00 00 */	cmplwi r0, 0
/* 80226A00 00223940  40 82 00 24 */	bne lbl_80226A24
/* 80226A04 00223944  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226A08 00223948  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226A0C 0022394C  81 83 00 00 */	lwz r12, 0(r3)
/* 80226A10 00223950  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80226A14 00223954  7D 89 03 A6 */	mtctr r12
/* 80226A18 00223958  4E 80 04 21 */	bctrl 
/* 80226A1C 0022395C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80226A20 00223960  48 00 00 94 */	b lbl_80226AB4
lbl_80226A24:
/* 80226A24 00223964  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226A28 00223968  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226A2C 0022396C  81 83 00 00 */	lwz r12, 0(r3)
/* 80226A30 00223970  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80226A34 00223974  7D 89 03 A6 */	mtctr r12
/* 80226A38 00223978  4E 80 04 21 */	bctrl 
/* 80226A3C 0022397C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80226A40 00223980  48 00 00 58 */	b lbl_80226A98
lbl_80226A44:
/* 80226A44 00223984  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226A48 00223988  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226A4C 0022398C  81 83 00 00 */	lwz r12, 0(r3)
/* 80226A50 00223990  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80226A54 00223994  7D 89 03 A6 */	mtctr r12
/* 80226A58 00223998  4E 80 04 21 */	bctrl 
/* 80226A5C 0022399C  7C 64 1B 78 */	mr r4, r3
/* 80226A60 002239A0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80226A64 002239A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80226A68 002239A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80226A6C 002239AC  7D 89 03 A6 */	mtctr r12
/* 80226A70 002239B0  4E 80 04 21 */	bctrl 
/* 80226A74 002239B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226A78 002239B8  40 82 00 3C */	bne lbl_80226AB4
/* 80226A7C 002239BC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226A80 002239C0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226A84 002239C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80226A88 002239C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80226A8C 002239CC  7D 89 03 A6 */	mtctr r12
/* 80226A90 002239D0  4E 80 04 21 */	bctrl 
/* 80226A94 002239D4  90 61 00 14 */	stw r3, 0x14(r1)
lbl_80226A98:
/* 80226A98 002239D8  81 81 00 10 */	lwz r12, 0x10(r1)
/* 80226A9C 002239DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80226AA0 002239E0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80226AA4 002239E4  7D 89 03 A6 */	mtctr r12
/* 80226AA8 002239E8  4E 80 04 21 */	bctrl 
/* 80226AAC 002239EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226AB0 002239F0  41 82 FF 94 */	beq lbl_80226A44
lbl_80226AB4:
/* 80226AB4 002239F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80226AB8 002239F8  81 83 00 00 */	lwz r12, 0(r3)
/* 80226ABC 002239FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80226AC0 00223A00  7D 89 03 A6 */	mtctr r12
/* 80226AC4 00223A04  4E 80 04 21 */	bctrl 
/* 80226AC8 00223A08  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80226ACC 00223A0C  7C 04 18 40 */	cmplw r4, r3
/* 80226AD0 00223A10  40 82 FF 08 */	bne lbl_802269D8
/* 80226AD4 00223A14  3C 60 80 4B */	lis r3, __vt__Q24Game15CreatureKillArg@ha
/* 80226AD8 00223A18  3C 80 00 01 */	lis r4, 0x00010001@ha
/* 80226ADC 00223A1C  38 03 A2 D0 */	addi r0, r3, __vt__Q24Game15CreatureKillArg@l
/* 80226AE0 00223A20  3C 60 80 4B */	lis r3, __vt__Q24Game11PikiKillArg@ha
/* 80226AE4 00223A24  90 01 00 08 */	stw r0, 8(r1)
/* 80226AE8 00223A28  38 84 00 01 */	addi r4, r4, 0x00010001@l
/* 80226AEC 00223A2C  38 03 11 60 */	addi r0, r3, __vt__Q24Game11PikiKillArg@l
/* 80226AF0 00223A30  3B 61 00 30 */	addi r27, r1, 0x30
/* 80226AF4 00223A34  90 81 00 0C */	stw r4, 0xc(r1)
/* 80226AF8 00223A38  3B 40 00 00 */	li r26, 0
/* 80226AFC 00223A3C  90 01 00 08 */	stw r0, 8(r1)
/* 80226B00 00223A40  48 00 00 18 */	b lbl_80226B18
lbl_80226B04:
/* 80226B04 00223A44  80 7B 00 00 */	lwz r3, 0(r27)
/* 80226B08 00223A48  38 81 00 08 */	addi r4, r1, 8
/* 80226B0C 00223A4C  4B F1 45 E5 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 80226B10 00223A50  3B 7B 00 04 */	addi r27, r27, 4
/* 80226B14 00223A54  3B 5A 00 01 */	addi r26, r26, 1
lbl_80226B18:
/* 80226B18 00223A58  7C 1A F8 00 */	cmpw r26, r31
/* 80226B1C 00223A5C  41 80 FF E8 */	blt lbl_80226B04
/* 80226B20 00223A60  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226B24 00223A64  81 83 00 00 */	lwz r12, 0(r3)
/* 80226B28 00223A68  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226B2C 00223A6C  7D 89 03 A6 */	mtctr r12
/* 80226B30 00223A70  4E 80 04 21 */	bctrl 
/* 80226B34 00223A74  80 6D 91 E0 */	lwz r3, generalEnemyMgr__4Game@sda21(r13)
/* 80226B38 00223A78  28 03 00 00 */	cmplwi r3, 0
/* 80226B3C 00223A7C  41 82 00 20 */	beq lbl_80226B5C
/* 80226B40 00223A80  4B EE 63 CD */	bl killAll__Q24Game15GeneralEnemyMgrFv
/* 80226B44 00223A84  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80226B48 00223A88  80 8D 91 E0 */	lwz r4, generalEnemyMgr__4Game@sda21(r13)
/* 80226B4C 00223A8C  4B F8 F4 69 */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80226B50 00223A90  38 00 00 00 */	li r0, 0
/* 80226B54 00223A94  90 0D 91 E0 */	stw r0, generalEnemyMgr__4Game@sda21(r13)
/* 80226B58 00223A98  90 1E 00 A4 */	stw r0, 0xa4(r30)
lbl_80226B5C:
/* 80226B5C 00223A9C  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226B60 00223AA0  28 03 00 00 */	cmplwi r3, 0
/* 80226B64 00223AA4  41 82 00 08 */	beq lbl_80226B6C
/* 80226B68 00223AA8  4B EF DB 1D */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226B6C:
/* 80226B6C 00223AAC  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226B70 00223AB0  4B F4 66 C9 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226B74 00223AB4  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226B78 00223AB8  4B F3 0C 65 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226B7C 00223ABC  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226B80 00223AC0  4B F3 17 79 */	bl clear__Q24Game11CellPyramidFv
/* 80226B84 00223AC4  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226B88 00223AC8  48 19 4C 0D */	bl killAll__11ParticleMgrFv
/* 80226B8C 00223ACC  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226B90 00223AD0  48 19 4B AD */	bl reset__11ParticleMgrFv
/* 80226B94 00223AD4  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226B98 00223AD8  48 01 B0 79 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226B9C 00223ADC  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226BA0 00223AE0  38 80 00 02 */	li r4, 2
/* 80226BA4 00223AE4  48 02 CE CD */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226BA8 00223AE8  80 7E 00 DC */	lwz r3, 0xdc(r30)
/* 80226BAC 00223AEC  4B DF CB 85 */	bl freeAll__7JKRHeapFv
/* 80226BB0 00223AF0  80 7E 00 DC */	lwz r3, 0xdc(r30)
/* 80226BB4 00223AF4  4B DF CA 01 */	bl destroy__7JKRHeapFv
/* 80226BB8 00223AF8  38 00 00 00 */	li r0, 0
/* 80226BBC 00223AFC  90 1E 00 DC */	stw r0, 0xdc(r30)
lbl_80226BC0:
/* 80226BC0 00223B00  80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 80226BC4 00223B04  4B DF C9 E1 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80226BC8 00223B08  BB 41 06 78 */	lmw r26, 0x678(r1)
/* 80226BCC 00223B0C  80 01 06 94 */	lwz r0, 0x694(r1)
/* 80226BD0 00223B10  7C 08 03 A6 */	mtlr r0
/* 80226BD4 00223B14  38 21 06 90 */	addi r1, r1, 0x690
/* 80226BD8 00223B18  4E 80 00 20 */	blr 

.global clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv
clearHeapB_pellet__Q34Game10SingleGame10ZukanStateFv:
/* 80226BDC 00223B1C  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 80226BE0 00223B20  7C 08 02 A6 */	mflr r0
/* 80226BE4 00223B24  90 01 03 54 */	stw r0, 0x354(r1)
/* 80226BE8 00223B28  BF 41 03 38 */	stmw r26, 0x338(r1)
/* 80226BEC 00223B2C  7C 7A 1B 78 */	mr r26, r3
/* 80226BF0 00223B30  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80226BF4 00223B34  28 00 00 00 */	cmplwi r0, 0
/* 80226BF8 00223B38  41 82 01 3C */	beq lbl_80226D34
/* 80226BFC 00223B3C  80 1A 00 AC */	lwz r0, 0xac(r26)
/* 80226C00 00223B40  28 00 00 00 */	cmplwi r0, 0
/* 80226C04 00223B44  41 82 00 CC */	beq lbl_80226CD0
/* 80226C08 00223B48  38 61 00 08 */	addi r3, r1, 8
/* 80226C0C 00223B4C  3B 60 00 00 */	li r27, 0
/* 80226C10 00223B50  3B E0 00 00 */	li r31, 0
/* 80226C14 00223B54  4B F4 5D 55 */	bl __ct__Q24Game14PelletIteratorFv
/* 80226C18 00223B58  38 61 00 08 */	addi r3, r1, 8
/* 80226C1C 00223B5C  4B F4 5D 65 */	bl first__Q24Game14PelletIteratorFv
/* 80226C20 00223B60  3C 80 80 48 */	lis r4, lbl_80482EDC@ha
/* 80226C24 00223B64  3C 60 80 48 */	lis r3, lbl_80483170@ha
/* 80226C28 00223B68  3B 81 00 18 */	addi r28, r1, 0x18
/* 80226C2C 00223B6C  3B A4 2E DC */	addi r29, r4, lbl_80482EDC@l
/* 80226C30 00223B70  3B C3 31 70 */	addi r30, r3, lbl_80483170@l
/* 80226C34 00223B74  48 00 00 40 */	b lbl_80226C74
lbl_80226C38:
/* 80226C38 00223B78  38 61 00 08 */	addi r3, r1, 8
/* 80226C3C 00223B7C  4B F4 5D 91 */	bl __ml__Q24Game14PelletIteratorFv
/* 80226C40 00223B80  2C 1B 00 C8 */	cmpwi r27, 0xc8
/* 80226C44 00223B84  40 80 00 14 */	bge lbl_80226C58
/* 80226C48 00223B88  7C 7C F9 2E */	stwx r3, r28, r31
/* 80226C4C 00223B8C  3B 7B 00 01 */	addi r27, r27, 1
/* 80226C50 00223B90  3B FF 00 04 */	addi r31, r31, 4
/* 80226C54 00223B94  48 00 00 18 */	b lbl_80226C6C
lbl_80226C58:
/* 80226C58 00223B98  7F A3 EB 78 */	mr r3, r29
/* 80226C5C 00223B9C  7F C5 F3 78 */	mr r5, r30
/* 80226C60 00223BA0  38 80 0C 95 */	li r4, 0xc95
/* 80226C64 00223BA4  4C C6 31 82 */	crclr 6
/* 80226C68 00223BA8  4B E0 39 D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226C6C:
/* 80226C6C 00223BAC  38 61 00 08 */	addi r3, r1, 8
/* 80226C70 00223BB0  4B F4 5D C5 */	bl next__Q24Game14PelletIteratorFv
lbl_80226C74:
/* 80226C74 00223BB4  38 61 00 08 */	addi r3, r1, 8
/* 80226C78 00223BB8  4B F4 5E 7D */	bl isDone__Q24Game14PelletIteratorFv
/* 80226C7C 00223BBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226C80 00223BC0  41 82 FF B8 */	beq lbl_80226C38
/* 80226C84 00223BC4  3B 81 00 18 */	addi r28, r1, 0x18
/* 80226C88 00223BC8  3B A0 00 00 */	li r29, 0
/* 80226C8C 00223BCC  48 00 00 18 */	b lbl_80226CA4
lbl_80226C90:
/* 80226C90 00223BD0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80226C94 00223BD4  38 80 00 00 */	li r4, 0
/* 80226C98 00223BD8  4B F1 44 59 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 80226C9C 00223BDC  3B 9C 00 04 */	addi r28, r28, 4
/* 80226CA0 00223BE0  3B BD 00 01 */	addi r29, r29, 1
lbl_80226CA4:
/* 80226CA4 00223BE4  7C 1D D8 00 */	cmpw r29, r27
/* 80226CA8 00223BE8  41 80 FF E8 */	blt lbl_80226C90
/* 80226CAC 00223BEC  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226CB0 00223BF0  4B F4 65 89 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226CB4 00223BF4  80 6D 93 90 */	lwz r3, dynParticleMgr__4Game@sda21(r13)
/* 80226CB8 00223BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80226CBC 00223BFC  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226CC0 00223C00  7D 89 03 A6 */	mtctr r12
/* 80226CC4 00223C04  4E 80 04 21 */	bctrl 
/* 80226CC8 00223C08  38 00 00 00 */	li r0, 0
/* 80226CCC 00223C0C  90 1A 00 AC */	stw r0, 0xac(r26)
lbl_80226CD0:
/* 80226CD0 00223C10  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226CD4 00223C14  28 03 00 00 */	cmplwi r3, 0
/* 80226CD8 00223C18  41 82 00 08 */	beq lbl_80226CE0
/* 80226CDC 00223C1C  4B EF D9 A9 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226CE0:
/* 80226CE0 00223C20  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226CE4 00223C24  4B F4 65 55 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226CE8 00223C28  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226CEC 00223C2C  4B F3 0A F1 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226CF0 00223C30  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226CF4 00223C34  4B F3 16 05 */	bl clear__Q24Game11CellPyramidFv
/* 80226CF8 00223C38  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226CFC 00223C3C  48 19 4A 99 */	bl killAll__11ParticleMgrFv
/* 80226D00 00223C40  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226D04 00223C44  48 19 4A 39 */	bl reset__11ParticleMgrFv
/* 80226D08 00223C48  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226D0C 00223C4C  48 01 AF 05 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226D10 00223C50  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226D14 00223C54  38 80 00 02 */	li r4, 2
/* 80226D18 00223C58  48 02 CD 59 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226D1C 00223C5C  80 7A 00 DC */	lwz r3, 0xdc(r26)
/* 80226D20 00223C60  4B DF CA 11 */	bl freeAll__7JKRHeapFv
/* 80226D24 00223C64  80 7A 00 DC */	lwz r3, 0xdc(r26)
/* 80226D28 00223C68  4B DF C8 8D */	bl destroy__7JKRHeapFv
/* 80226D2C 00223C6C  38 00 00 00 */	li r0, 0
/* 80226D30 00223C70  90 1A 00 DC */	stw r0, 0xdc(r26)
lbl_80226D34:
/* 80226D34 00223C74  80 7A 00 D8 */	lwz r3, 0xd8(r26)
/* 80226D38 00223C78  4B DF C8 6D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80226D3C 00223C7C  BB 41 03 38 */	lmw r26, 0x338(r1)
/* 80226D40 00223C80  80 01 03 54 */	lwz r0, 0x354(r1)
/* 80226D44 00223C84  7C 08 03 A6 */	mtlr r0
/* 80226D48 00223C88  38 21 03 50 */	addi r1, r1, 0x350
/* 80226D4C 00223C8C  4E 80 00 20 */	blr 

.if version == 1
.global clearHeaps__Q34Game10SingleGame10ZukanStateFv
clearHeaps__Q34Game10SingleGame10ZukanStateFv:
/* 80226D50 00223C90  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 80226D54 00223C94  7C 08 02 A6 */	mflr r0
/* 80226D58 00223C98  3C 80 80 48 */	lis r4, lbl_80482E60@ha
/* 80226D5C 00223C9C  90 01 03 54 */	stw r0, 0x354(r1)
/* 80226D60 00223CA0  BF 61 03 3C */	stmw r27, 0x33c(r1)
/* 80226D64 00223CA4  7C 7F 1B 78 */	mr r31, r3
/* 80226D68 00223CA8  3B 84 2E 60 */	addi r28, r4, lbl_80482E60@l
/* 80226D6C 00223CAC  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226D70 00223CB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80226D74 00223CB4  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226D78 00223CB8  7D 89 03 A6 */	mtctr r12
/* 80226D7C 00223CBC  4E 80 04 21 */	bctrl 
/* 80226D80 00223CC0  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80226D84 00223CC4  28 00 00 00 */	cmplwi r0, 0
/* 80226D88 00223CC8  41 82 00 10 */	beq lbl_80226D98
/* 80226D8C 00223CCC  7F E3 FB 78 */	mr r3, r31
/* 80226D90 00223CD0  4B FF FA 91 */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 80226D94 00223CD4  48 00 01 B0 */	b lbl_80226F44
lbl_80226D98:
/* 80226D98 00223CD8  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 80226D9C 00223CDC  28 03 00 00 */	cmplwi r3, 0
/* 80226DA0 00223CE0  41 82 01 40 */	beq lbl_80226EE0
/* 80226DA4 00223CE4  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80226DA8 00223CE8  28 00 00 00 */	cmplwi r0, 0
/* 80226DAC 00223CEC  41 82 01 28 */	beq lbl_80226ED4
/* 80226DB0 00223CF0  28 03 00 00 */	cmplwi r3, 0
/* 80226DB4 00223CF4  41 82 00 BC */	beq lbl_80226E70
/* 80226DB8 00223CF8  3B 60 00 00 */	li r27, 0
/* 80226DBC 00223CFC  38 61 00 08 */	addi r3, r1, 8
/* 80226DC0 00223D00  7F 7E DB 78 */	mr r30, r27
/* 80226DC4 00223D04  4B F4 5B A5 */	bl __ct__Q24Game14PelletIteratorFv
/* 80226DC8 00223D08  38 61 00 08 */	addi r3, r1, 8
/* 80226DCC 00223D0C  4B F4 5B B5 */	bl first__Q24Game14PelletIteratorFv
/* 80226DD0 00223D10  3B A1 00 18 */	addi r29, r1, 0x18
/* 80226DD4 00223D14  48 00 00 40 */	b lbl_80226E14
lbl_80226DD8:
/* 80226DD8 00223D18  38 61 00 08 */	addi r3, r1, 8
/* 80226DDC 00223D1C  4B F4 5B F1 */	bl __ml__Q24Game14PelletIteratorFv
/* 80226DE0 00223D20  2C 1B 00 C8 */	cmpwi r27, 0xc8
/* 80226DE4 00223D24  40 80 00 14 */	bge lbl_80226DF8
/* 80226DE8 00223D28  7C 7D F1 2E */	stwx r3, r29, r30
/* 80226DEC 00223D2C  3B 7B 00 01 */	addi r27, r27, 1
/* 80226DF0 00223D30  3B DE 00 04 */	addi r30, r30, 4
/* 80226DF4 00223D34  48 00 00 18 */	b lbl_80226E0C
lbl_80226DF8:
/* 80226DF8 00223D38  38 7C 00 7C */	addi r3, r28, 0x7c
/* 80226DFC 00223D3C  38 BC 03 10 */	addi r5, r28, 0x310
/* 80226E00 00223D40  38 80 0C 95 */	li r4, 0xc95
/* 80226E04 00223D44  4C C6 31 82 */	crclr 6
/* 80226E08 00223D48  4B E0 38 39 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226E0C:
/* 80226E0C 00223D4C  38 61 00 08 */	addi r3, r1, 8
/* 80226E10 00223D50  4B F4 5C 25 */	bl next__Q24Game14PelletIteratorFv
lbl_80226E14:
/* 80226E14 00223D54  38 61 00 08 */	addi r3, r1, 8
/* 80226E18 00223D58  4B F4 5C DD */	bl isDone__Q24Game14PelletIteratorFv
/* 80226E1C 00223D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226E20 00223D60  41 82 FF B8 */	beq lbl_80226DD8
/* 80226E24 00223D64  3B C1 00 18 */	addi r30, r1, 0x18
/* 80226E28 00223D68  3B A0 00 00 */	li r29, 0
/* 80226E2C 00223D6C  48 00 00 18 */	b lbl_80226E44
lbl_80226E30:
/* 80226E30 00223D70  80 7E 00 00 */	lwz r3, 0(r30)
/* 80226E34 00223D74  38 80 00 00 */	li r4, 0
/* 80226E38 00223D78  4B F1 42 B9 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 80226E3C 00223D7C  3B DE 00 04 */	addi r30, r30, 4
/* 80226E40 00223D80  3B BD 00 01 */	addi r29, r29, 1
lbl_80226E44:
/* 80226E44 00223D84  7C 1D D8 00 */	cmpw r29, r27
/* 80226E48 00223D88  41 80 FF E8 */	blt lbl_80226E30
/* 80226E4C 00223D8C  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226E50 00223D90  4B F4 63 E9 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226E54 00223D94  80 6D 93 90 */	lwz r3, dynParticleMgr__4Game@sda21(r13)
/* 80226E58 00223D98  81 83 00 00 */	lwz r12, 0(r3)
/* 80226E5C 00223D9C  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226E60 00223DA0  7D 89 03 A6 */	mtctr r12
/* 80226E64 00223DA4  4E 80 04 21 */	bctrl 
/* 80226E68 00223DA8  38 00 00 00 */	li r0, 0
/* 80226E6C 00223DAC  90 1F 00 AC */	stw r0, 0xac(r31)
lbl_80226E70:
/* 80226E70 00223DB0  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226E74 00223DB4  28 03 00 00 */	cmplwi r3, 0
/* 80226E78 00223DB8  41 82 00 08 */	beq lbl_80226E80
/* 80226E7C 00223DBC  4B EF D8 09 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226E80:
/* 80226E80 00223DC0  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226E84 00223DC4  4B F4 63 B5 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226E88 00223DC8  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226E8C 00223DCC  4B F3 09 51 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226E90 00223DD0  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226E94 00223DD4  4B F3 14 65 */	bl clear__Q24Game11CellPyramidFv
/* 80226E98 00223DD8  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226E9C 00223DDC  48 19 48 F9 */	bl killAll__11ParticleMgrFv
/* 80226EA0 00223DE0  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226EA4 00223DE4  48 19 48 99 */	bl reset__11ParticleMgrFv
/* 80226EA8 00223DE8  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226EAC 00223DEC  48 01 AD 65 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226EB0 00223DF0  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226EB4 00223DF4  38 80 00 02 */	li r4, 2
/* 80226EB8 00223DF8  48 02 CB B9 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226EBC 00223DFC  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226EC0 00223E00  4B DF C8 71 */	bl freeAll__7JKRHeapFv
/* 80226EC4 00223E04  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226EC8 00223E08  4B DF C6 ED */	bl destroy__7JKRHeapFv
/* 80226ECC 00223E0C  38 00 00 00 */	li r0, 0
/* 80226ED0 00223E10  90 1F 00 DC */	stw r0, 0xdc(r31)
lbl_80226ED4:
/* 80226ED4 00223E14  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80226ED8 00223E18  4B DF C6 CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 80226EDC 00223E1C  48 00 00 68 */	b lbl_80226F44
lbl_80226EE0:
/* 80226EE0 00223E20  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226EE4 00223E24  28 03 00 00 */	cmplwi r3, 0
/* 80226EE8 00223E28  41 82 00 08 */	beq lbl_80226EF0
/* 80226EEC 00223E2C  4B EF D7 99 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226EF0:
/* 80226EF0 00223E30  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226EF4 00223E34  4B F4 63 45 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226EF8 00223E38  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226EFC 00223E3C  4B F3 08 E1 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226F00 00223E40  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226F04 00223E44  4B F3 13 F5 */	bl clear__Q24Game11CellPyramidFv
/* 80226F08 00223E48  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226F0C 00223E4C  48 19 48 89 */	bl killAll__11ParticleMgrFv
/* 80226F10 00223E50  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226F14 00223E54  48 19 48 29 */	bl reset__11ParticleMgrFv
/* 80226F18 00223E58  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226F1C 00223E5C  48 01 AC F5 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226F20 00223E60  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226F24 00223E64  38 80 00 02 */	li r4, 2
/* 80226F28 00223E68  48 02 CB 49 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226F2C 00223E6C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226F30 00223E70  4B DF C8 01 */	bl freeAll__7JKRHeapFv
/* 80226F34 00223E74  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226F38 00223E78  4B DF C6 7D */	bl destroy__7JKRHeapFv
/* 80226F3C 00223E7C  38 00 00 00 */	li r0, 0
/* 80226F40 00223E80  90 1F 00 DC */	stw r0, 0xdc(r31)
lbl_80226F44:
/* 80226F44 00223E84  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80226F48 00223E88  28 00 00 00 */	cmplwi r0, 0
/* 80226F4C 00223E8C  40 82 00 18 */	bne lbl_80226F64
/* 80226F50 00223E90  38 7C 01 90 */	addi r3, r28, 0x190
/* 80226F54 00223E94  38 BC 00 90 */	addi r5, r28, 0x90
/* 80226F58 00223E98  38 80 01 D3 */	li r4, 0x1d3
/* 80226F5C 00223E9C  4C C6 31 82 */	crclr 6
/* 80226F60 00223EA0  4B E0 36 E1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226F64:
/* 80226F64 00223EA4  83 6D 98 80 */	lwz r27, spSceneMgr__8PSSystem@sda21(r13)
/* 80226F68 00223EA8  28 1B 00 00 */	cmplwi r27, 0
/* 80226F6C 00223EAC  40 82 00 18 */	bne lbl_80226F84
/* 80226F70 00223EB0  38 7C 01 90 */	addi r3, r28, 0x190
/* 80226F74 00223EB4  38 BC 00 90 */	addi r5, r28, 0x90
/* 80226F78 00223EB8  38 80 01 DC */	li r4, 0x1dc
/* 80226F7C 00223EBC  4C C6 31 82 */	crclr 6
/* 80226F80 00223EC0  4B E0 36 C1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226F84:
/* 80226F84 00223EC4  7F 63 DB 78 */	mr r3, r27
/* 80226F88 00223EC8  48 11 B2 59 */	bl deleteCurrentScene__Q28PSSystem8SceneMgrFv
/* 80226F8C 00223ECC  80 6D 91 BC */	lwz r3, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80226F90 00223ED0  28 03 00 00 */	cmplwi r3, 0
/* 80226F94 00223ED4  41 82 00 18 */	beq lbl_80226FAC
/* 80226F98 00223ED8  81 83 00 28 */	lwz r12, 0x28(r3)
/* 80226F9C 00223EDC  38 80 00 01 */	li r4, 1
/* 80226FA0 00223EE0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80226FA4 00223EE4  7D 89 03 A6 */	mtctr r12
/* 80226FA8 00223EE8  4E 80 04 21 */	bctrl 
lbl_80226FAC:
/* 80226FAC 00223EEC  38 00 00 00 */	li r0, 0
/* 80226FB0 00223EF0  90 0D 91 BC */	stw r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80226FB4 00223EF4  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80226FB8 00223EF8  28 00 00 00 */	cmplwi r0, 0
/* 80226FBC 00223EFC  41 82 00 E0 */	beq lbl_8022709C
/* 80226FC0 00223F00  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80226FC4 00223F04  4B F2 41 AD */	bl restoreFBTexture__Q24Game15BaseGameSectionFv
/* 80226FC8 00223F08  80 8D 91 E0 */	lwz r4, generalEnemyMgr__4Game@sda21(r13)
/* 80226FCC 00223F0C  28 04 00 00 */	cmplwi r4, 0
/* 80226FD0 00223F10  41 82 00 14 */	beq lbl_80226FE4
/* 80226FD4 00223F14  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80226FD8 00223F18  4B F8 EF DD */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80226FDC 00223F1C  38 00 00 00 */	li r0, 0
/* 80226FE0 00223F20  90 0D 91 E0 */	stw r0, generalEnemyMgr__4Game@sda21(r13)
lbl_80226FE4:
/* 80226FE4 00223F24  80 8D 93 08 */	lwz r4, mapMgr__4Game@sda21(r13)
/* 80226FE8 00223F28  28 04 00 00 */	cmplwi r4, 0
/* 80226FEC 00223F2C  41 82 00 08 */	beq lbl_80226FF4
/* 80226FF0 00223F30  80 84 00 00 */	lwz r4, 0(r4)
lbl_80226FF4:
/* 80226FF4 00223F34  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80226FF8 00223F38  4B F8 EF BD */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80226FFC 00223F3C  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80227000 00223F40  80 63 01 28 */	lwz r3, 0x148(r3)
/* 80227004 00223F44  48 1E A5 CD */	bl del__5CNodeFv
/* 80227008 00223F48  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8022700C 00223F4C  38 00 00 00 */	li r0, 0
/* 80227010 00223F50  90 03 01 28 */	stw r0, 0x148(r3)
/* 80227014 00223F54  90 0D 93 08 */	stw r0, mapMgr__4Game@sda21(r13)
/* 80227018 00223F58  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8022701C 00223F5C  48 1E A5 B5 */	bl del__5CNodeFv
/* 80227020 00223F60  38 00 00 00 */	li r0, 0
/* 80227024 00223F64  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80227028 00223F68  80 6D 96 A0 */	lwz r3, cameraMgr__4Game@sda21(r13)
/* 8022702C 00223F6C  48 1E A5 A5 */	bl del__5CNodeFv
/* 80227030 00223F70  38 00 00 00 */	li r0, 0
/* 80227034 00223F74  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80227038 00223F78  90 0D 96 A0 */	stw r0, cameraMgr__4Game@sda21(r13)
/* 8022703C 00223F7C  48 1E A5 95 */	bl del__5CNodeFv
/* 80227040 00223F80  38 00 00 00 */	li r0, 0
/* 80227044 00223F84  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80227048 00223F88  90 0D 96 80 */	stw r0, shadowMgr__4Game@sda21(r13)
/* 8022704C 00223F8C  48 1E A5 85 */	bl del__5CNodeFv
/* 80227050 00223F90  38 00 00 00 */	li r0, 0
/* 80227054 00223F94  90 0D 96 A8 */	stw r0, rumbleMgr__4Game@sda21(r13)
/* 80227058 00223F98  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8022705C 00223F9C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80227060 00223FA0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80227064 00223FA4  48 1F E5 49 */	bl deleteViewports__8GraphicsFv
/* 80227068 00223FA8  38 00 00 00 */	li r0, 0
/* 8022706C 00223FAC  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 80227070 00223FB0  90 0D 92 C8 */	stw r0, cellMgr__4Game@sda21(r13)
/* 80227074 00223FB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80227078 00223FB8  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8022707C 00223FBC  7D 89 03 A6 */	mtctr r12
/* 80227080 00223FC0  4E 80 04 21 */	bctrl 
/* 80227084 00223FC4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80227088 00223FC8  48 1E A5 49 */	bl del__5CNodeFv
/* 8022708C 00223FCC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80227090 00223FD0  48 1E A5 41 */	bl del__5CNodeFv
/* 80227094 00223FD4  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80227098 00223FD8  4B DF C5 1D */	bl destroy__7JKRHeapFv
lbl_8022709C:
/* 8022709C 00223FDC  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802270A0 00223FE0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802270A4 00223FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802270A8 00223FE8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802270AC 00223FEC  7D 89 03 A6 */	mtctr r12
/* 802270B0 00223FF0  4E 80 04 21 */	bctrl 
/* 802270B4 00223FF4  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 802270B8 00223FF8  28 00 00 00 */	cmplwi r0, 0
/* 802270BC 00223FFC  41 82 00 1C */	beq lbl_802270D8
/* 802270C0 00224000  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 802270C4 00224004  4B DF C4 F1 */	bl destroy__7JKRHeapFv
/* 802270C8 00224008  38 00 00 00 */	li r0, 0
/* 802270CC 0022400C  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 802270D0 00224010  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 802270D4 00224014  4B DF C4 E1 */	bl destroy__7JKRHeapFv
lbl_802270D8:
/* 802270D8 00224018  38 00 00 00 */	li r0, 0
/* 802270DC 0022401C  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802270E0 00224020  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 802270E4 00224024  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 802270E8 00224028  BB 61 03 3C */	lmw r27, 0x33c(r1)
/* 802270EC 0022402C  80 01 03 54 */	lwz r0, 0x354(r1)
/* 802270F0 00224030  7C 08 03 A6 */	mtlr r0
/* 802270F4 00224034  38 21 03 50 */	addi r1, r1, 0x350
/* 802270F8 00224038  4E 80 00 20 */	blr 
.else
.global clearHeaps__Q34Game10SingleGame10ZukanStateFv
clearHeaps__Q34Game10SingleGame10ZukanStateFv:
/* 80226D50 00223C90  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 80226D54 00223C94  7C 08 02 A6 */	mflr r0
/* 80226D58 00223C98  3C 80 80 48 */	lis r4, lbl_80482E60@ha
/* 80226D5C 00223C9C  90 01 03 54 */	stw r0, 0x354(r1)
/* 80226D60 00223CA0  BF 61 03 3C */	stmw r27, 0x33c(r1)
/* 80226D64 00223CA4  7C 7F 1B 78 */	mr r31, r3
/* 80226D68 00223CA8  3B 84 2E 60 */	addi r28, r4, lbl_80482E60@l
/* 80226D6C 00223CAC  80 6D 92 F4 */	lwz r3, pikiMgr__4Game@sda21(r13)
/* 80226D70 00223CB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80226D74 00223CB4  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226D78 00223CB8  7D 89 03 A6 */	mtctr r12
/* 80226D7C 00223CBC  4E 80 04 21 */	bctrl 
/* 80226D80 00223CC0  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80226D84 00223CC4  28 00 00 00 */	cmplwi r0, 0
/* 80226D88 00223CC8  41 82 00 10 */	beq lbl_80226D98
/* 80226D8C 00223CCC  7F E3 FB 78 */	mr r3, r31
/* 80226D90 00223CD0  4B FF FA 91 */	bl clearHeapB_teki__Q34Game10SingleGame10ZukanStateFv
/* 80226D94 00223CD4  48 00 01 B0 */	b lbl_80226F44
lbl_80226D98:
/* 80226D98 00223CD8  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 80226D9C 00223CDC  28 03 00 00 */	cmplwi r3, 0
/* 80226DA0 00223CE0  41 82 01 40 */	beq lbl_80226EE0
/* 80226DA4 00223CE4  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80226DA8 00223CE8  28 00 00 00 */	cmplwi r0, 0
/* 80226DAC 00223CEC  41 82 01 28 */	beq lbl_80226ED4
/* 80226DB0 00223CF0  28 03 00 00 */	cmplwi r3, 0
/* 80226DB4 00223CF4  41 82 00 BC */	beq lbl_80226E70
/* 80226DB8 00223CF8  3B 60 00 00 */	li r27, 0
/* 80226DBC 00223CFC  38 61 00 08 */	addi r3, r1, 8
/* 80226DC0 00223D00  7F 7E DB 78 */	mr r30, r27
/* 80226DC4 00223D04  4B F4 5B A5 */	bl __ct__Q24Game14PelletIteratorFv
/* 80226DC8 00223D08  38 61 00 08 */	addi r3, r1, 8
/* 80226DCC 00223D0C  4B F4 5B B5 */	bl first__Q24Game14PelletIteratorFv
/* 80226DD0 00223D10  3B A1 00 18 */	addi r29, r1, 0x18
/* 80226DD4 00223D14  48 00 00 40 */	b lbl_80226E14
lbl_80226DD8:
/* 80226DD8 00223D18  38 61 00 08 */	addi r3, r1, 8
/* 80226DDC 00223D1C  4B F4 5B F1 */	bl __ml__Q24Game14PelletIteratorFv
/* 80226DE0 00223D20  2C 1B 00 C8 */	cmpwi r27, 0xc8
/* 80226DE4 00223D24  40 80 00 14 */	bge lbl_80226DF8
/* 80226DE8 00223D28  7C 7D F1 2E */	stwx r3, r29, r30
/* 80226DEC 00223D2C  3B 7B 00 01 */	addi r27, r27, 1
/* 80226DF0 00223D30  3B DE 00 04 */	addi r30, r30, 4
/* 80226DF4 00223D34  48 00 00 18 */	b lbl_80226E0C
lbl_80226DF8:
/* 80226DF8 00223D38  38 7C 00 7C */	addi r3, r28, 0x7c
/* 80226DFC 00223D3C  38 BC 03 10 */	addi r5, r28, 0x310
/* 80226E00 00223D40  38 80 0C 95 */	li r4, 0xc95
/* 80226E04 00223D44  4C C6 31 82 */	crclr 6
/* 80226E08 00223D48  4B E0 38 39 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226E0C:
/* 80226E0C 00223D4C  38 61 00 08 */	addi r3, r1, 8
/* 80226E10 00223D50  4B F4 5C 25 */	bl next__Q24Game14PelletIteratorFv
lbl_80226E14:
/* 80226E14 00223D54  38 61 00 08 */	addi r3, r1, 8
/* 80226E18 00223D58  4B F4 5C DD */	bl isDone__Q24Game14PelletIteratorFv
/* 80226E1C 00223D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80226E20 00223D60  41 82 FF B8 */	beq lbl_80226DD8
/* 80226E24 00223D64  3B C1 00 18 */	addi r30, r1, 0x18
/* 80226E28 00223D68  3B A0 00 00 */	li r29, 0
/* 80226E2C 00223D6C  48 00 00 18 */	b lbl_80226E44
lbl_80226E30:
/* 80226E30 00223D70  80 7E 00 00 */	lwz r3, 0(r30)
/* 80226E34 00223D74  38 80 00 00 */	li r4, 0
/* 80226E38 00223D78  4B F1 42 B9 */	bl kill__Q24Game8CreatureFPQ24Game15CreatureKillArg
/* 80226E3C 00223D7C  3B DE 00 04 */	addi r30, r30, 4
/* 80226E40 00223D80  3B BD 00 01 */	addi r29, r29, 1
lbl_80226E44:
/* 80226E44 00223D84  7C 1D D8 00 */	cmpw r29, r27
/* 80226E48 00223D88  41 80 FF E8 */	blt lbl_80226E30
/* 80226E4C 00223D8C  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226E50 00223D90  4B F4 63 E9 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226E54 00223D94  80 6D 93 90 */	lwz r3, dynParticleMgr__4Game@sda21(r13)
/* 80226E58 00223D98  81 83 00 00 */	lwz r12, 0(r3)
/* 80226E5C 00223D9C  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 80226E60 00223DA0  7D 89 03 A6 */	mtctr r12
/* 80226E64 00223DA4  4E 80 04 21 */	bctrl 
/* 80226E68 00223DA8  38 00 00 00 */	li r0, 0
/* 80226E6C 00223DAC  90 1F 00 AC */	stw r0, 0xac(r31)
lbl_80226E70:
/* 80226E70 00223DB0  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226E74 00223DB4  28 03 00 00 */	cmplwi r3, 0
/* 80226E78 00223DB8  41 82 00 08 */	beq lbl_80226E80
/* 80226E7C 00223DBC  4B EF D8 09 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226E80:
/* 80226E80 00223DC0  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226E84 00223DC4  4B F4 63 B5 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226E88 00223DC8  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226E8C 00223DCC  4B F3 09 51 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226E90 00223DD0  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226E94 00223DD4  4B F3 14 65 */	bl clear__Q24Game11CellPyramidFv
/* 80226E98 00223DD8  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226E9C 00223DDC  48 19 48 F9 */	bl killAll__11ParticleMgrFv
/* 80226EA0 00223DE0  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226EA4 00223DE4  48 19 48 99 */	bl reset__11ParticleMgrFv
/* 80226EA8 00223DE8  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226EAC 00223DEC  48 01 AD 65 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226EB0 00223DF0  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226EB4 00223DF4  38 80 00 02 */	li r4, 2
/* 80226EB8 00223DF8  48 02 CB B9 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226EBC 00223DFC  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226EC0 00223E00  4B DF C8 71 */	bl freeAll__7JKRHeapFv
/* 80226EC4 00223E04  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226EC8 00223E08  4B DF C6 ED */	bl destroy__7JKRHeapFv
/* 80226ECC 00223E0C  38 00 00 00 */	li r0, 0
/* 80226ED0 00223E10  90 1F 00 DC */	stw r0, 0xdc(r31)
lbl_80226ED4:
/* 80226ED4 00223E14  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80226ED8 00223E18  4B DF C6 CD */	bl becomeCurrentHeap__7JKRHeapFv
/* 80226EDC 00223E1C  48 00 00 68 */	b lbl_80226F44
lbl_80226EE0:
/* 80226EE0 00223E20  80 6D 91 D8 */	lwz r3, farmMgr__Q24Game4Farm@sda21(r13)
/* 80226EE4 00223E24  28 03 00 00 */	cmplwi r3, 0
/* 80226EE8 00223E28  41 82 00 08 */	beq lbl_80226EF0
/* 80226EEC 00223E2C  4B EF D7 99 */	bl initAllFarmObjectNodes__Q34Game4Farm7FarmMgrFv
lbl_80226EF0:
/* 80226EF0 00223E30  80 6D 93 20 */	lwz r3, pelletMgr__4Game@sda21(r13)
/* 80226EF4 00223E34  4B F4 63 45 */	bl resetMgrs__Q24Game9PelletMgrFv
/* 80226EF8 00223E38  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226EFC 00223E3C  4B F3 08 E1 */	bl clearAllCollBuffer__Q24Game11CellPyramidFv
/* 80226F00 00223E40  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 80226F04 00223E44  4B F3 13 F5 */	bl clear__Q24Game11CellPyramidFv
/* 80226F08 00223E48  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226F0C 00223E4C  48 19 48 89 */	bl killAll__11ParticleMgrFv
/* 80226F10 00223E50  80 6D 9A 18 */	lwz r3, particleMgr@sda21(r13)
/* 80226F14 00223E54  48 19 48 29 */	bl reset__11ParticleMgrFv
/* 80226F18 00223E58  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80226F1C 00223E5C  48 01 AC F5 */	bl killAll__Q24Game9ShadowMgrFv
/* 80226F20 00223E60  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80226F24 00223E64  38 80 00 02 */	li r4, 2
/* 80226F28 00223E68  48 02 CB 49 */	bl stopRumble__Q24Game9RumbleMgrFi
/* 80226F2C 00223E6C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226F30 00223E70  4B DF C8 01 */	bl freeAll__7JKRHeapFv
/* 80226F34 00223E74  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80226F38 00223E78  4B DF C6 7D */	bl destroy__7JKRHeapFv
/* 80226F3C 00223E7C  38 00 00 00 */	li r0, 0
/* 80226F40 00223E80  90 1F 00 DC */	stw r0, 0xdc(r31)
lbl_80226F44:
/* 80226F44 00223E84  80 0D 98 80 */	lwz r0, spSceneMgr__8PSSystem@sda21(r13)
/* 80226F48 00223E88  28 00 00 00 */	cmplwi r0, 0
/* 80226F4C 00223E8C  40 82 00 18 */	bne lbl_80226F64
/* 80226F50 00223E90  38 7C 01 90 */	addi r3, r28, 0x190
/* 80226F54 00223E94  38 BC 00 90 */	addi r5, r28, 0x90
/* 80226F58 00223E98  38 80 01 D3 */	li r4, 0x1d3
/* 80226F5C 00223E9C  4C C6 31 82 */	crclr 6
/* 80226F60 00223EA0  4B E0 36 E1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226F64:
/* 80226F64 00223EA4  83 6D 98 80 */	lwz r27, spSceneMgr__8PSSystem@sda21(r13)
/* 80226F68 00223EA8  28 1B 00 00 */	cmplwi r27, 0
/* 80226F6C 00223EAC  40 82 00 18 */	bne lbl_80226F84
/* 80226F70 00223EB0  38 7C 01 90 */	addi r3, r28, 0x190
/* 80226F74 00223EB4  38 BC 00 90 */	addi r5, r28, 0x90
/* 80226F78 00223EB8  38 80 01 DC */	li r4, 0x1dc
/* 80226F7C 00223EBC  4C C6 31 82 */	crclr 6
/* 80226F80 00223EC0  4B E0 36 C1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80226F84:
/* 80226F84 00223EC4  7F 63 DB 78 */	mr r3, r27
/* 80226F88 00223EC8  48 11 B2 59 */	bl deleteCurrentScene__Q28PSSystem8SceneMgrFv
/* 80226F8C 00223ECC  80 6D 91 BC */	lwz r3, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80226F90 00223ED0  28 03 00 00 */	cmplwi r3, 0
/* 80226F94 00223ED4  41 82 00 18 */	beq lbl_80226FAC
/* 80226F98 00223ED8  81 83 00 28 */	lwz r12, 0x28(r3)
/* 80226F9C 00223EDC  38 80 00 01 */	li r4, 1
/* 80226FA0 00223EE0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80226FA4 00223EE4  7D 89 03 A6 */	mtctr r12
/* 80226FA8 00223EE8  4E 80 04 21 */	bctrl 
lbl_80226FAC:
/* 80226FAC 00223EEC  38 00 00 00 */	li r0, 0
/* 80226FB0 00223EF0  90 0D 91 BC */	stw r0, "sInstance__Q28PSSystem28SingletonBase<Q23PSM6ObjMgr>"@sda21(r13)
/* 80226FB4 00223EF4  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80226FB8 00223EF8  28 00 00 00 */	cmplwi r0, 0
/* 80226FBC 00223EFC  41 82 00 E0 */	beq lbl_8022709C
/* 80226FC0 00223F00  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80226FC4 00223F04  4B F2 41 AD */	bl restoreFBTexture__Q24Game15BaseGameSectionFv
/* 80226FC8 00223F08  80 8D 91 E0 */	lwz r4, generalEnemyMgr__4Game@sda21(r13)
/* 80226FCC 00223F0C  28 04 00 00 */	cmplwi r4, 0
/* 80226FD0 00223F10  41 82 00 14 */	beq lbl_80226FE4
/* 80226FD4 00223F14  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80226FD8 00223F18  4B F8 EF DD */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80226FDC 00223F1C  38 00 00 00 */	li r0, 0
/* 80226FE0 00223F20  90 0D 91 E0 */	stw r0, generalEnemyMgr__4Game@sda21(r13)
lbl_80226FE4:
/* 80226FE4 00223F24  80 8D 93 08 */	lwz r4, mapMgr__4Game@sda21(r13)
/* 80226FE8 00223F28  28 04 00 00 */	cmplwi r4, 0
/* 80226FEC 00223F2C  41 82 00 08 */	beq lbl_80226FF4
/* 80226FF0 00223F30  80 84 00 00 */	lwz r4, 0(r4)
lbl_80226FF4:
/* 80226FF4 00223F34  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80226FF8 00223F38  4B F8 EF BD */	bl detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
/* 80226FFC 00223F3C  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80227000 00223F40  80 63 01 28 */	lwz r3, 0x128(r3)
/* 80227004 00223F44  48 1E A5 CD */	bl del__5CNodeFv
/* 80227008 00223F48  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8022700C 00223F4C  38 00 00 00 */	li r0, 0
/* 80227010 00223F50  90 03 01 28 */	stw r0, 0x128(r3)
/* 80227014 00223F54  90 0D 93 08 */	stw r0, mapMgr__4Game@sda21(r13)
/* 80227018 00223F58  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8022701C 00223F5C  48 1E A5 B5 */	bl del__5CNodeFv
/* 80227020 00223F60  38 00 00 00 */	li r0, 0
/* 80227024 00223F64  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80227028 00223F68  80 6D 96 A0 */	lwz r3, cameraMgr__4Game@sda21(r13)
/* 8022702C 00223F6C  48 1E A5 A5 */	bl del__5CNodeFv
/* 80227030 00223F70  38 00 00 00 */	li r0, 0
/* 80227034 00223F74  80 6D 96 80 */	lwz r3, shadowMgr__4Game@sda21(r13)
/* 80227038 00223F78  90 0D 96 A0 */	stw r0, cameraMgr__4Game@sda21(r13)
/* 8022703C 00223F7C  48 1E A5 95 */	bl del__5CNodeFv
/* 80227040 00223F80  38 00 00 00 */	li r0, 0
/* 80227044 00223F84  80 6D 96 A8 */	lwz r3, rumbleMgr__4Game@sda21(r13)
/* 80227048 00223F88  90 0D 96 80 */	stw r0, shadowMgr__4Game@sda21(r13)
/* 8022704C 00223F8C  48 1E A5 85 */	bl del__5CNodeFv
/* 80227050 00223F90  38 00 00 00 */	li r0, 0
/* 80227054 00223F94  90 0D 96 A8 */	stw r0, rumbleMgr__4Game@sda21(r13)
/* 80227058 00223F98  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8022705C 00223F9C  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80227060 00223FA0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80227064 00223FA4  48 1F E5 49 */	bl deleteViewports__8GraphicsFv
/* 80227068 00223FA8  38 00 00 00 */	li r0, 0
/* 8022706C 00223FAC  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 80227070 00223FB0  90 0D 92 C8 */	stw r0, cellMgr__4Game@sda21(r13)
/* 80227074 00223FB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80227078 00223FB8  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8022707C 00223FBC  7D 89 03 A6 */	mtctr r12
/* 80227080 00223FC0  4E 80 04 21 */	bctrl 
/* 80227084 00223FC4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80227088 00223FC8  48 1E A5 49 */	bl del__5CNodeFv
/* 8022708C 00223FCC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80227090 00223FD0  48 1E A5 41 */	bl del__5CNodeFv
/* 80227094 00223FD4  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80227098 00223FD8  4B DF C5 1D */	bl destroy__7JKRHeapFv
lbl_8022709C:
/* 8022709C 00223FDC  80 6D 9A A0 */	lwz r3, gGame2DMgr__6Screen@sda21(r13)
/* 802270A0 00223FE0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802270A4 00223FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802270A8 00223FE8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802270AC 00223FEC  7D 89 03 A6 */	mtctr r12
/* 802270B0 00223FF0  4E 80 04 21 */	bctrl 
/* 802270B4 00223FF4  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 802270B8 00223FF8  28 00 00 00 */	cmplwi r0, 0
/* 802270BC 00223FFC  41 82 00 1C */	beq lbl_802270D8
/* 802270C0 00224000  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 802270C4 00224004  4B DF C4 F1 */	bl destroy__7JKRHeapFv
/* 802270C8 00224008  38 00 00 00 */	li r0, 0
/* 802270CC 0022400C  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 802270D0 00224010  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 802270D4 00224014  4B DF C4 E1 */	bl destroy__7JKRHeapFv
lbl_802270D8:
/* 802270D8 00224018  38 00 00 00 */	li r0, 0
/* 802270DC 0022401C  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802270E0 00224020  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 802270E4 00224024  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 802270E8 00224028  BB 61 03 3C */	lmw r27, 0x33c(r1)
/* 802270EC 0022402C  80 01 03 54 */	lwz r0, 0x354(r1)
/* 802270F0 00224030  7C 08 03 A6 */	mtlr r0
/* 802270F4 00224034  38 21 03 50 */	addi r1, r1, 0x350
/* 802270F8 00224038  4E 80 00 20 */	blr 
.endif

.global cleanup__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection
cleanup__Q34Game10SingleGame10ZukanStateFPQ24Game17SingleGameSection:
/* 802270FC 0022403C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227100 00224040  7C 08 02 A6 */	mflr r0
/* 80227104 00224044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227108 00224048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022710C 0022404C  7C 7F 1B 78 */	mr r31, r3
/* 80227110 00224050  80 8D 9A A0 */	lwz r4, gGame2DMgr__6Screen@sda21(r13)
/* 80227114 00224054  80 64 00 18 */	lwz r3, 0x18(r4)
/* 80227118 00224058  81 83 00 00 */	lwz r12, 0(r3)
/* 8022711C 0022405C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80227120 00224060  7D 89 03 A6 */	mtctr r12
/* 80227124 00224064  4E 80 04 21 */	bctrl 
/* 80227128 00224068  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 8022712C 0022406C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80227130 00224070  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80227134 00224074  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80227138 00224078  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 8022713C 0022407C  48 19 26 79 */	bl killAll__14TParticle2dMgrFv
/* 80227140 00224080  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80227144 00224084  38 00 00 00 */	li r0, 0
/* 80227148 00224088  C0 02 BD BC */	lfs f0, lbl_8051A11C@sda21(r2)
/* 8022714C 0022408C  90 03 00 44 */	stw r0, 0x44(r3)
/* 80227150 00224090  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 80227154 00224094  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80227158 00224098  D0 03 02 1C */	stfs f0, 0x21c(r3)
/* 8022715C 0022409C  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80227160 002240A0  4B DF C4 45 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80227164 002240A4  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80227168 002240A8  4B DF C6 4D */	bl getFreeSize__7JKRHeapFv
/* 8022716C 002240AC  80 0D 95 D0 */	lwz r0, sParentHeapFreeSize_1@sda21(r13)
/* 80227170 002240B0  7C 00 18 00 */	cmpw r0, r3
/* 80227174 002240B4  41 82 00 1C */	beq lbl_80227190
/* 80227178 002240B8  3C 60 80 48 */	lis r3, lbl_80482EDC@ha
/* 8022717C 002240BC  38 80 0D 12 */	li r4, 0xd12
/* 80227180 002240C0  38 63 2E DC */	addi r3, r3, lbl_80482EDC@l
/* 80227184 002240C4  38 A2 BE C4 */	addi r5, r2, lbl_8051A224@sda21
/* 80227188 002240C8  4C C6 31 82 */	crclr 6
/* 8022718C 002240CC  4B E0 34 B5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80227190:
/* 80227190 002240D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227194 002240D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227198 002240D8  7C 08 03 A6 */	mtlr r0
/* 8022719C 002240DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802271A0 002240E0  4E 80 00 20 */	blr 

.global getSize__Q28Morimura19DispMemberZukanItemFv
getSize__Q28Morimura19DispMemberZukanItemFv:
/* 802271A4 002240E4  38 60 00 20 */	li r3, 0x20
/* 802271A8 002240E8  4E 80 00 20 */	blr 

.global getOwnerID__Q28Morimura19DispMemberZukanItemFv
getOwnerID__Q28Morimura19DispMemberZukanItemFv:
/* 802271AC 002240EC  3C 60 4D 52 */	lis r3, 0x4D524D52@ha
/* 802271B0 002240F0  38 63 4D 52 */	addi r3, r3, 0x4D524D52@l
/* 802271B4 002240F4  4E 80 00 20 */	blr 

.global getMemberID__Q28Morimura19DispMemberZukanItemFv
getMemberID__Q28Morimura19DispMemberZukanItemFv:
/* 802271B8 002240F8  3C 80 49 54 */	lis r4, 0x4954454D@ha
/* 802271BC 002240FC  38 60 00 44 */	li r3, 0x44
/* 802271C0 00224100  38 84 45 4D */	addi r4, r4, 0x4954454D@l
/* 802271C4 00224104  4E 80 00 20 */	blr 

.global getSize__Q28Morimura20DispMemberZukanEnemyFv
getSize__Q28Morimura20DispMemberZukanEnemyFv:
/* 802271C8 00224108  38 60 00 20 */	li r3, 0x20
/* 802271CC 0022410C  4E 80 00 20 */	blr 

.global getOwnerID__Q28Morimura20DispMemberZukanEnemyFv
getOwnerID__Q28Morimura20DispMemberZukanEnemyFv:
/* 802271D0 00224110  3C 60 4D 52 */	lis r3, 0x4D524D52@ha
/* 802271D4 00224114  38 63 4D 52 */	addi r3, r3, 0x4D524D52@l
/* 802271D8 00224118  4E 80 00 20 */	blr 

.global getMemberID__Q28Morimura20DispMemberZukanEnemyFv
getMemberID__Q28Morimura20DispMemberZukanEnemyFv:
/* 802271DC 0022411C  3C 80 4E 45 */	lis r4, 0x4E454D59@ha
/* 802271E0 00224120  38 60 44 45 */	li r3, 0x4445
/* 802271E4 00224124  38 84 4D 59 */	addi r4, r4, 0x4E454D59@l
/* 802271E8 00224128  4E 80 00 20 */	blr 

.global __dt__Q34Game15IllustratedBook6CameraFv
__dt__Q34Game15IllustratedBook6CameraFv:
/* 802271EC 0022412C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802271F0 00224130  7C 08 02 A6 */	mflr r0
/* 802271F4 00224134  90 01 00 14 */	stw r0, 0x14(r1)
/* 802271F8 00224138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802271FC 0022413C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80227200 00224140  93 C1 00 08 */	stw r30, 8(r1)
/* 80227204 00224144  7C 9E 23 78 */	mr r30, r4
/* 80227208 00224148  41 82 00 98 */	beq lbl_802272A0
/* 8022720C 0022414C  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook6Camera@ha
/* 80227210 00224150  38 04 0C 3C */	addi r0, r4, __vt__Q34Game15IllustratedBook6Camera@l
/* 80227214 00224154  90 1F 00 00 */	stw r0, 0(r31)
/* 80227218 00224158  41 82 00 78 */	beq lbl_80227290
/* 8022721C 0022415C  3C 80 80 4F */	lis r4, __vt__12LookAtCamera@ha
/* 80227220 00224160  38 04 B7 A0 */	addi r0, r4, __vt__12LookAtCamera@l
/* 80227224 00224164  90 1F 00 00 */	stw r0, 0(r31)
/* 80227228 00224168  41 82 00 68 */	beq lbl_80227290
/* 8022722C 0022416C  3C 80 80 4F */	lis r4, __vt__6Camera@ha
/* 80227230 00224170  38 04 B8 20 */	addi r0, r4, __vt__6Camera@l
/* 80227234 00224174  90 1F 00 00 */	stw r0, 0(r31)
/* 80227238 00224178  41 82 00 58 */	beq lbl_80227290
/* 8022723C 0022417C  3C 80 80 4F */	lis r4, __vt__11CullFrustum@ha
/* 80227240 00224180  38 04 B8 9C */	addi r0, r4, __vt__11CullFrustum@l
/* 80227244 00224184  90 1F 00 00 */	stw r0, 0(r31)
/* 80227248 00224188  41 82 00 48 */	beq lbl_80227290
/* 8022724C 0022418C  3C 80 80 4B */	lis r4, __vt__9CullPlane@ha
/* 80227250 00224190  38 04 0E 94 */	addi r0, r4, __vt__9CullPlane@l
/* 80227254 00224194  90 1F 00 00 */	stw r0, 0(r31)
/* 80227258 00224198  41 82 00 38 */	beq lbl_80227290
/* 8022725C 0022419C  3C 80 80 4B */	lis r4, "__vt__22ArrayContainer<5Plane>"@ha
/* 80227260 002241A0  38 04 0E 4C */	addi r0, r4, "__vt__22ArrayContainer<5Plane>"@l
/* 80227264 002241A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80227268 002241A8  41 82 00 28 */	beq lbl_80227290
/* 8022726C 002241AC  3C 80 80 4B */	lis r4, "__vt__17Container<5Plane>"@ha
/* 80227270 002241B0  38 04 0E 20 */	addi r0, r4, "__vt__17Container<5Plane>"@l
/* 80227274 002241B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80227278 002241B8  41 82 00 18 */	beq lbl_80227290
/* 8022727C 002241BC  3C A0 80 4B */	lis r5, __vt__16GenericContainer@ha
/* 80227280 002241C0  38 80 00 00 */	li r4, 0
/* 80227284 002241C4  38 05 AC DC */	addi r0, r5, __vt__16GenericContainer@l
/* 80227288 002241C8  90 1F 00 00 */	stw r0, 0(r31)
/* 8022728C 002241CC  48 1E A2 FD */	bl __dt__5CNodeFv
lbl_80227290:
/* 80227290 002241D0  7F C0 07 35 */	extsh. r0, r30
/* 80227294 002241D4  40 81 00 0C */	ble lbl_802272A0
/* 80227298 002241D8  7F E3 FB 78 */	mr r3, r31
/* 8022729C 002241DC  4B DF CE 19 */	bl __dl__FPv
lbl_802272A0:
/* 802272A0 002241E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802272A4 002241E4  7F E3 FB 78 */	mr r3, r31
/* 802272A8 002241E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802272AC 002241EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802272B0 002241F0  7C 08 03 A6 */	mtlr r0
/* 802272B4 002241F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802272B8 002241F8  4E 80 00 20 */	blr 

.global getLookAtPosition___12LookAtCameraFv
getLookAtPosition___12LookAtCameraFv:
/* 802272BC 002241FC  C0 04 01 80 */	lfs f0, 0x180(r4)
/* 802272C0 00224200  D0 03 00 00 */	stfs f0, 0(r3)
/* 802272C4 00224204  C0 04 01 84 */	lfs f0, 0x184(r4)
/* 802272C8 00224208  D0 03 00 04 */	stfs f0, 4(r3)
/* 802272CC 0022420C  C0 04 01 88 */	lfs f0, 0x188(r4)
/* 802272D0 00224210  D0 03 00 08 */	stfs f0, 8(r3)
/* 802272D4 00224214  4E 80 00 20 */	blr 

.global on_getPositionPtr__12LookAtCameraFv
on_getPositionPtr__12LookAtCameraFv:
/* 802272D8 00224218  38 63 01 74 */	addi r3, r3, 0x174
/* 802272DC 0022421C  4E 80 00 20 */	blr 

.global getTargetDistance__6CameraFv
getTargetDistance__6CameraFv:
/* 802272E0 00224220  C0 22 BD C8 */	lfs f1, lbl_8051A128@sda21(r2)
/* 802272E4 00224224  4E 80 00 20 */	blr 

.global isSpecialCamera__6CameraFv
isSpecialCamera__6CameraFv:
/* 802272E8 00224228  38 60 00 00 */	li r3, 0
/* 802272EC 0022422C  4E 80 00 20 */	blr 

.global __dt__Q34Game15IllustratedBook11EnemyTexMgrFv
__dt__Q34Game15IllustratedBook11EnemyTexMgrFv:
/* 802272F0 00224230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802272F4 00224234  7C 08 02 A6 */	mflr r0
/* 802272F8 00224238  90 01 00 14 */	stw r0, 0x14(r1)
/* 802272FC 0022423C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227300 00224240  7C 9F 23 78 */	mr r31, r4
/* 80227304 00224244  93 C1 00 08 */	stw r30, 8(r1)
/* 80227308 00224248  7C 7E 1B 79 */	or. r30, r3, r3
/* 8022730C 0022424C  41 82 00 38 */	beq lbl_80227344
/* 80227310 00224250  3C 80 80 4C */	lis r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@ha
/* 80227314 00224254  38 7E 00 20 */	addi r3, r30, 0x20
/* 80227318 00224258  38 04 0D 98 */	addi r0, r4, __vt__Q34Game15IllustratedBook11EnemyTexMgr@l
/* 8022731C 0022425C  38 80 FF FF */	li r4, -1
/* 80227320 00224260  90 1E 00 00 */	stw r0, 0(r30)
/* 80227324 00224264  48 00 C1 A9 */	bl __dt__Q34Game11IconTexture6LoaderFv
/* 80227328 00224268  7F C3 F3 78 */	mr r3, r30
/* 8022732C 0022426C  38 80 00 00 */	li r4, 0
/* 80227330 00224270  48 00 C3 25 */	bl __dt__Q34Game11IconTexture3MgrFv
/* 80227334 00224274  7F E0 07 35 */	extsh. r0, r31
/* 80227338 00224278  40 81 00 0C */	ble lbl_80227344
/* 8022733C 0022427C  7F C3 F3 78 */	mr r3, r30
/* 80227340 00224280  4B DF CD 75 */	bl __dl__FPv
lbl_80227344:
/* 80227344 00224284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227348 00224288  7F C3 F3 78 */	mr r3, r30
/* 8022734C 0022428C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227350 00224290  83 C1 00 08 */	lwz r30, 8(r1)
/* 80227354 00224294  7C 08 03 A6 */	mtlr r0
/* 80227358 00224298  38 21 00 10 */	addi r1, r1, 0x10
/* 8022735C 0022429C  4E 80 00 20 */	blr 

.global __dt__Q34Game15IllustratedBook10DebugParmsFv
__dt__Q34Game15IllustratedBook10DebugParmsFv:
/* 80227360 002242A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227364 002242A4  7C 08 02 A6 */	mflr r0
/* 80227368 002242A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022736C 002242AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227370 002242B0  7C 9F 23 78 */	mr r31, r4
/* 80227374 002242B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80227378 002242B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8022737C 002242BC  41 82 00 28 */	beq lbl_802273A4
/* 80227380 002242C0  3C A0 80 4C */	lis r5, __vt__Q34Game15IllustratedBook10DebugParms@ha
/* 80227384 002242C4  38 80 00 00 */	li r4, 0
/* 80227388 002242C8  38 05 0D A4 */	addi r0, r5, __vt__Q34Game15IllustratedBook10DebugParms@l
/* 8022738C 002242CC  90 1E 00 00 */	stw r0, 0(r30)
/* 80227390 002242D0  48 1E A1 F9 */	bl __dt__5CNodeFv
/* 80227394 002242D4  7F E0 07 35 */	extsh. r0, r31
/* 80227398 002242D8  40 81 00 0C */	ble lbl_802273A4
/* 8022739C 002242DC  7F C3 F3 78 */	mr r3, r30
/* 802273A0 002242E0  4B DF CD 15 */	bl __dl__FPv
lbl_802273A4:
/* 802273A4 002242E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802273A8 002242E8  7F C3 F3 78 */	mr r3, r30
/* 802273AC 002242EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802273B0 002242F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802273B4 002242F4  7C 08 03 A6 */	mtlr r0
/* 802273B8 002242F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802273BC 002242FC  4E 80 00 20 */	blr 

.global "invoke__41Delegate<Q34Game10SingleGame10ZukanState>Fv"
"invoke__41Delegate<Q34Game10SingleGame10ZukanState>Fv":
/* 802273C0 00224300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802273C4 00224304  7C 08 02 A6 */	mflr r0
/* 802273C8 00224308  7C 64 1B 78 */	mr r4, r3
/* 802273CC 0022430C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802273D0 00224310  39 84 00 08 */	addi r12, r4, 8
/* 802273D4 00224314  80 63 00 04 */	lwz r3, 4(r3)
/* 802273D8 00224318  4B E9 A7 4D */	bl __ptmf_scall
/* 802273DC 0022431C  60 00 00 00 */	nop 
/* 802273E0 00224320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802273E4 00224324  7C 08 03 A6 */	mtlr r0
/* 802273E8 00224328  38 21 00 10 */	addi r1, r1, 0x10
/* 802273EC 0022432C  4E 80 00 20 */	blr 

.global __sinit_singleGS_Zukan_cpp
__sinit_singleGS_Zukan_cpp:
/* 802273F0 00224330  3C 80 80 51 */	lis r4, __float_nan@ha
/* 802273F4 00224334  38 00 FF FF */	li r0, -1
/* 802273F8 00224338  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 802273FC 0022433C  3C 60 80 4C */	lis r3, lbl_804C0A40@ha
/* 80227400 00224340  90 0D 95 C8 */	stw r0, lbl_80515C48@sda21(r13)
/* 80227404 00224344  D4 03 0A 40 */	stfsu f0, lbl_804C0A40@l(r3)
/* 80227408 00224348  D0 0D 95 CC */	stfs f0, lbl_80515C4C@sda21(r13)
/* 8022740C 0022434C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80227410 00224350  D0 03 00 08 */	stfs f0, 8(r3)
/* 80227414 00224354  4E 80 00 20 */	blr 
