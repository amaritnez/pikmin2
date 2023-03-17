#ifndef _JSYSTEM_JKR_JKRARCHIVE_H
#define _JSYSTEM_JKR_JKRARCHIVE_H

#include "JSystem/JKernel/JKRFile.h"
#include "JSystem/JKernel/JKRFileLoader.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "types.h"

struct JKRArcFinder;

enum JKRCompression {
	COMPRESSION_None = 0,
	COMPRESSION_YAY0 = 1,
	COMPRESSION_YAZ0 = 2,
	COMPRESSION_ASR  = 3,
};

struct JKRArchive : public JKRFileLoader {
	enum EMountMode { EMM_Unk0 = 0, EMM_Mem = 1, EMM_Aram = 2, EMM_Dvd = 3, EMM_Comp = 4 };

	enum EMountDirection {
		EMD_Unk0 = 0,
		EMD_Head = 1,
		EMD_Tail = 2,
	};

	struct CArcName {
		CArcName(const char** p1, char p2) { p1[0] = store(p1[0], p2); }

		const char* getString() const { return mString; }
		u16 getHash() const { return mHash; }
		void store(const char*);
		const char* store(const char*, char);

		// Unused/inlined:
		CArcName() { }
		CArcName(const char* data) { store(data); }

		u16 mHash;         // _00
		u16 _02;           // _02
		char mString[256]; // _04
		u8 _104[4];        // _104, unknown
	};

	struct SDIFileEntry {
		u16 getNameHash() const { return mHash; }
		u32 getNameOffset() const { return mFlag & 0xFFFFFF; }
		u32 getFlags() const { return mFlag >> 24; }
		u32 getAttr() const { return getFlags(); }
		u32 getSize() { return mSize; }
		u16 getFileID() const { return mFileID; }
		bool isDirectory() const { return (getFlags() & 0x02) != 0; }
		bool isCompressed() const { return (getFlags() & 0x04) != 0; }
		u8 getCompressFlag() const { return (getFlags() & 0x04); } // apparently both necessary?
		bool isYAZ0Compressed() const { return (getFlags() & 0x80) != 0; }

		bool getFlag01() const { return (getFlags() & 0x01) != 0; }
		bool getFlag04() { return mFlag >> 0x18 & 0x04; }
		bool getFlag10() { return mFlag >> 0x18 & 0x10; }
		bool getFlag80() { return mFlag >> 0x18 & 0x80; }

		u16 mFileID;     // _00
		u16 mHash;       // _02
		u32 mFlag;       // _04
		u32 mDataOffset; // _08
		u32 mSize;       // _0C
		void* mData;     // _10
	};

	struct SDirEntry {
		u8 mFlags;   // _00
		u8 _01;      // _01
		u16 mID;     // _02
		char* mName; // _04
	};

	struct SDIDirEntry {
		u32 mType;     // _00
		u32 mOffset;   // _04
		u16 _08;       // _08
		u16 mNum;      // _0A
		u32 mFirstIdx; // _0C
	};

	// NB: Fabricated name
	struct SArcDataInfo {
		u32 mNumDirEntries;   // _00
		u32 mDirEntryOffset;  // _04
		u32 mNumFileEntries;  // _08
		u32 mFileEntryOffset; // _0C
		u32 mStrTableLength;  // _10
		u32 mStrTableOffset;  // _14
		u16 mNextFreeFileID;  // _18
		bool mIsSyncIDs;      // _1A
		u8 _1B[5];            // _1B, unknown
	};

	JKRArchive(long, EMountMode);

	virtual bool becomeCurrent(const char*);                                                                  // _10
	virtual void* getResource(const char* path);                                                              // _14
	virtual void* getResource(u32 type, const char* name);                                                    // _18
	virtual size_t readResource(void* resourceBuffer, u32 bufferSize, const char* path);                      // _1C
	virtual size_t readResource(void* resourceBuffer, u32 bufferSize, u32 type, const char* name);            // _20
	virtual void removeResourceAll();                                                                         // _24
	virtual bool removeResource(void*);                                                                       // _28
	virtual bool detachResource(void*);                                                                       // _2C
	virtual long getResSize(const void*) const;                                                               // _30
	virtual u32 countFile(const char*) const;                                                                 // _34
	virtual JKRFileFinder* getFirstFile(const char*) const;                                                   // _38
	virtual u32 getExpandedResSize(const void* resource) const;                                               // _3C (weak)
	virtual void* fetchResource(SDIFileEntry* entry, u32* outSize)                                       = 0; // _40
	virtual void* fetchResource(void* resourceBuffer, u32 bufferSize, SDIFileEntry* entry, u32* resSize) = 0; // _44
	virtual void setExpandSize(SDIFileEntry*, u32);                                                           // _48
	virtual u32 getExpandSize(SDIFileEntry*) const;                                                           // _4C
	virtual ~JKRArchive();                                                                                    // _08

	SDIDirEntry* findDirectory(const char*, u32) const;
	SDIFileEntry* findFsResource(const char*, u32) const;
	SDIFileEntry* findIdResource(u16) const;
	SDIFileEntry* findIdxResource(u32) const;
	SDIFileEntry* findNameResource(const char*) const;
	SDIFileEntry* findPtrResource(const void*) const;
	SDIFileEntry* findTypeResource(u32, const char*) const;
	bool isSameName(CArcName&, u32, u16) const;

	bool getDirEntry(SDirEntry*, u32) const;
	void* getIdxResource(u32 index);
	size_t readResource(void* resourceBuffer, u32 bufferSize, u16 id);

	static JKRArchive* mount(char const*, EMountMode, JKRHeap*, EMountDirection);
	static JKRArchive* mount(void*, JKRHeap*, EMountDirection);
	static JKRArchive* mount(long, EMountMode, JKRHeap*, EMountDirection);
	static void* getGlbResource(u32 type, const char* name, JKRArchive* archive);

