#ifndef _JSYSTEM_JSUINPUTSTREAM_H
#define _JSYSTEM_JSUINPUTSTREAM_H

#include "JSystem/JKR/JKRFile.h"
#include "types.h"

// Named after standard C++ constants with the exact same meaning.
enum JSUStreamSeekFrom { SEEK_SET = 0, SEEK_CUR, SEEK_END };

struct JSUIosBase {
	inline JSUIosBase()
	    : m_isEOFMaybe(0) {};
	virtual ~JSUIosBase() {}; //_00

	// VTBL _00
	u8 m_isEOFMaybe; // _04
};

struct JSUInputStream : public JSUIosBase {
	virtual ~JSUInputStream();             // _00
	virtual int getAvailable() const = 0;  // _04
	virtual s32 skip(long);                // _08
	virtual int readData(void*, long) = 0; // _0C

	s32 read(void*, long);
	char* read(char*);
};

struct JSURandomInputStream : public JSUInputStream {
	virtual ~JSURandomInputStream() {};                                       // _00
	virtual int getAvailable() const { return getLength() - getPosition(); }; // _04 weak, found in JKRAramStream.cpp
	virtual s32 skip(long);                                                   // _08
	virtual int readData(void*, long)            = 0;                         // _0C
	virtual int getLength() const                = 0;                         // _10
	virtual int getPosition() const              = 0;                         // _14
	virtual int seekPos(long, JSUStreamSeekFrom) = 0;                         // _18

	u32 align(s32);
	size_t peek(void*, long);
	void seek(long, JSUStreamSeekFrom);
};

struct JSUMemoryInputStream : public JSURandomInputStream {
	virtual ~JSUMemoryInputStream() {};                     // _00
	virtual int readData(void*, long);                      // _0C
	virtual int getLength() const { return m_length; };     // _10
	virtual int getPosition() const { return m_position; }; // _14
	virtual int seekPos(long, JSUStreamSeekFrom);           // _18

	void setBuffer(const void*, long);

	const void* m_object; // _08
	long m_length;        // _0C
	int m_position;       // _10
};

// Size: 0x10
struct JSUFileInputStream : public JSURandomInputStream {
	JSUFileInputStream(JKRFile*);
	virtual int readData(void*, long);                                             // _0C
	virtual int getLength() const { return ((JKRFile*)m_object)->getFileSize(); }; // _10
	virtual int getPosition() const { return m_length; };                          // _14
	virtual int seekPos(long, JSUStreamSeekFrom);                                  // _18

	const void* m_object; // _08
	long m_length;        // _0C
	int m_position;       // _10
};

/* Not much remains of this. */
struct JSUOutputStream : public JSUIosBase {
	virtual ~JSUOutputStream(); // _00
	/* No calls to this appear to have survived. */
	virtual void _04(); // _04
	/* Just a guess. No instances of this survived in vanilla. */
	virtual long writeData(const void*, long) = 0; // _08

	int write(const void*, long);
	void write(const char*);
};

#endif
