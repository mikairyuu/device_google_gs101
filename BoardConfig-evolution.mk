#
# Copyright (C) 2021 The Calyx Institute
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Manifests
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/evolution/config/device_framework_matrix.xml
DEVICE_MANIFEST_FILE += device/google/gs101/manifest_radio.xml

# Partitions
AB_OTA_PARTITIONS += \
    vendor \
    vendor_dlkm

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Enable chain partition for vendor.
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3

AB_OTA_PARTITIONS += \
    vbmeta_vendor