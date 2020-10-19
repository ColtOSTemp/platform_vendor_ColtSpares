LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Colt packages
PRODUCT_PACKAGES += \
    ColtPapers \
    EnigmaLauncher \
    QPGallery \
    SafetyHubPrebuilt \
    SoundPickerPrebuilt \
    WeatherIcons

PRODUCT_COPY_FILES += \
    vendor/ColtSpares/prebuilts/etc/permissions/com.enigma.launcher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.enigma.launcher.xml \
    vendor/ColtSpares/prebuilts/etc/permissions/com.enigma.launcher-ext.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.enigma.launcher-ext.xml
