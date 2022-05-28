#ifndef _JAIANIMESOUND_H
#define _JAIANIMESOUND_H

/*
    __vt__13JAIAnimeSound:
    .4byte 0
    .4byte 0
    .4byte __dt__13JAIAnimeSoundFv
    .4byte startSound__Q27JAInter6ObjectFUlUl
    .4byte startSound__Q27JAInter10ObjectBaseFUcUlUl
    .4byte startSound__Q27JAInter10ObjectBaseFPP8JAISoundUlUl
    .4byte stopAllSound__Q27JAInter10ObjectBaseFv
    .4byte stopSound__Q27JAInter10ObjectBaseFUlUl
    .4byte enable__Q27JAInter10ObjectBaseFv
    .4byte disable__Q27JAInter6ObjectFv
    .4byte dispose__Q27JAInter10ObjectBaseFv
    .4byte getFreeSoundHandlePointer__Q27JAInter10ObjectBaseFv
    .4byte getUseSoundHandlePointer__Q27JAInter10ObjectBaseFUl
    .4byte handleStop__13JAIAnimeSoundFUcUl
    .4byte loop__Q27JAInter6ObjectFv
    .4byte playActorAnimSound__13JAIAnimeSoundFPQ27JAInter5ActorfUc
    .4byte startAnimSound__13JAIAnimeSoundFUlPP8JAISoundPQ27JAInter5ActorUc
    .4byte
   setSpeedModifySound__13JAIAnimeSoundFP8JAISoundP22JAIAnimeFrameSoundDataf
*/

namespace JAInter {
struct Object {
	virtual void _00() = 0;                                // _00
	virtual void startSound(unsigned long, unsigned long); // _04
	virtual void _08() = 0;                                // _08
	virtual void _0C() = 0;                                // _0C
	virtual void _10() = 0;                                // _10
	virtual void _14() = 0;                                // _14
	virtual void _18() = 0;                                // _18
	virtual void disable();                                // _1C
	virtual void _20() = 0;                                // _20
	virtual void _24() = 0;                                // _24
	virtual void _28() = 0;                                // _28
	virtual void _2C() = 0;                                // _2C
	virtual void loop();                                   // _30

	// _00 VTBL
};
} // namespace JAInter

namespace JAInter {
struct ObjectBase {
	virtual void _00() = 0;                                               // _00
	virtual void _04() = 0;                                               // _04
	virtual void startSound(unsigned char, unsigned long, unsigned long); // _08
	virtual void startSound(JAISound**, unsigned long, unsigned long);    // _0C
	virtual void stopAllSound();                                          // _10
	virtual void stopSound(unsigned long, unsigned long);                 // _14
	virtual void enable();                                                // _18
	virtual void _1C() = 0;                                               // _1C
	virtual void dispose();                                               // _20
	virtual void getFreeSoundHandlePointer();                             // _24
	virtual void getUseSoundHandlePointer(unsigned long);                 // _28

	// _00 VTBL
};
} // namespace JAInter

struct JAIAnimeSound : public Object, public ObjectBase {
	virtual ~JAIAnimeSound();                                             // _00
	virtual void startSound(unsigned long, unsigned long);                // _04
	virtual void startSound(unsigned char, unsigned long, unsigned long); // _08
	virtual void startSound(JAISound**, unsigned long, unsigned long);    // _0C
	virtual void stopAllSound();                                          // _10
	virtual void stopSound(unsigned long, unsigned long);                 // _14
	virtual void enable();                                                // _18
	virtual void disable();                                               // _1C
	virtual void dispose();                                               // _20
	virtual void getFreeSoundHandlePointer();                             // _24
	virtual void getUseSoundHandlePointer(unsigned long);                 // _28
	virtual void handleStop(unsigned char, unsigned long);                // _2C
	virtual void loop();                                                  // _30
	virtual void playActorAnimSound(JAInter::Actor*, float,
	                                unsigned char); // _34
	virtual void startAnimSound(unsigned long, JAISound**, JAInter::Actor*,
	                            unsigned char); // _38
	virtual void setSpeedModifySound(JAISound*, JAIAnimeFrameSoundData*,
	                                 float); // _3C

	// _00 VTBL
};

#endif
