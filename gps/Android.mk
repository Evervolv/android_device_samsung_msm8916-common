LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),samsung)
ifeq ($(TARGET_BOARD_PLATFORM),msm8916)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
endif
