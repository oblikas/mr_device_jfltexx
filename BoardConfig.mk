# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common JF
-include device/samsung/jf-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/jfltexx/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := jflte,jfltexx,i9505,GT-I9505,jgedlte,i9505g,GT-I9505G

# Kernel
TARGET_KERNEL_CONFIG         := jf_eur_defconfig

#MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/jfltexx/mr_init_devices.c
MR_DPI := hdpi
MR_FSTAB := device/samsung/jfltexx/twrp.fstab
MR_USE_MROM_FSTAB := true
MR_DEVICE_HOOKS := device/samsung/jfltexx/mr_hooks.c
MR_DEVICE_HOOKS_VER := 1
MR_KEXEC_MEM_MIN := 0x85000000
