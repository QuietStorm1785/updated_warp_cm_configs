ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/zte/arthur/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/arthur/overlay

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# use high-density artwork where available
PRODUCT_LOCALES += hdpi


PRODUCT_PACKAGES += \
    librs_jni \
    abtfilt \
    Bluetooth \
    Camera \
    CMParts \
    CMScreenshot \
    CMStats \
    CMWallpapers \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    lights.msm7x30 \
    copybit.msm7x30 \
    overlay.msm7x30 \
    gps.msm7x30 \
    LatinIME \
    Mms \
    SpareParts \
    Term \
    FileManager \
    libstagefrighthw \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    audio.a2dp.default \
    libaudioutils \
    libtinyalsa \
    com.android.future.usb.accessory

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Boot init
PRODUCT_COPY_FILES += \
    device/zte/arthur/root/init:/root/init \
    device/zte/arthur/root/init.arthur.rc:/root/init.arthur.rc \
    device/zte/arthur/root/init.goldfish.rc:/root/init.goldfish.rc \
    device/zte/arthur/root/initlogo.rle:/root/initlogo.rle \
    device/zte/arthur/root/init.qcom.rc:/root/init.qcom.rc \
    device/zte/arthur/root/init.qcom.sh:/root/init.qcom.sh \
    device/zte/arthur/root/init.rc:/root/init.rc \
    device/zte/arthur/root/logo.bmp:/root/logo.bmp \
    device/zte/arthur/root/ueventd.rc:/root/ueventd.rc \
    device/zte/arthur/root/ueventd.arthur.rc:/root/ueventd.arthur.rc \
    device/zte/arthur/root/ueventd.goldfish.rc:/root/ueventd.goldfish.rc \
    device/zte/arthur/root/sbin/diagftmtest:/root/sbin/diagftmtest \
    device/zte/arthur/root/sbin/hci_qcomm_init:/root/sbin/hci_qcomm_init \
    device/zte/arthur/root/sbin/iwmulticall:/root/sbin/iwmulticall \
    device/zte/arthur/root/sbin/iwpriv:/root/sbin/iwpriv \
    device/zte/arthur/root/sbin/ptt_socket_app:/root/sbin/ptt_socket_app \
    device/zte/arthur/root/sbin/rmt_storage:/root/sbin/rmt_storage \
    device/zte/arthur/root/sbin/usbconfig:/root/sbin/usbconfig


# Recovery init
PRODUCT_COPY_FILES += \
    device/zte/arthur/recovery/root/init:/recovery/root/init \
    device/zte/arthur/recovery/root/init.rc:/recovery/root/init.rc \
    device/zte/arthur/recovery/root/ueventd.rc:/recovery/root/ueventd.rc \
    device/zte/arthur/recovery/root/ueventd.goldfish.rc:/recovery/root/ueventd.goldfish.rc \
    device/zte/arthur/recovery/root/sbin/diagftmtest:/recovery/root/sbin/diagftmtest \
    device/zte/arthur/recovery/root/sbin/hci_qcomm_init:/recovery/root/sbin/hci_qcomm_init \
    device/zte/arthur/recovery/root/sbin/iwmulticall:/recovery/root/sbin/iwmulticall \
    device/zte/arthur/recovery/root/sbin/iwpriv:/recovery/root/sbin/iwpriv \
    device/zte/arthur/recovery/root/sbin/ptt_socket_app:/recovery/root/sbin/ptt_socket_app \
    device/zte/arthur/recovery/root/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
    device/zte/arthur/recovery/root/sbin/usbconfig:/recovery/root/sbin/usbconfig

#Prebuilt to obj
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/zte/arthur/prebuilt/lib/libaudioalsa.so:/obj/lib/libaudioalsa.so \
    device/zte/arthur/prebuilt/lib/libcommondefs.so:/obj/lib/libcommondefs.so

