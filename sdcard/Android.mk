LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := sdcard.c
LOCAL_MODULE := sdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)

LOCAL_SHARED_LIBRARIES := libcutils

include $(CLEAR_VARS)
LOCAL_SRC_FILES := main.c
LOCAL_MODULE := sdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter
LOCAL_STATIC_LIBRARIES := libsdcard
include $(BUILD_EXECUTABLE)
