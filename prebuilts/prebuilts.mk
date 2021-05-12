LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Prebuilt packages
PRODUCT_PACKAGES += \
    MetroMusicPlayer \
    NexusLauncherRelease \
    SimpleGallery \
    WallpaperPickerGoogleRelease

PRODUCT_COPY_FILES += \
    vendor/ColtSpares/prebuilts/etc/permissions/privapp-permissions-prebuilt-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-prebuilt.xml
