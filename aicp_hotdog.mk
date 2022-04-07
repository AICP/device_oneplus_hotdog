#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Aicp stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aicp_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1917
PRODUCT_MANUFACTURER := OnePlus

TARGET_VENDOR_PRODUCT_NAME := OnePlus7TPro
TARGET_VENDOR_DEVICE_NAME := OnePlus7TPro
PRODUCT_SYSTEM_NAME := OnePlus7TPro
PRODUCT_SYSTEM_DEVICE := OnePlus7TPro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOTANIMATION_HALF_RES := true

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TPro/OnePlus7TPro:11/RKQ1.201022.002/2106290959:user/release-keys"

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := google/coral/coral:12/SP2A.220405.003/8210211:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7TPro \
    TARGET_PRODUCT=OnePlus7TPro

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Julian Veit (Claymore1297),Michele Bono (Miccia94)"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7TPro-user 11 RKQ1.201022.002 2106290959 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
