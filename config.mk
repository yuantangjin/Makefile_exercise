#------------------------------------------------
# ZHAIXUE_MAKEFILE
# Description: a project makefile demo
# Author     : ddblog@qq.com
# Date       :2022.02.08
#------------------------------------------------
# build root directory
export BUILD_ROOT = $(shell pwd)

# Head files PATH
export HEAD_PATH = $(BUILD_ROOT)/inc

# build directory
# when you add a module,you need add your directory
# here
BUILD_DIR = $(BUILD_ROOT)/lcd/ \
	    $(BUILD_ROOT)/usb/ \
	    $(BUILD_ROOT)/media/ \
	    $(BUILD_ROOT)/math/ \
	    $(BUILD_ROOT)/app/

DEBUG = true
ARCH  = arm
