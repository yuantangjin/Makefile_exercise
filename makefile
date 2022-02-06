.PHONY:all clean

SRCS = $(wildcard *.c)
#OBJS = player.o lcd.o usb.o
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
BIN = mp3
all:$(BIN) $(DEPS)
#include $(DEPS)
$(BIN):$(OBJS)
	gcc -o $@ $^
#usb.o:usb.c usb.h
#include usb.d
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
include $(DEPS)
%.d:%.c
	gcc -MM $^ > $@
clean:
	@echo "OBJS = $(OBJS)"
	rm -f $(BIN) $(OBJS) $(DEPS)
