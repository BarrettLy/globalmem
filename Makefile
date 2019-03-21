KVERS = $(shell uname -r)

#Kernel modules
obj-m += globalmem.o

# Specify flags for the module compilation.
#EXTRA_CFLAGS=-g -o0

build: kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(KVERS)/build M=$(shell pwd) clean
