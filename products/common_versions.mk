# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76I BUILD_ID=IMM76I BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.f1version=GalaxyNexus-$(shell date +"%y-%m-%d") 
  #  ro.rommanager.developerid=Faryaab

