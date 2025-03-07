#ifndef _JSYSTEM_JMESSAGE_TPROCESSOR_H
#define _JSYSTEM_JMESSAGE_TPROCESSOR_H

#include "types.h"
#include "JSystem/JMessage/TResource.h"
#include "JSystem/JMessage/TReference.h"

namespace JMessage {

struct TReference;
struct TControl;
struct TResource;

struct TProcessor {
	virtual ~TProcessor();                                                     // _08
	virtual void do_reset();                                                   // _0C
	virtual void do_character(int);                                            // _10
	virtual bool do_tag(unsigned long, const void*, unsigned long);            // _14
	virtual bool do_systemTagCode(unsigned short, const void*, unsigned long); // _18
	virtual void do_select_begin(unsigned long);                               // _1C
	virtual void do_select_end();                                              // _20
	virtual void do_select_separate();                                         // _24
	virtual void do_reset_(const char*) = 0;                                   // _28
	virtual bool do_setBegin_isReady_() const;                                 // _2C

	void setBegin_messageCode(unsigned short, unsigned short);
	void setBegin_messageID(unsigned long, unsigned long, bool*);
	void setBegin_messageCode(unsigned long); // weak
	TResource* getResource_groupID(unsigned short) const;
	u32 toMessageCode_messageID(unsigned long, unsigned long, bool*) const;
	void on_message_limited(unsigned short) const;        // weak
	void on_message(unsigned long) const;                 // weak
	void getMessageText_messageCode(unsigned long) const; // weak
	void process_onCharacterEnd_normal_(TProcessor*);
	void process_onCharacterEnd_select_(TProcessor*);
	void process_onSelect_limited_(TProcessor*);
	void process_onSelect_(TProcessor*);
	void reset_(const char*);

	TReference* _04; // _04
	TResource* _08;  // _08
	char* _0C;       // _0C
	int _10;         // _10
	char* _14;       // _14
	u8 _18[0xC];     // _18
	void* _24;       // _24 - process_onCharacterEndCallBack(void*) pointer?
	void* _28;       // _28 - process_onSelectCallBack(void*) pointer?
	char* _2C;       // _2C
	char* _30;       // _30
	int _34;         // _34
};

struct TSequenceProcessor : public TProcessor {
	TSequenceProcessor(const JMessage::TReference*, JMessage::TControl*);

	virtual ~TSequenceProcessor();                                              // _08
	virtual void do_reset_(const char*);                                        // _28
	virtual bool do_setBegin_isReady_() const;                                  // _2C
	virtual void do_begin_(const void*, const char*);                           // _30
	virtual void do_end_();                                                     // _34
	virtual bool do_tag_(unsigned long, const void*, unsigned long);            // _38
	virtual bool do_systemTagCode_(unsigned short, const void*, unsigned long); // _3C
	virtual void do_begin(const void*, const char*);                            // _40
	virtual void do_end();                                                      // _44
	virtual bool do_isReady();                                                  // _48
	virtual bool do_jump_isReady();                                             // _4C
	virtual void do_jump(const void*, const char*);                             // _50
	virtual void do_branch_query(unsigned short);                               // _54
	virtual int do_branch_queryResult();                                        // _58
	virtual void do_branch(const void*, const char*);                           // _5C

	char* process(const char*);
	void on_isReady();
	void on_jump_isRead();
	void on_jump(const void*, const char*);
	void on_branch_queryResult();
	void on_branch(const void*, const char*);
	void process_onJump_limited_(const TSequenceProcessor*);
	void process_onJump_(const TSequenceProcessor*);
	void process_onBranch_limited_(const TSequenceProcessor*, unsigned long);
	void process_onBranch_(const TSequenceProcessor*, unsigned long);

	TControl* _38; // _38
	int _3C;       // _3C
	void* _40;     // _40 - processorCallBack(void*, ulong) pointer?
	u32 _44;       // _44
	u32 _48;       // _48
};

struct TRenderingProcessor : public TProcessor {
	TRenderingProcessor(const JMessage::TReference*);

	virtual ~TRenderingProcessor();                                             // _08
	virtual void do_reset_(const char*);                                        // _28
	virtual void do_begin_(const void*, const char*);                           // _30
	virtual void do_end_();                                                     // _34
	virtual bool do_tag_(unsigned long, const void*, unsigned long);            // _38
	virtual bool do_systemTagCode_(unsigned short, const void*, unsigned long); // _3C
	virtual void do_begin(const void*, const char*);                            // _40
	virtual void do_end();                                                      // _44

	void process(const char*);
};
} // namespace JMessage

#endif
