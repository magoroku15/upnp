LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
	../common/sample_util.c \
	./upnp_tv_device.c \
	./linux/upnp_tv_device_main.c

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  -D_THREAD_SAFE -DDEBUG
LOCAL_C_INCLUDES += $(UPNP_TOP)/ixml/src/inc/
LOCAL_C_INCLUDES += $(UPNP_TOP)/ixml/inc/
LOCAL_C_INCLUDES += $(UPNP_TOP)/threadutil/inc/
LOCAL_C_INCLUDES += $(UPNP_TOP)/upnp/inc/
LOCAL_C_INCLUDES += $(UPNP_TOP)/upnp/inc/
LOCAL_C_INCLUDES += $(UPNP_TOP)/upnp/sample/common/

LOCAL_MODULE := upnp_tv_device.bin
LOCAL_STATIC_LIBRARIES := libupnp
include $(BUILD_EXECUTABLE)
