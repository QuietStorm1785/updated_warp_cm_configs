ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/zte/arthur/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel \

PRODUCT_BOARD := arthur
DEVICE_PACKAGE_OVERLAYS := device/zte/arthur/overlay
PRODUCT_TAGS += dalvik.gc.type-precise

# device uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    libtinyalsa \
    libaudioutils

PRODUCT_PACKAGES += \
AccountAndSyncSettings \
AlarmProvider \
Androidian \
applypatch \
ast-mm-vdec-omx-test \
Bluetooth \
brcm_patchram_plus \
busybox \
Calculator \
Calendar \
CalendarProvider \
Camera \
camera.msm7x30 \
CertInstaller \
CMParts \
CMScreenshot \
CMStats \
CMWallpapers \
com.tmobile.themes \
copybit.msm7x30 \
Cyanbread \
DeskClock \
DrmProvider \
Email \
Gallery2 \
gps.default \
gralloc.msm7x30 \
hciattach \
hciconfig \
hcitool \
hdmid \
hwcomposer.msm7x30 \
IM \
LatinIME \
Launcher2 \
libdivxdrmdecrypt \
libgenlock \
libmemalloc \
liboverlay \
libinvensense_hal \
liblasic \
liblinenoise \
libmemalloc \
libmm-omxcore \
libomxaudio \
libOmxCore \
libOmxVdec \
libOmxVenc \
libOmxVidEnc \
liboverlay \
librs_jni \
libstagefrighthw \
libwpa_client \
lights.msm7x30 \
LiveWallpapers \
LiveWallpapersPicker \
make_ext4fs \
Mms \
mm-vdec-omx-property-mgr \
mm-vdec-omx-test \
mm-venc-omx-test \
mm-video-driver-test \
mm-video-encdrv-test \
Music \
MusicFX \
overlay.msm7x30 \
Phone \
Protips \
Provision \
QuickSearchBox \
Settings \
setup_fs \
SpareParts \
Superuser \
Sync \
SyncProvider \
SystemUI \
Term \
ThemeChooser \
ThemeManager \
Updater \
VideoEditor \
VisualizationWallpapers \
VoiceDialer 

#Camera
PRODUCT_PACKAGES += \
    camera.msm7x30

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/base/data/etc/com.tmobile.software.themes.xml:/system/etc/permissions/com.tmobile.software.themes.xml \
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \



