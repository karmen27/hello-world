 LOCAL_PATH := $(call my-dir)
  
 include $(CLEAR_VARS)
 LOCAL_MODULE      := hello_world
 LOCAL_C_INCLUDES += $(LOCAL_PATH)/ta/include
 LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../optee_client/include
 LOCAL_SRC_FILES:= host/main.c
 LOCAL_FLAGS := -Wall -Wextra -Werror
 LOCAL_SHARED_LIBRARIES := libteec
 LOCAL_MODULE_TAGS := optional
 LOCAL_MODULE_PATH=$(TARGET_OUT_VENDOR)/bin/
 include $(BUILD_EXECUTABLE)
 
 include $(LOCAL_PATH)/ta/Android.mk
