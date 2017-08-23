#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include proprietary blobs
$(call inherit-product-if-exists, vendor/samsung/msm8916-common/msm8916-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/msm8916-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix


# Audio configuration file
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml

AUDIO_CFG_PATH := hardware/qcom/audio-caf/msm8916/configs

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(AUDIO_CFG_PATH)/msm8916_32/audio_policy.conf:system/etc/audio_policy.conf \
    $(AUDIO_CFG_PATH)/msm8916_32/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_sbc.xml:system/etc/mixer_paths_sbc.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_skul.xml:system/etc/mixer_paths_skul.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml

ifeq ($(USE_QCOM_MIXER_PATHS), 1)
PRODUCT_COPY_FILES += \
    $(AUDIO_CFG_PATH)/msm8916_32/mixer_paths.xml:system/etc/mixer_paths.xml
endif

#XML Audio configuration files
ifeq ($(USE_XML_AUDIO_POLICY_CONF), 1)
PRODUCT_COPY_FILES += \
    $(AUDIO_CFG_PATH)/msm8916_32/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml
endif

# Camera
PRODUCT_PACKAGES += \
    libmm-qcamera \
    camera.msm8916

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.hsp=true \
    ro.qualcomm.bluetooth.map=true \
    ro.qualcomm.bluetooth.nap=true \
    ro.qualcomm.bluetooth.opp=true \
    ro.qualcomm.bluetooth.pbap=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libgenlock \
    libtinyxml \
    memtrack.msm8916

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \

# Filesystem
PRODUCT_PACKAGES += \
    fsck.f2fs

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/gps.conf:system/etc/gps.conf \
    device/samsung/msm8916-common/configs/sap.conf:system/etc/sap.conf \
    device/samsung/msm8916-common/configs/flp.conf:system/etc/flp.conf \
    device/samsung/msm8916-common/configs/izat.conf:system/etc/izat.conf

# Input
PRODUCT_PACKAGES += \
    InputDisabler

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# IRSC
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/msm8916-common/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    device/samsung/msm8916-common/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/msm8916-common/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/samsung/msm8916-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# OMX
PRODUCT_PACKAGES += \
    libextmedia_jni \
    libqcmediaplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.msm8916

# Prima
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/samsung/msm8916-common/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/samsung/msm8916-common/prima/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.bt.sh \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungMSM8916RIL \
    ro.ril.telephony.mqanelements=6

PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# TinyAlsa
PRODUCT_PACKAGES += \
    libtinyalsa \
    tinyplay \
    tinycap \
    tinypcminfo

# TWRP
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# WCNSS service daemon
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    wcnss_service

# WPA supplicant
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/msm8916-common/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/msm8916-common/configs/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)
