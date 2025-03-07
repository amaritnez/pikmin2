#ifndef _JMESSAGE_TPROCESSOR_H
#define _JMESSAGE_TPROCESSOR_H

/*
    __vt__Q28JMessage10TProcessor:
    .4byte 0
    .4byte 0
    .4byte __dt__Q28JMessage10TProcessorFv
    .4byte do_reset__Q28JMessage10TProcessorFv
    .4byte do_character__Q28JMessage10TProcessorFi
    .4byte do_tag__Q28JMessage10TProcessorFUlPCvUl
    .4byte do_systemTagCode__Q28JMessage10TProcessorFUsPCvUl
    .4byte do_select_begin__Q28JMessage10TProcessorFUl
    .4byte do_select_end__Q28JMessage10TProcessorFv
    .4byte do_select_separate__Q28JMessage10TProcessorFv
    .4byte 0
    .4byte do_setBegin_isReady___Q28JMessage10TProcessorCFv
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
*/

namespace JMessage {
struct TProcessor {
	virtual ~TProcessor();                                                     // _08
	virtual void do_reset();                                                   // _0C
	virtual void do_character(int);                                            // _10
	virtual void do_tag(unsigned long, const void*, unsigned long);            // _14
	virtual void do_systemTagCode(unsigned short, const void*, unsigned long); // _18
	virtual void do_select_begin(unsigned long);                               // _1C
	virtual void do_select_end();                                              // _20
	virtual void do_select_separate();                                         // _24
	virtual void _28() = 0;                                                    // _28
	virtual void do_setBegin_isReady_() const;                                 // _2C
	virtual void _30() = 0;                                                    // _30
	virtual void _34() = 0;                                                    // _34
	virtual void _38() = 0;                                                    // _38
	virtual void _3C() = 0;                                                    // _3C

	void setBegin_messageCode(unsigned short, unsigned short);
	void setBegin_messageID(unsigned long, unsigned long, bool*);
	void setBegin_messageCode(unsigned long);
	void getResource_groupID(unsigned short) const;
	void toMessageCode_messageID(unsigned long, unsigned long, bool*) const;
	void reset_(const char*);
	void do_tag_(unsigned long, const void*, unsigned long);
	void on_message_limited(unsigned short) const;
	void do_systemTagCode_(unsigned short, const void*, unsigned long);
	void on_message(unsigned long) const;
	void getMessageText_messageCode(unsigned long) const;
	void process_onCharacterEnd_normal_(JMessage::TProcessor*);
	void process_onCharacterEnd_select_(JMessage::TProcessor*);
	void process_onSelect_limited_(JMessage::TProcessor*);
	void process_onSelect_(JMessage::TProcessor*);
};
} // namespace JMessage

#endif
