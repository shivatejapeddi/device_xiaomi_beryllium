#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common CAFEX stuff.
$(call inherit-product, vendor/aosp/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)


#bootanimation
TARGET_BOOT_ANIMATION_RES := 2280

# Build with GApps if GAPPS_BUILD is true
ifeq ($(GAPPS_BUILD),true)
    WITH_GAPPS := true
    TARGET_GAPPS_ARCH := arm64
    IS_PHONE := true
    TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCOPHONE F1
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/crosshatch/crosshatch:11/RQ2A.210405.006/7214111:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="crosshatch-user 11 RQ2A.210405.006 7214111 release-keys" \
    PRODUCT_NAME="beryllium" \
    TARGET_DEVICE="beryllium" \

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
EXTENDED_BUILD_TYPE := OFFICIAL

