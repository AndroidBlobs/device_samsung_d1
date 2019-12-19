# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from d1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := d1
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_d1
PRODUCT_MODEL := SM-N970F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := d1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="d1xx-user 10 QP1A.190711.020 N970FXXU1BSL7 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/d1xx/d1:10/QP1A.190711.020/N970FXXU1BSL7:user/release-keys
