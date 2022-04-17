#
# Copyright 2014 The Android Open-Source Project
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
include device/rockchip/rk356x_box/CommonBoardConfig.mk
BUILD_WITH_GO_OPT := false

BOARD_SELINUX_ENFORCING := true
#BOARD_SELINUX_ENFORCING := false

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := true

ifeq ($(strip $(BOARD_USES_AB_IMAGE)), true)
    include device/rockchip/common/BoardConfig_AB.mk
    TARGET_RECOVERY_FSTAB := device/rockchip/rk356x_box/rk356x_box/recovery.fstab_AB
endif

PRODUCT_UBOOT_CONFIG := rk3566
PRODUCT_KERNEL_DTS := rk3566-quartz64-a
#PRODUCT_KERNEL_DTS := rk3566-box-demo-v10
PRODUCT_KERNEL_CONFIG := rockchip_defconfig android-11.config
BOARD_GSENSOR_MXC6655XA_SUPPORT := true
BOARD_CAMERA_SUPPORT_EXT := false
BOARD_HS_ETHERNET := true
PRODUCT_HAVE_HDMIHDCP2 := true
USE_OEM_TV_APP := true
BOARD_SHOW_HDMI_SETTING :=true
OARD_CAMERA_SUPPORT_EXT := false
#for microsoft drm
BUILD_WITH_MICROSOFT_PLAYREADY :=true
#DEVICE_MANIFEST_FILE := $(TARGET_DEVICE_DIR)/manifest.xml
#GMS
#BUILD_WITH_GOOGLE_MARKET_BOX :=true
#BUILD_BOX_WITH_GOOGLE_MARKET :=true
#BUILD_BOX_WITH_GOOGLE_GMS :=true
#BUILD_WITH_GOOGLE_MARKET := true
#BUILD_WITH_GOOGLE_GMS_EXPRESS := true
#BUILD_WITH_GOOGLE_MARKET_ALL := true

#PRODUCT_IS_ATV := true
#PRODUCT_IS_ATV_SDK := true
#DONT_UNCOMPRESS_PRIV_APPS_DEXS := true
#BOARD_AVB_ENABLE := true
