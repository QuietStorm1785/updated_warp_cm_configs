USE_CAMERA_STUB := false
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
#BOARD_CAMERA_LIBRARIES := liboemcamera \
#	libcamera
#	BOARD_USE_CAF_LIBCAMERA := true
#	BOARD_CAMERA_USE_GETBUFFERINFO := true




TARGET_SPECIFIC_HEADER_PATH := device/zte/arthur/include

#Board Settings
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := arthur
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true
#TARGET_USES_ION := false
TARGET_PROVIDES_INIT_RC := true


# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_HAS_S3D_SUPPORT := true
WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := false
# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_HAS_FLIPPED_SCREEN := true
DEVICE_RESOLUTION := 480x800

#Graphics
BOARD_EGL_CFG := device/zte/arthur/prebuilt/lib/egl/egl.cfg
BOARD_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
#TARGET_HAVE_BYPASS := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
# Set to 9 for 8650A
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
BOARD_USE_QCOM_PMEM := true
TARGET_HARDWARE_3D := true
#GLOBAL_CFLAGS += -DNO_RGBX_8888
#BOARD_NO_RGBX_8888 := true
BOARD_USES_GENLOCK := true
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DREFRESH_RATE=60 


#hdmi
#TARGET_QCOM_HDMI_OUT := true


#Browser
TARGET_FORCE_CPU_UPLOAD := true
#DYNAMIC_SHARED_LIBV8SO := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
WITH_DEXPREOPT := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
#BOARD_CAMERA_USE_GETBUFFERINFO := true
TARGET_LEGACY_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_USES_QCOM_LPA := true
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA

#BOARD_USES_QCOM_AUDIO_V2 := true
#TARGET_PROVIDES_LIBAUDIO := true

#BOARD_PREBUILT_LIBAUDIO := false
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true

#BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true




# Wi-Fi
#    BOARD_HAS_QCOM_WLAN := true
#    BOARD_WPA_SUPPLICANT_DRIVER := NL80211 
#    BOARD_HOSTAPD_DRIVER := NL80211
#    WPA_SUPPLICANT_VERSION := VER_2_0_DEV
#    HOSTAPD_VERSION := VER_2_0_DEV
#    WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
#    WIFI_SDIO_IF_DRIVER_MODULE_PATH :=  "/system/lib/modules/librasdioif.ko"
#    WIFI_SDIO_IF_DRIVER_MODULE_NAME :=  "librasdioif"
#    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
#    WIFI_DRIVER_FW_PATH_STA := "sta"
#    WIFI_DRIVER_FW_PATH_AP  := "ap"
#    WIFI_DRIVER_FW_PATH_P2P := "p2p"
#    BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_PRE_LOADER := "qcom_sdio_init"
WIFI_POST_UNLOADER := "qcom_sdio_deinit"
BOARD_WEXT_NO_COMBO_SCAN := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_QCOM_FM := true

#RIL
#BOARD_USES_HC_RADIO := true


BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom vmalloc=512M kgsl.ptcount=14
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2908749824
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608 
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_MISC_PARTITION := true

TARGET_PREBUILT_KERNEL := device/zte/arthur/kernel

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/arthur/recovery_kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/arthur/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/arthur/recovery/default_recovery_keys.c

# SD Card
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1	#  9 /sdcard vfat /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1	#  9 /sdcard vfat /dev/block/mmcblk1		
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

BOARD_VOLD_MAX_PARTITIONS :=30
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
