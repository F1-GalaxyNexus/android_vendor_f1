# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit common product files.
$(call inherit-product, vendor/f1/products/common.mk)

# Inherit GSM product files.
$(call inherit-product, vendor/f1/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := ATTGalaxyS2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i777
PRODUCT_MODEL := SGH-I777
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"

# Inherit common build.prop overrides
-include vendor/f1/products/common_versions.mk

# Copy galaxys2 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/f1/proprietary/i777/media/bootanimation.zip:system/media/bootanimation.zip 
