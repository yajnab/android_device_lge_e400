# inherit from the proprietary version
-include vendor/lge/e400/BoardConfigVendor.mk

#Target
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_ARCH_LOWMEM := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := e400
TARGET_CORTEX_CACHE_LINE_32 := true

#Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=e0
BOARD_KERNEL_BASE := 0x00200000
BOARD_MKBOOTIMG_ARGS := 0x01300000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_KERNEL_SOURCE := kernel/lge/e400
TARGET_KERNEL_CONFIG := cyanogenmod_e0_defconfig

#Device
TARGET_SPECIFIC_HEADER_PATH := device/lge/e400/include
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ROTATOR_KERNEL_FORMATS
BOARD_VOLD_MAX_PARTITIONS := 22
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
#TARGET_USES_C2D_COMPOSITION := true
#TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
BOARD_HAVE_BLUETOOTH := true

COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DUSE_LEGACY_SCREENSHOT
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60


#Audio
TARGET_QCOM_AUDIO_VARIANT := caf

#Graphics
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_NO_HW_VSYNC := false
TARGET_QCOM_HDMI_OUT := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/lge/e400/configs/egl.cfg

# ION Support
TARGET_USES_ION := false

# Touch screen compatibility for JB
BOARD_USE_LEGACY_TOUCHSCREEN := true

#Media
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_QCOM_LEGACY_OMX := true

#Camera
USE_CAMERA_STUB := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e400
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WIFI_EXT_MODULE_PATH := /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/wlan.ko
WIFI_EXT_MODULE_NAME := librasdioif
WIFI_DRIVER_MODULE_NAME := wlan
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_WEXT_NO_COMBO_SCAN := true


#Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'
TARGET_RECOVERY_FSTAB := device/lge/e400/ramdisk/fstab.e0
RECOVERY_FSTAB_VERSION := 2

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 392167424
BOARD_USERDATAIMAGE_PARTITION_SIZE := 164626432
BOARD_FLASH_BLOCK_SIZE := 131072