#Adreno
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/zte/arthur/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/zte/arthur/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/arthur/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/zte/arthur/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/arthur/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/arthur/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/zte/arthur/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/zte/arthur/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so


#Camera
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/lib/libcamera.so:/system/lib/libcamera.so \
    device/zte/arthur/prebuilt/lib/libcamera.so:/obj/lib/libcamera.so \
    device/zte/arthur/prebuilt/lib/libgemini.so:/system/lib/libgemini.so \
    device/zte/arthur/prebuilt/lib/libgemini.so:/obj/lib/libgemini.so \
    device/zte/arthur/prebuilt/lib/libcameraservice.so:/system/lib/libcameraservice.so \
    device/zte/arthur/prebuilt/lib/libcameraservice.so:/obj/lib/libcameraservice.so \
    device/zte/arthur/prebuilt/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/zte/arthur/prebuilt/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/zte/arthur/prebuilt/lib/libmmipl.so:/system/lib/libmmipl.so

#GPU Firmware Files 
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/zte/arthur/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/zte/arthur/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# SD Card
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/etc/vold.fstab:system/etc/vold.fstab

#Input
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/zte/arthur/prebuilt/usr/keylayout/arthur_keypad.kl:system/usr/keylayout/arthur_keypad.kl \
    device/zte/arthur/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/arthur/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/zte/arthur/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/zte/arthur/prebuilt/usr/keychars/arthur_keypad_numeric.kcm.bin:system/usr/keychars/arthur_keypad_numeric.kcm.bin \
    device/zte/arthur/prebuilt/usr/keychars/arthur_keypad_qwerty.kcm.bin:system/usr/keychars/arthur_keypad_qwerty.kcm.bin


#RIL
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/zte/arthur/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/zte/arthur/prebuilt/bin/rild:system/bin/rild \
    device/zte/arthur/prebuilt/lib/libauth.so:system/lib/libauth.so \
    device/zte/arthur/prebuilt/lib/libcm.so:system/lib/libcm.so \
    device/zte/arthur/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/zte/arthur/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/zte/arthur/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    device/zte/arthur/prebuilt/lib/libdss.so:system/lib/libdss.so \
    device/zte/arthur/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/zte/arthur/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/zte/arthur/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/zte/arthur/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/zte/arthur/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/zte/arthur/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/zte/arthur/prebuilt/lib/libnv.so:system/lib/libnv.so \
    device/zte/arthur/prebuilt/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    device/zte/arthur/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/zte/arthur/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/zte/arthur/prebuilt/lib/libpdapi.so:system/lib/libpdapi.so \
    device/zte/arthur/prebuilt/lib/libpdsm_atl.so:system/lib/libpdsm_atl.so \
    device/zte/arthur/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/zte/arthur/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/zte/arthur/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/zte/arthur/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    device/zte/arthur/prebuilt/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \
    device/zte/arthur/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/zte/arthur/prebuilt/lib/libril.so:system/lib/libril.so \
    device/zte/arthur/prebuilt/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/zte/arthur/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/zte/arthur/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/zte/arthur/prebuilt/lib/libuim.so:system/lib/libuim.so \
    device/zte/arthur/prebuilt/lib/libwms.so:system/lib/libwms.so \
    device/zte/arthur/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \


#APN
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

#GPS
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/zte/arthur/prebuilt/lib/libgps.so:system/lib/libgps.so \
    device/zte/arthur/prebuilt/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    device/zte/arthur/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/zte/arthur/prebuilt/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
    device/zte/arthur/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/zte/arthur/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
    device/zte/arthur/prebuilt/bin/loc_api_app:system/bin/loc_api_app

#WiFi
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/lib/modules/libra.ko:system/lib/modules/libra.ko \
    device/zte/arthur/prebuilt/lib/modules/libra_ftm.ko:system/lib/modules/libra_ftm.ko \
    device/zte/arthur/prebuilt/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/zte/arthur/prebuilt/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
    device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_wapi_fw.bin:system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_wlan_nv.bin:system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/zte/arthur/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/arthur/prebuilt/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/zte/arthur/prebuilt/bin/iprenew:system/bin/iprenew


