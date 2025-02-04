LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PRIVILEGED_MODULE := true

# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := SetupWizardTests
LOCAL_CERTIFICATE := platform

LOCAL_PRIVATE_PLATFORM_APIS := true

LOCAL_REQUIRED_MODULES := privapp_whitelist_org.scandiumos.setupwizard-tests.xml

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp_whitelist_org.scandiumos.setupwizard-tests.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
