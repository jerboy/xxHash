#ndk-build  NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_MODULE    := xxhsum
LOCAL_SRC_FILES := xxhash.c xxhsum.c

include $(BUILD_EXECUTABLE)