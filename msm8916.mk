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

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/msm8916-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/samsung/msm8916-common/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Camera
PRODUCT_PACKAGES += \
    libmm-qcamera \
    camera.msm8916

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    memtrack.msm8916

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/gps.conf:system/etc/gps.conf \
    device/samsung/msm8916-common/configs/sap.conf:system/etc/sap.conf \
    device/samsung/msm8916-common/configs/flp.conf:system/etc/flp.conf \
    device/samsung/msm8916-common/configs/izat.conf:system/etc/izat.conf

# IDC
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    device/samsung/msm8916-common/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \

# Input
PRODUCT_PACKAGES += \
    InputDisabler

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRSC
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/samsung/msm8916-common/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/msm8916-common/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/msm8916-common/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/samsung/msm8916-common/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/samsung/msm8916-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/msm8916-common/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/samsung/msm8916-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# Misc.
PRODUCT_PACKAGES += \
    libstlport \
    libboringssl-compat

# OMX
PRODUCT_PACKAGES += \
    libextmedia_jni \
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
    power.msm8916

# Prima
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/samsung/msm8916-common/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/samsung/msm8916-common/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/samsung/msm8916-common/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungMSM8916RIL \
    ro.ril.telephony.mqanelements=6

PRODUCT_PACKAGES += \
    libril_shim \
    Stk

# TinyAlsa utils
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo \
    libtinyxml

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true \
    persist.sys.usb.config=mtp \
    ro.sys.usb.default.config=mtp

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WCNSS service daemon
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    wcnss_service

# WPA supplicant
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/samsung/msm8916-common/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/msm8916-common/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/msm8916-common/configs/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# XML
PRODUCT_PACKAGES += \
    libxml2
	
# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)
