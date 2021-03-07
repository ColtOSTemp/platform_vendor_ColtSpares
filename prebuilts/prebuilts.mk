LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Colt packages
PRODUCT_PACKAGES += \
    CalculatorGooglePrebuilt \
    ColtPapers \
    MetroMusicPlayer \
    QPGallery \
    SafetyHubPrebuilt \
    SoundPickerPrebuilt \
    ThemePicker \
    WeatherIcons

