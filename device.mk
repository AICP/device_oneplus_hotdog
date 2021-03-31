#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/hotdog/hotdog-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-aicp

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# A/B
AB_OTA_PARTITIONS += \
    odm \
    product \
    recovery \
    system_ext \
    vbmeta_system

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(LOCAL_PATH)/audio/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.recovery.hotdog.rc \
    setup_logical.sh \
    init.aicp-sm8150.rc

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# JamesDSP
PRODUCT_PACKAGES += \
    JamesDSPManager

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# OPFeature
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/odm_feature_list:$(TARGET_COPY_OUT_ODM)/etc/odm_feature_list

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.2-service.oneplus_msmnile

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
