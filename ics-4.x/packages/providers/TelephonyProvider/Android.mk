LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)/3rd

LOCAL_PACKAGE_NAME := TelephonyProvider
LOCAL_CERTIFICATE := platform

LOCAL_STATIC_JAVA_LIBRARIES += android-common

include $(BUILD_PACKAGE)