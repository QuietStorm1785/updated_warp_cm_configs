ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng

LOCAL_SRC_FILES := recovery_ui.c graphics.c
LOCAL_C_INCLUDES += bootable/recovery
# should match TARGET_RECOVERY_UI_LIB set in BoardConfig.mk
LOCAL_MODULE := librecovery_ui_warp
include $(BUILD_STATIC_LIBRARY)

endif   # TARGET_ARCH == arm
