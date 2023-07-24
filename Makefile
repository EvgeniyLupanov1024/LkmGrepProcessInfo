LKM_FILENAME = LkmGrepProcessInfo

obj-m += $(LKM_FILENAME).o
PWD := $(CURDIR)

all:

lkm: LkmGrepProcessInfo.c
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

test_lkm:
	sudo dmesg -C
	sudo insmod $(LKM_FILENAME).ko
	sudo rmmod $(LKM_FILENAME).ko
	dmesg

app: GrepProcessInfo.c
	gcc GrepProcessInfo.c -o GrepProcessInfo.out -Wall
