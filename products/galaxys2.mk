# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)

# Inherit common product files.
$(call inherit-product, vendor/galaxyaosp/products/common.mk)

# Inherit GSM product files.
$(call inherit-product, vendor/galaxyaosp/products/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SGS2

# Setup device specific product configuration.
PRODUCT_NAME := galaxyaosp_galaxys2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxys2
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER :=samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"

# Inherit common build.prop overrides
-include vendor/galaxyaosp/products/common_versions.mk

# Copy galaxys2 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/galaxyaosp/proprietary/galaxys2/media/bootanimation.zip:system/media/bootanimation.zip \


