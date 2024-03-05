ARCHS = arm64e

export TARGET = iphone:14.5:14.0
export THEOS_DEVICE_IP = 10.0.0.231

# INSTALL_TARGET_PROCESSES = SpringBoard

export THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GetThoseIvars2

GetThoseIvars2_FILES = Tweak.xm
GetThoseIvars2_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
