.PHONY:all clean

all:
	make -C lcd
	make -C media
	make -C usb
	make -C app
clean:
	rm -rf mp3
	rm -rf app/link_obj/*.o app/player.d
	rm -rf usb/usb.d
	rm -rf lcd/lcd.d
	rm -rf media/media.d
	rm -rf app/link_obj
