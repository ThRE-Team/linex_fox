# ==========================================
# linex Project
# ==========================================

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),linex)
include $(call all-subdir-makefiles)
endif
