CONFIG_MODULE_SIG=n
CONFIG_MODULE_SIG_ALL=n

obj-m += keyboard.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
