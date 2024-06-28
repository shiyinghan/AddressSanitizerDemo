LOCAL_PATH	:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/ \

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%)
LOCAL_CFLAGS += -DANDROID_NDK

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl
LOCAL_LDLIBS += -llog
LOCAL_LDLIBS += -landroid

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
		native-lib.cpp

LOCAL_MODULE    := addresssanitizerdemo
include $(BUILD_SHARED_LIBRARY)