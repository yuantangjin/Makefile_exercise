.PHONY:all clean install uninstall
include config.mk

all:
	$(shell mkdir -p lib)
	@for dir in $(BUILD_DIR); \
	do \
		make -C $$dir; \
	done
clean:
	rm -rf mp3
	rm -rf app/link_obj
	rm -rf app/dep
	rm -rf app/lib_obj
	#rm -rf lib
install:
	sudo cp mp3 /usr/bin
	sudo cp lib/libmath.so /usr/lib
	sudo cp lib/ext_lib/librmvb.so /usr/lib
uninstall:
	sudo rm -f /usr/bin/mp3
	sudo rm -f /usr/lib/libmath.so
	sudo rm -f /usr/lib/librmvb.so
