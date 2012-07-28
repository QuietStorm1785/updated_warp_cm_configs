ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),arthur)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := load_libra.c
LOCAL_MODULE:= load_libra
LOCAL_SHARED_LIBRARIES := libcutils libc librpc
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

endif # TARGET_BOOTLOADER_BOARD_NAME
