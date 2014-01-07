ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),e400)
include $(call first-makefiles-under,$(call my-dir))
endif
# HACK for prebuilt libcamera
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)
