# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := aokp_maguro_en
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Build english only
PRODUCT_LOCALES := en_US

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66V 737497 release-keys" BUILD_NUMBER=737497

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
