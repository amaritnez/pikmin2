#ifndef _APPTHREAD_H
#define _APPTHREAD_H

#include "JSystem/JKR/JKRThread.h"

struct AppThread : public JKRThread {
	AppThread(u32 stackSize, int msgCount, int threadPriority);
	virtual ~AppThread();
	virtual u32 run(); // _04
};

#endif
