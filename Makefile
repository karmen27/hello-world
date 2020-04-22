LOCAL_PATH := $(call my-dir)

#Build and install CA
include $(CLEAR_VARS)
LOCAL_MODULE := hello_world
LOCAL_FLAGS := -Wall -Wextra -Werror
LOCAL_C_INCLUDES += $(xx)/hello_world/ta/include
LOCAL_C_INCLUDES += $(x)/optee_client/include
LOCAL_SHARED_LIBS := libteec
LOCAL_SRC_FILES := host/main.c
LOCAL_MODULE_PATH := usr/bin/
include $(BUILD_EXECUTABLE)
 
# Install TA
include $(CLEAR_VARS)
LOCAL_MODULE := hello_world_ta
LOCAL_SRC_FILES := ta/*.ta
LOCAL_MODULE_CLASS := etc
LOCAL_MODULE_PATH := usr/ta/optee_armtz
.PHONY: all
all:
         @echo 'Build hello_world TA'
         $(xx)/hello_world/make_app.sh
include $(BUILD_PREBUILT)