	// Unused/inlined:
	JKRArchive();
	JKRArchive(const char* p1, EMountMode mountMode);
	static JKRArchive* check_mount_already(long);
	static JKRArchive* check_mount_already(long, JKRHeap*);
	SDIDirEntry* findResType(u32) const;
	SDIFileEntry* findTypeResource(u32, u32) const;

	u32 getMountMode() const { return mMountMode; }
	u32 countFile() const { return mDataInfo->mNumFileEntries; }
	int countDirectory() const { return mDataInfo->mNumDirEntries; }

	static u32 getCurrentDirID() { return sCurrentDirID; }
	static void setCurrentDirID(u32 dirID) { sCurrentDirID = dirID; }

	static u32 sCurrentDirID;

	// _00     = VTBL
	// _00-_38 = JKRFileLoader
	JKRHeap* mHeap;             // _38
	u8 mMountMode;              // _3C
	int mEntryNum;              // _40
	SArcDataInfo* mDataInfo;    // _44
	SDIDirEntry* mDirectories;  // _48
	SDIFileEntry* mFileEntries; // _4C
	u32* mExpandSizes;          // _50
	const char* mStrTable;      // _54
	int _58;                    // _58
};

enum JKRMemBreakFlag { MBF_0 = 0, MBF_1 = 1 };

struct JKRMemArchive : public JKRArchive {
	// NB: Fabricated name - need to check size
	struct SArcHeader {
		u32 mSignature;      // _00
		u32 mFileLength;     // _04
		u32 mHeaderLength;   // _08
		u32 mFileDataOffset; // _0C
		u32 mFileDataLength; // _10
		u32 _14;             // _14
		u32 _18;             // _18
		u32 _1C;             // _1C
	};

	JKRMemArchive(); // unused/inlined
	JKRMemArchive(long, EMountDirection);
	JKRMemArchive(void*, u32, JKRMemBreakFlag);
	JKRMemArchive(const char*, EMountDirection); // unused/inlined

	virtual ~JKRMemArchive();                                                                             // _08
	virtual void removeResourceAll();                                                                     // _24
	virtual bool removeResource(void*);                                                                   // _28
	virtual u32 getExpandedResSize(const void*) const;                                                    // _3C
	virtual void* fetchResource(SDIFileEntry* entry, u32* outSize);                                       // _40
	virtual void* fetchResource(void* resourceBuffer, u32 bufferSize, SDIFileEntry* entry, u32* resSize); // _44

	bool open(long, EMountDirection);
	bool open(void*, u32, JKRMemBreakFlag);
	u32 fetchResource_subroutine(u8*, u32, u8*, u32, int);

	// Unused/inlined:
	void fixedInit(long);
	void mountFixed(long, EMountDirection);
	void mountFixed(const char*, EMountDirection);
	void mountFixed(void*, JKRMemBreakFlag);
	void unmountFixed();
	void open(const char*, EMountDirection);

	// _00     = VTBL
	// _00-_5C = JKRArchive
	JKRCompression mCompression;     // _5C
	EMountDirection mMountDirection; // _60
	SArcHeader* mHeader;             // _64
	u8* mArchiveData;                // _68
	bool mIsOpen;                    // _6C
};

struct JKRCompArchive : public JKRArchive {
	JKRCompArchive(long, EMountDirection);

	virtual ~JKRCompArchive();                                                                            // _08
	virtual void removeResourceAll();                                                                     // _24
	virtual bool removeResource(void*);                                                                   // _28
	virtual u32 getExpandedResSize(const void*) const;                                                    // _3C
	virtual void* fetchResource(SDIFileEntry* entry, u32* outSize);                                       // _40
	virtual void* fetchResource(void* resourceBuffer, u32 bufferSize, SDIFileEntry* entry, u32* resSize); // _44

	bool open(long);

	// Unused/inlined:
	void fixedInit(long);
	void mountFixed(long);
	void mountFixed(const char*);
	void unmountFixed();

	// _00     = VTBL
	// _00-_5C = JKRArchive
	JKRCompression mCompression;     // _5C
	EMountDirection mMountDirection; // _60
	u32 _64;                         // _64
	void* _68;                       // _68
	unknown _6C;                     // _6C
	JKRDvdFile* mDvdFile;            // _70
	u32 mMemSize;                    // _74
	u32 mAramSize;                   // _78
	u32 _7C;                         // _7C
};

struct JKRDvdArchive : public JKRArchive {
	JKRDvdArchive(long, JKRArchive::EMountDirection);

	virtual ~JKRDvdArchive();                                                                             // _00
	virtual u32 getExpandedResSize(const void*) const;                                                    // _34
	virtual void* fetchResource(SDIFileEntry* entry, u32* outSize);                                       // _38
	virtual void* fetchResource(void* resourceBuffer, u32 bufferSize, SDIFileEntry* entry, u32* resSize); // _3C

	bool open(long);
	static u32 fetchResource_subroutine(long, u32, u32, unsigned char*, u32, int, int);
	static u32 fetchResource_subroutine(long, u32, u32, JKRHeap*, int, int, unsigned char**);

	// Unused/inlined:
	unknown fixedInit(long, EMountDirection);
	unknown mountFixed(long, EMountDirection);
	unknown mountFixed(const char*, EMountDirection);
	unknown unmountFixed();

	// _00     = VTBL
	// _00-_5C = JKRArchive
	JKRCompression mCompression;     // _5C
	EMountDirection mMountDirection; // _60
	int _64;                         // _64
	JKRDvdFile* mDvdFile;            // _68
};

#endif
