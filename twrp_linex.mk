# ==========================================
# linex Project
# ==========================================

# Devices
PRODUCT_DEVICE := linex
PRODUCT_NAME := twrp_linex
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_MODEL := Generic

# FOX_VERSION := R12.0
FOX_BUILD_TYPE := Generic
FOX_VARIANT := Enjoy
FOX_VANILLA_THEME := 1
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1
FOX_DISABLE_BOOTLOOP_DETECTOR := 1

#
FOX_REPLACE_BUSYBOX := 1
FOX_USE_BASH_SHELL := 1
FOX_USE_NANO_EDITOR := 1

# Mirror ramdisk
LOCAL_ROOT_MIRROR := device/xiaomi/linex/recovery/root

#
ALL_ROOT_FILES := $(shell find $(LOCAL_ROOT_MIRROR) -type f 2>/dev/null)

#
PRODUCT_COPY_FILES += \
    $(foreach f,$(ALL_ROOT_FILES),$(f):recovery/root/$(patsubst $(LOCAL_ROOT_MIRROR)/%,%,$(f)))
