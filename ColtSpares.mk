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
include vendor/ColtSpares/accents/accents.mk

# Copy fonts to system
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/ColtSpares/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Includes fonts
include vendor/ColtSpares/fonts/fonts.mk

# Includes icon packs/shapes
include vendor/ColtSpares/icons/icons.mk

# Include Colt Prebuilts
include vendor/ColtSpares/prebuilts/prebuilts.mk

# Includes qsthemes
include vendor/ColtSpares/qsthemes/qsthemes.mk

# Includes themes
include vendor/ColtSpares/themes/themes.mk

