$(warning HRKLTZIO vendor/hrkltzio/handheld_system_ext.mk)

# Another version for the check using $filter:
#ifneq ($(filter redfin, $(TARGET_DEVICE)),)
#    $(error Expected device of type redfin but got $(TARGET_DEVICE))
#endif

ifneq ($(TARGET_PRODUCT), sdk_phone_x86_64)
    $(error Expected TARGET_PRODUCT to be sdk_phone_x86_64 but was $(TARGET_PRODUCT))
endif

PRODUCT_SOONG_NAMESPACES += \
    vendor/hrkltzio/prebuilts \

PRODUCT_PACKAGES += \
    fdroid \
    Terminal \ 