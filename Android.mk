LOCAL_PATH:= $(call my-dir)
TOP := $(LOCAL_PATH)

UPNP_TOP = $(TOP)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	ixml/src/ixml.c ixml/src/node.c ixml/src/ixmlparser.c \
        ixml/src/ixmlmembuf.c ixml/src/nodeList.c \
        ixml/src/element.c ixml/src/attr.c ixml/src/document.c \
        ixml/src/namedNodeMap.c \
        threadutil/src/FreeList.c \
        threadutil/src/LinkedList.c \
        threadutil/src/ThreadPool.c \
        threadutil/src/TimerThread.c \
        upnp/src/ssdp/ssdp_device.c \
        upnp/src/ssdp/ssdp_ctrlpt.c \
        upnp/src/ssdp/ssdp_server.c \
        upnp/src/soap/soap_device.c \
        upnp/src/soap/soap_ctrlpt.c \
        upnp/src/soap/soap_common.c \
        upnp/src/genlib/miniserver/miniserver.c \
        upnp/src/genlib/service_table/service_table.c \
        upnp/src/genlib/util/membuffer.c \
        upnp/src/genlib/util/strintmap.c \
        upnp/src/genlib/util/upnp_timeout.c \
        upnp/src/genlib/util/util.c \
        upnp/src/genlib/client_table/client_table.c \
        upnp/src/genlib/net/sock.c \
        upnp/src/genlib/net/http/httpparser.c \
        upnp/src/genlib/net/http/httpreadwrite.c \
        upnp/src/genlib/net/http/statcodes.c \
        upnp/src/genlib/net/http/webserver.c \
        upnp/src/genlib/net/http/parsetools.c \
        upnp/src/genlib/net/uri/uri.c \
        upnp/src/gena/gena_device.c \
        upnp/src/gena/gena_ctrlpt.c \
        upnp/src/gena/gena_callback2.c \
        upnp/src/api/upnpapi.c \
        upnp/src/api/upnptools.c \
        upnp/src/api/upnpdebug.c \
        upnp/src/uuid/md5.c \
        upnp/src/uuid/sysdep.c \
        upnp/src/uuid/uuid.c \
        upnp/src/urlconfig/urlconfig.c

LOCAL_CFLAGS += -Wno-format -DHAVE_CONFIG_H  -D_THREAD_SAFE -DDEBUG 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/ixml/src/inc/ 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/ixml/inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/threadutil/inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/upnp/inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/upnp/src/inc/

LOCAL_MODULE:= libupnp

include $(BUILD_STATIC_LIBRARY)

include $(TOP)/upnp/sample/tvcombo/Android.mk
include $(TOP)/upnp/sample/tvctrlpt/Android.mk
include $(TOP)/upnp/sample/tvdevice/Android.mk

