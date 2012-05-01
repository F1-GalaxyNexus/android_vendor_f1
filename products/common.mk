# Generic product
PRODUCT_NAME := F1-GalaxyNexus
PRODUCT_BRAND := F1-GalaxyNexus
PRODUCT_DEVICE := generic

# Inherit Google Apps files.
#$(call inherit-product, vendor/gapps/gapps.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/f1/overlay/common

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
    vendor/f1/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/f1/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/f1/proprietary/common/etc/init.d/56F1Tweaks:system/etc/init.d/56F1Tweaks \
    vendor/f1/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/f1/proprietary/common/xbin/su:system/xbin/su

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml 