#Hostapd
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/bin/hostapd:system/bin/hostapd \
    device/zte/arthur/prebuilt/bin/hostapd_cli:system/bin/hostapd_cli \
    device/zte/arthur/prebuilt/hostapd/hostapd.accept:system/hostapd/hostapd.accept \
    device/zte/arthur/prebuilt/hostapd/hostapd.deny:system/hostapd/hostapd.deny \
    device/zte/arthur/prebuilt/hostapd/hostapd.conf:system/hostapd/hostapd.conf \
    device/zte/arthur/prebuilt/lib/libQWiFiSoftApCfg.so:system/lib/libQWiFiSoftApCfg.so \
    device/zte/arthur/prebuilt/qcom/softap/hostapd_default.conf:system/qcom/softap/hostapd_default.conf

#Bluetoothe
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/bin/bluetoothd:system/bin/bluetoothd \
    device/zte/arthur/prebuilt/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
    device/zte/arthur/prebuilt/bin/btwlancoex:system/bin/btwlancoex \
    device/zte/arthur/prebuilt/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches \
    device/zte/arthur/prebuilt/bin/hciattach:system/bin/hciattach \
    device/zte/arthur/prebuilt/bin/hciconfig:system/bin/hciconfig \
    device/zte/arthur/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/zte/arthur/prebuilt/bin/hcitool:system/bin/hcitool \
    device/zte/arthur/prebuilt/bin/hlr_auc_gw:system/bin/hlr_auc_gw \
    device/zte/arthur/prebuilt/bin/init.btprop.sh:system/bin/init.btprop.sh \
    device/zte/arthur/prebuilt/bin/sdptool:system/bin/sdptool \
    device/zte/arthur/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/zte/arthur/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/zte/arthur/prebuilt/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
    device/zte/arthur/prebuilt/lib/bluez-plugin/input.so:system/lib/bluez-plugin/input.so \
    device/zte/arthur/prebuilt/lib/libauth.so:system/lib/libauth.so \
    device/zte/arthur/prebuilt/lib/libcm.so:system/lib/libcm.so


#Other Stuff called in the init.arthur.rc and stuff
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/bin/at-daemon:system/bin/at-daemon \
    device/zte/arthur/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/zte/arthur/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/zte/arthur/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/zte/arthur/prebuilt/bin/getlogtofile:system/bin/getlogtofile \
    device/zte/arthur/prebuilt/bin/CKPD-daemon:system/bin/CKPD-daemon \
    device/zte/arthur/prebuilt/bin/hdmid:system/bin/hdmid \
    device/zte/arthur/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/zte/arthur/prebuilt/bin/sprintdiag:system/bin/sprintdiag \
    device/zte/arthur/prebuilt/bin/sdlog:system/bin/sdlog \
    device/zte/arthur/prebuilt/app/Sdlog.apk:system/app/Sdlog.apk \
    device/zte/arthur/prebuilt/app/Sdlog.odex:system/app/Sdlog.odex \
    device/zte/arthur/prebuilt/bin/DrmHost:system/bin/DrmHost


#Sensors
PRODUCT_COPY_FILES += \
    device/zte/arthur/prebuilt/bin/proximity.init:system/bin/proximity.init \
    device/zte/arthur/prebuilt/bin/akmd8962:system/bin/akmd8962 \
    device/zte/arthur/prebuilt/bin/thermald:system/bin/thermald \
    device/zte/arthur/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/zte/arthur/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so


#Boot Animation
PRODUCT_COPY_FILES +=\
    device/zte/arthur/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip


PRODUCT_NAME := ZTE_Warp
PRODUCT_BRAND := ZTE
PRODUCT_DEVICE := arthur
PRODUCT_MODEL := N860
PRODUCT_MANUFACTURER := ZTE
