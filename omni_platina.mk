#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from platina device
$(call inherit-product, device/xiaomi/platina/device.mk)

PRODUCT_DEVICE := platina
PRODUCT_NAME := omni_platina
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 Lite
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/platina/platina:10/QKQ1.190910.002/V12.0.3.0.QDTMIXM:user/release-keys
