# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from fleur device
$(call inherit-product, device/infinix/X662/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X662
PRODUCT_NAME := twrp_X662
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 11
PRODUCT_MANUFACTURER := Infinix
