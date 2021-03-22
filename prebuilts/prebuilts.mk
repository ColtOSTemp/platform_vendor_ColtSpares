LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Colt packages
PRODUCT_PACKAGES += \
    ColtPapers \
    QPGallery \
    SafetyHubPrebuilt \
    SoundPickerPrebuilt \
    ThemePicker \
    WeatherIcons

