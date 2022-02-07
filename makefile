.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc

all:
	make -C lcd
	make -C media
	make -C usb
	make -C app
clean:
	rm -rf mp3
	rm -rf app/link_obj
	rm -rf app/dep
