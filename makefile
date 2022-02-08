.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc

all:
	$(shell mkdir -p lib)
	make -C lcd
	make -C media
	make -C usb
	make -C math
	make -C app
clean:
	rm -rf mp3
	rm -rf app/link_obj
	rm -rf app/dep
	rm -rf app/lib_obj
	#rm -rf lib
