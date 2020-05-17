# Copyright (C) 2017 The LineageOS Project
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

COMMON_PATH := device/sony/common-treble

### INIT
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/init/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.common.rc \
    $(COMMON_PATH)/config/init/init.common.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.common.qcom.rc \
    $(COMMON_PATH)/config/init/init.common.srv.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.common.srv.rc \
    $(COMMON_PATH)/config/init/init.common.ims.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.common.ims.rc

# For android_filesystem_config.h permissions
PRODUCT_PACKAGES += \
    fs_config_files \
    fs_config_dirs

### Additional native libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

include $(COMMON_PATH)/common/*.mk
include $(COMMON_PATH)/vendor_prop.mk

$(call inherit-product, device/sony/common-treble/treble.mk)
