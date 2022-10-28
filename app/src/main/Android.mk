LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := HellCustomization

LOCAL_SDK_VERSION := current

LOCAL_SRC_FILES := $(call all-java-files-under, java)

# Include libraries

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.core_core \

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := --auto-add-overlay

LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.appcompat

include $(BUILD_PACKAGE)
