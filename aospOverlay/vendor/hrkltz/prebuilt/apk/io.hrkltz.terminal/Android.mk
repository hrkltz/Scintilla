LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

## io.hrkltz.terminal
LOCAL_MODULE := io.hrkltz.terminal
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
## Note: https://community.nxp.com/t5/i-MX-Processors/How-do-you-preinstall-APP-in-userdata-imx-p9-0-0-2-0-0-ga/m-p/1227690#M169110 
#LOCAL_MODULE_PATH  := $(TARGET_OUT_DATA_APPS)
## There are four dfferent option to place the package:
##   LOCAL_SYSTEM_MODULE := true
##   LOCAL_SYSTEM_EXT_MODULE := true
##       The System+System_ext (SSI) is the image that’s common to an OEM, and can exist across multiple devices. It doesn't have any hardware-specific or 
##       product-specific components. Everything in a given SSI is, by definition, shared among all devices using that SSI.
##
##   LOCAL_VENDOR_MODULE := true
##       A collection of System-on-Chip-specific components.
##
##   LOCAL_PRODUCT_MODULE := true
##       For product specific OEM additions 
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := shared

include $(BUILD_PREBUILT)
