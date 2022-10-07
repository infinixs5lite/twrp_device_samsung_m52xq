#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m52xq device
$(call inherit-product, device/samsung/m52xq/device.mk)

PRODUCT_DEVICE := m52xq
PRODUCT_NAME := twrp_m52xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG M526B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m52xqins-user 11 RP1A.200720.012 M526BXXU1AUK2 release-keys"

BUILD_FINGERPRINT := samsung/m52xqins/m52xq:11/RP1A.200720.012/M526BXXU1AUK2:user/release-keys
