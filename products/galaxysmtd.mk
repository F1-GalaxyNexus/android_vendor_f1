# Inherit AOSP device configuration for GalaxyS
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/f1/products/common.mk)

# Inherit GSM product files.
$(call inherit-product, vendor/f1/products/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SGS

# Setup device specific product configuration.
PRODUCT_NAME := GalaxyS
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

# Inherit common build.prop overrides
-include vendor/f1/products/common_versions.mk

# Copy galaxys2 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/f1/proprietary/galaxysmtd/media/bootanimation.zip:system/media/bootanimation.zip


