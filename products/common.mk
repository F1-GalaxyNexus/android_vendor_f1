# Generic product
PRODUCT_NAME := GalaxyAOSP
PRODUCT_BRAND := GalaxyAOSP
PRODUCT_DEVICE := generic

# Inherit all video files.
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/galaxyaosp/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/galaxyaosp/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/galaxyaosp/proprietary/common/xbin/su:system/xbin/su

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml 