# Pre-Built Files
PRODUCT_COPY_FILES += \
device/zte/arthur/prebuilt/app/Sdlog.apk:system/app/Sdlog.apk \
device/zte/arthur/prebuilt/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
device/zte/arthur/prebuilt/framework/sprint.jar:system/framework/sprint.jar \
device/zte/arthur/prebuilt/framework/qcrilhook.jar:system/framework/qcrilhook.jar \
device/zte/arthur/prebuilt/bin/akmd8962:system/bin/akmd8962 \
device/zte/arthur/prebuilt/bin/at-daemon:system/bin/at-daemon \
device/zte/arthur/prebuilt/bin/battery_charging:system/bin/battery_charging \
device/zte/arthur/prebuilt/bin/bluetoothd:system/bin/bluetoothd \
device/zte/arthur/prebuilt/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
device/zte/arthur/prebuilt/bin/btwlancoex:system/bin/btwlancoex \
device/zte/arthur/prebuilt/bin/CKPD-daemon:system/bin/CKPD-daemon \
device/zte/arthur/prebuilt/bin/DrmHost:system/bin/DrmHost \
device/zte/arthur/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
device/zte/arthur/prebuilt/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches \
device/zte/arthur/prebuilt/bin/getlogtofile:system/bin/getlogtofile \
device/zte/arthur/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
device/zte/arthur/prebuilt/bin/hciattach:system/bin/hciattach \
device/zte/arthur/prebuilt/bin/hciconfig:system/bin/hciconfig \
device/zte/arthur/prebuilt/bin/hcitool:system/bin/hcitool \
device/zte/arthur/prebuilt/bin/hdmid:system/bin/hdmid \
device/zte/arthur/prebuilt/bin/hlr_auc_gw:system/bin/hlr_auc_gw \
device/zte/arthur/prebuilt/bin/hostapd:system/bin/hostapd \
device/zte/arthur/prebuilt/bin/hostapd_cli:system/bin/hostapd_cli \
device/zte/arthur/prebuilt/bin/init.btprop.sh:system/bin/init.btprop.sh \
device/zte/arthur/prebuilt/bin/iprenew:system/bin/iprenew \
device/zte/arthur/prebuilt/bin/loc_api_app:system/bin/loc_api_app \
device/zte/arthur/prebuilt/bin/netmgrd:system/bin/netmgrd \
device/zte/arthur/prebuilt/bin/port-bridge:system/bin/port-bridge \
device/zte/arthur/prebuilt/bin/proximity.init:system/bin/proximity.init \
device/zte/arthur/prebuilt/bin/qmuxd:system/bin/qmuxd \
device/zte/arthur/prebuilt/bin/rild:system/bin/rild \
device/zte/arthur/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
device/zte/arthur/prebuilt/bin/sdlog:system/bin/sdlog \
device/zte/arthur/prebuilt/bin/sdptool:system/bin/sdptool \
device/zte/arthur/prebuilt/bin/sprintdiag:system/bin/sprintdiag \
device/zte/arthur/prebuilt/bin/thermald:system/bin/thermald \
device/zte/arthur/prebuilt/bin/usbhub:system/bin/usbhub \
device/zte/arthur/prebuilt/bin/usbhub_init:system/bin/usbhub_init \
device/zte/arthur/prebuilt/bin/wpa_supplicant:system/bin/wpa_supplicant \
device/zte/arthur/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
device/zte/arthur/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
device/zte/arthur/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
device/zte/arthur/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
device/zte/arthur/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
device/zte/arthur/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
device/zte/arthur/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
device/zte/arthur/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
device/zte/arthur/prebuilt/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_wapi_fw.bin:system/etc/firmware/wlan/qcom_wapi_fw.bin \
device/zte/arthur/prebuilt/etc/firmware/wlan/qcom_wlan_nv.bin:system/etc/firmware/wlan/qcom_wlan_nv.bin \
device/zte/arthur/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
device/zte/arthur/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
device/zte/arthur/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
device/zte/arthur/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
device/zte/arthur/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
device/zte/arthur/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
device/zte/arthur/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
device/zte/arthur/prebuilt/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
device/zte/arthur/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
device/zte/arthur/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
device/zte/arthur/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
device/zte/arthur/prebuilt/hostapd/hostapd.accept:system/hostapd/hostapd.accept \
device/zte/arthur/prebuilt/hostapd/hostapd.conf:system/hostapd/hostapd.conf \
device/zte/arthur/prebuilt/hostapd/hostapd.deny:system/hostapd/hostapd.deny \
device/zte/arthur/prebuilt/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
device/zte/arthur/prebuilt/lib/bluez-plugin/input.so:system/lib/bluez-plugin/input.so \
device/zte/arthur/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
device/zte/arthur/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
device/zte/arthur/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
device/zte/arthur/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
device/zte/arthur/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
device/zte/arthur/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
device/zte/arthur/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
device/zte/arthur/prebuilt/lib/libaudcal.so:obj/lib/libaudcal.so \
device/zte/arthur/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
device/zte/arthur/prebuilt/lib/libauth.so:system/lib/libauth.so \
device/zte/arthur/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
device/zte/arthur/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
device/zte/arthur/prebuilt/lib/libcamera.so:/system/lib/libcamera.so \
device/zte/arthur/prebuilt/lib/libcm.so:system/lib/libcm.so \
device/zte/arthur/prebuilt/lib/libcommondefs.so:obj/lib/libcommondefs.so \
device/zte/arthur/prebuilt/lib/libcommondefs.so:system/lib/libcommondefs.so \
device/zte/arthur/prebuilt/lib/libdiag.so:obj/lib/libdiag.so \
device/zte/arthur/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
device/zte/arthur/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
device/zte/arthur/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
device/zte/arthur/prebuilt/lib/libdss.so:system/lib/libdss.so \
device/zte/arthur/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
device/zte/arthur/prebuilt/lib/libgps.so:system/lib/libgps.so \
device/zte/arthur/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
device/zte/arthur/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
device/zte/arthur/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
device/zte/arthur/prebuilt/lib/libidl.so:system/lib/libidl.so \
device/zte/arthur/prebuilt/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
device/zte/arthur/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
device/zte/arthur/prebuilt/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
device/zte/arthur/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
device/zte/arthur/prebuilt/lib/libmmipl.so:/system/lib/libmmipl.so \
device/zte/arthur/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
device/zte/arthur/prebuilt/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
device/zte/arthur/prebuilt/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
device/zte/arthur/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
device/zte/arthur/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
device/zte/arthur/prebuilt/lib/libnv.so:system/lib/libnv.so \
device/zte/arthur/prebuilt/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
device/zte/arthur/prebuilt/lib/liboemcamera.so:/system/lib/liboemcamera.so \
device/zte/arthur/prebuilt/lib/liboemcamera.so:obj/lib/liboemcamera.so \
device/zte/arthur/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
device/zte/arthur/prebuilt/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
device/zte/arthur/prebuilt/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
device/zte/arthur/prebuilt/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
device/zte/arthur/prebuilt/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
device/zte/arthur/prebuilt/lib/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \
device/zte/arthur/prebuilt/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
device/zte/arthur/prebuilt/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
device/zte/arthur/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
device/zte/arthur/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
device/zte/arthur/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
device/zte/arthur/prebuilt/lib/libpdapi.so:system/lib/libpdapi.so \
device/zte/arthur/prebuilt/lib/libpdsm_atl.so:system/lib/libpdsm_atl.so \
device/zte/arthur/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
device/zte/arthur/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
device/zte/arthur/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
device/zte/arthur/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
device/zte/arthur/prebuilt/lib/libQWiFiSoftApCfg.so:system/lib/libQWiFiSoftApCfg.so \
device/zte/arthur/prebuilt/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \
device/zte/arthur/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
device/zte/arthur/prebuilt/lib/libril.so:system/lib/libril.so \
device/zte/arthur/prebuilt/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
device/zte/arthur/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
device/zte/arthur/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
device/zte/arthur/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
device/zte/arthur/prebuilt/lib/libuim.so:system/lib/libuim.so \
device/zte/arthur/prebuilt/lib/libwms.so:system/lib/libwms.so \
device/zte/arthur/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \
device/zte/arthur/prebuilt/lib/modules/libra.ko:system/lib/modules/libra.ko \
device/zte/arthur/prebuilt/lib/modules/libra_ftm.ko:system/lib/modules/libra_ftm.ko \
device/zte/arthur/prebuilt/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
device/zte/arthur/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip \
device/zte/arthur/prebuilt/qcom/softap/hostapd_default.conf:system/qcom/softap/hostapd_default.conf \
device/zte/arthur/prebuilt/usr/idc/synaptics-rmi4-ts.idc:system/usr/idc/synaptics-rmi4-ts.idc \
device/zte/arthur/prebuilt/usr/keychars/arthur_keypad_numeric.kcm.bin:system/usr/keychars/arthur_keypad_numeric.kcm.bin \
device/zte/arthur/prebuilt/usr/keychars/arthur_keypad_qwerty.kcm.bin:system/usr/keychars/arthur_keypad_qwerty.kcm.bin \
device/zte/arthur/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
device/zte/arthur/prebuilt/usr/keylayout/arthur_keypad.kl:system/usr/keylayout/arthur_keypad.kl \
device/zte/arthur/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
device/zte/arthur/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
device/zte/arthur/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
device/zte/arthur/recovery/root/init.rc:/recovery/root/init.rc \
device/zte/arthur/recovery/root/init:/recovery/root/init \
device/zte/arthur/recovery/root/sbin/diagftmtest:/recovery/root/sbin/diagftmtest \
device/zte/arthur/recovery/root/sbin/hci_qcomm_init:/recovery/root/sbin/hci_qcomm_init \
device/zte/arthur/recovery/root/sbin/iwmulticall:/recovery/root/sbin/iwmulticall \
device/zte/arthur/recovery/root/sbin/iwpriv:/recovery/root/sbin/iwpriv \
device/zte/arthur/recovery/root/sbin/ptt_socket_app:/recovery/root/sbin/ptt_socket_app \
device/zte/arthur/recovery/root/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/zte/arthur/recovery/root/sbin/usbconfig:/recovery/root/sbin/usbconfig \
device/zte/arthur/recovery/root/ueventd.goldfish.rc:/recovery/root/ueventd.goldfish.rc \
device/zte/arthur/recovery/root/ueventd.rc:/recovery/root/ueventd.rc \
device/zte/arthur/root/init.arthur.rc:/root/init.arthur.rc \
device/zte/arthur/root/init.goldfish.rc:/root/init.goldfish.rc \
device/zte/arthur/root/init.qcom.rc:/root/init.qcom.rc \
device/zte/arthur/root/init.qcom.sh:/root/init.qcom.sh \
device/zte/arthur/root/init.rc:/root/init.rc \
device/zte/arthur/root/init:/root/init \
device/zte/arthur/root/initlogo.rle:/root/initlogo.rle \
device/zte/arthur/root/logo.bmp:/root/logo.bmp \
device/zte/arthur/root/sbin/diagftmtest:/root/sbin/diagftmtest \
device/zte/arthur/root/sbin/hci_qcomm_init:/root/sbin/hci_qcomm_init \
device/zte/arthur/root/sbin/iwmulticall:/root/sbin/iwmulticall \
device/zte/arthur/root/sbin/iwpriv:/root/sbin/iwpriv \
device/zte/arthur/root/sbin/ptt_socket_app:/root/sbin/ptt_socket_app \
device/zte/arthur/root/sbin/rmt_storage:/root/sbin/rmt_storage \
device/zte/arthur/root/sbin/usbconfig:/root/sbin/usbconfig \
device/zte/arthur/root/ueventd.arthur.rc:/root/ueventd.arthur.rc \
device/zte/arthur/root/ueventd.goldfish.rc:/root/ueventd.goldfish.rc \
device/zte/arthur/root/ueventd.rc:/root/ueventd.rc \
device/zte/arthur/prebuilt/lib/liba2dp.so:/system/lib/liba2dp.so \
device/zte/arthur/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
device/zte/arthur/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
device/zte/arthur/prebuilt/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
device/zte/arthur/prebuilt/etc/gps.conf:/system/etc/gps.conf
#device/zte/arthur/prebuilt/lib/hw/audio.primary.msm7x30.so:obj/lib/hw/audio.primary.msm7x30.so \
#device/zte/arthur/prebuilt/lib/hw/audio.primary.msm7x30.so:system/lib/hw/audio.primary.msm7x30.so \
#device/zte/arthur/prebuilt/lib/hw/audio_policy.msm7x30.so:system/lib/hw/audio_policy.msm7x30.so \
#device/zte/arthur/prebuilt/lib/hw/audio_policy.msm7x30.so:obj/lib/hw/audio_policy.msm7x30.so \
#device/zte/arthur/prebuilt/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
#device/zte/arthur/prebuilt/lib/hw/audio.a2dp.default.so:obj/lib/hw/audio.a2dp.default.so \
#device/zte/arthur/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
#device/zte/arthur/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
#device/zte/arthur/prebuilt/lib/libacdbmapper.so:obj/lib/libacdbmapper.so \
#device/zte/arthur/prebuilt/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
#device/zte/arthur/prebuilt/lib/hw/camera.msm7x30.so:system/lib/hw/camera.msm7x30.so \


PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ZTE_arthur
PRODUCT_BRAND := ZTE
PRODUCT_DEVICE := arthur
PRODUCT_MODEL := N860
PRODUCT_MANUFACTURER := ZTE
PRODUCT_PROPERTY_OVERRIDES += \
            ro.cm.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).Warp-Alpha-0.0.0.1
