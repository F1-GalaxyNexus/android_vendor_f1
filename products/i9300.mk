# Inherit AOSP device configuration for i9300.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit common product files.
$(call inherit-product, vendor/f1/products/common.mk)

# Inherit GSM product files.
$(call inherit-product, vendor/f1/products/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SGS3

# Setup device specific product configuration.
PRODUCT_NAME := GalaxyS3
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9300
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9300 BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys" 

# Inherit common build.prop overrides
-include vendor/f1/products/common_versions.mk

# Copy galaxys2 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/f1/proprietary/i9300/media/bootanimation.zip:system/media/bootanimation.zip 
