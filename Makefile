
CC_ARM = arm-linux-gnueabihf-gcc
CC_AMD = x86_64-linux-gnu-gcc
LD_ARM = arm-linux-gnueabihf-gcc
LD_AMD = x86_64-linux-gnu-gcc

CFLAGS = -Wall
LDFLAGS =

all: hello.arm hello.amd

clean:
	rm -f hello.o.arm hello.arm
	rm -f hello.o.amd hello.amd

hello.o.arm: hello.c
	$(CC_ARM) $(CFLAGS) -c -o $@ $<

hello.o.amd: hello.c
	$(CC_AMD) $(CFLAGS) -c  -o $@ $<

hello.arm: hello.o.arm
	$(LD_ARM) $(LDFLAGS) -o $@ $<

hello.amd: hello.o.amd
	$(LD_AMD) $(LDFLAGS) -o $@ $<
