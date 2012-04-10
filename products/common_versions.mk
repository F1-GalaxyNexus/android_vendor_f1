# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76D BUILD_ID=IMM76D BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=F1 GalaxyAOSP-$(shell date +"%m-%d-%y") 
  #  ro.rommanager.developerid=Faryaab

