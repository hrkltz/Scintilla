$(warning HRKLTZ vendor/hrkltz/handheld_system_ext.mk)

ifneq ($(TARGET_PRODUCT), sdk_phone_x86_64)
    $(error Expected TARGET_PRODUCT to be sdk_phone_x86_64 but was $(TARGET_PRODUCT))
endif

# Until Android fully converts from Make to Soong, the Make product configuration must specify the PRODUCT_SOONG_NAMESPACES value.
PRODUCT_SOONG_NAMESPACES += \
    vendor/hrkltz/prebuilt \

PRODUCT_PACKAGES += \
    nativeExample \
    fdroid \
    io.hrkltz.terminal \