# Copyright (C) 2021 The ColtOS Project
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

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Includes accents
# include vendor/ColtSpares/accents/accents.mk

# Include FOD resources conditionally
ifeq ($(EXTRA_FOD_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    FodAnimationResources
endif

ifeq ($(TARGET_HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/ColtSpares/overlay/fod-icons
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/ColtSpares/overlay/fod-icons
endif

# Includes cutout shapes
include vendor/ColtSpares/cutout/cutout.mk

# Fonts
PRODUCT_PACKAGES += \
    Colt-Fonts

# Includes icon packs/shapes
include vendor/ColtSpares/icons/icons.mk

# Includes navbar
include vendor/ColtSpares/navbar/navbar.mk

# Includes prebuilts
include vendor/ColtSpares/prebuilts/prebuilts.mk

# Includes qsthemes
include vendor/ColtSpares/qsthemes/qsthemes.mk

# Includes themes
include vendor/ColtSpares/themes.mk

# Switch themes
PRODUCT_PACKAGES += \
    SwitchAOSP \
    SwitchAndroid12 \
    SwitchContained \
    SwitchTelegram \
    SwitchRetro \
    SwitchMD2 \
    SwitchOOS
