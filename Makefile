FILENAME = LkmGrepProcessInfo
obj-m += $(FILENAME).o
PWD := $(CURDIR)

all:
	make build
	make test
	make clean

build:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

test:
	sudo dmesg -C
	sudo insmod $(FILENAME).ko
	sudo rmmod $(FILENAME).ko
	dmesg
