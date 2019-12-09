#
# Copyright (C) 2014 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is a generic product that isn't specialized for a specific device.
# It includes the base Android-x86 platform.

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/vendor/lib/libreference-ril.so

PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/config.ini.tv:config.ini

PRODUCT_COPY_FILES += \
    development/sys-img/advancedFeatures.ini:advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:encryptionkey.img \
    prebuilts/qemu-kernel/x86_64/4.4/kernel-qemu2:kernel-ranchu-64


# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_foster
PRODUCT_DEVICE := foster
PRODUCT_BRAND := NVIDIA
PRODUCT_MANUFACTURER := NVIDIA
PRODUCT_MODEL := SHIELD Android TV

PRODUCT_PACKAGES := \
    bios.bin \
    vgabios-cirrus.bin

$(call inherit-product, device/google/atv/products/atv_generic.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/board/generic_x86/device.mk)
