#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := c2q
DEVICE_PATH := device/samsung/c2q

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from c2q device
$(call inherit-product, device/samsung/c2q/device.mk)

PRODUCT_DEVICE := c2q
PRODUCT_NAME := lineage_c2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N986N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="c2qksw-user 13 TP1A.220624.014 N986NKSS8HYD1 release-keys"

BUILD_FINGERPRINT := samsung/c2qksw/c2q:13/TP1A.220624.014/N986NKSS8HYD1:user/release-keys
