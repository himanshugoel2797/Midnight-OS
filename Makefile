# Environment

SOURCES=boot.o crt0.o Core/Tables/InterruptHandlers.o Core/Tables/Tables.o DisplayText.o \
	Common/mem.o HAL/I686_Core.o Core/Tables/CPUID.o HAL/HAL_PIC.o Common/stdlib.o



PLATFORM=/opt/cross/bin/i686

SDA=sdb

















MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
GCC=$(PLATFORM)-elf-gcc -ffreestanding -O2 -Wall -Wextra -std=c++11
ASM=$(PLATFORM)-elf-as

CRTI_OBJ=crti.o
CRTBEGIN_OBJ:=$(shell $(PLATFORM)-elf-gcc -ffreestanding -Wall -Wextra -print-file-name=crtbegin.o)
CRTEND_OBJ:=$(shell $(PLATFORM)-elf-gcc -ffreestanding -Wall -Wextra -print-file-name=crtend.o)
CRTN_OBJ=crtn.o

SRC_OBJA=$(SOURCES:.cpp=.o)
SRC_OBJ=$(CRTI_OBJ) $(CRTBEGIN_OBJ) $(SRC_OBJA:.s=.o) $(CRTEND_OBJ) $(CRTN_OBJ)
CONF=Debug

.cpp.o:
	$(GCC) -S $? -o $(?:.cpp=.s)
	$(ASM) $(?:.cpp=.s) -o $(?:.cpp=.o)
	rm -f $(?:.cpp=.s)

.s.o:
	$(ASM) $? -o $(?:.s=.o)

run: all

# build
build:$(CRTI_OBJ) $(SOURCES) $(CRTN_OBJ) .build-post

.build-pre:
# Add your pre 'build' code here...

.build-post:
# Add your post 'build' code here...
	$(PLATFORM)-elf-gcc -T linker.ld -o "build/$(CONF)/kernel.bin" -ffreestanding -O2 -nostdlib $(SRC_OBJ) -lgcc

# clean
clean:
	rm -f *.o
	rm -f Core/*.o
	rm -f Core/Tables/*.o
	rm -f Common/*.o
	rm -f build/$(CONF)/kernel.bin
	rm -f ISO/os.iso

.clean-pre:
# Add your pre 'clean' code here...

.clean-post:
# Add your post 'clean' code here...


# clobber
clobber:

.clobber-pre:
# Add your pre 'clobber' code here...

.clobber-post: .clobber-impl
# Add your post 'clobber' code here...


# all
all:test
.all-pre:
# Add your pre 'all' code here...

.all-post: .all-impl
# Add your post 'all' code here...


# build tests
build-tests:clean build
	mkdir -p ISO
	mkdir -p ISO/isodir
	mkdir -p ISO/isodir/boot
	cp "build/$(CONF)/kernel.bin" ISO/isodir/boot/kernel.bin
	mkdir -p ISO/isodir/boot/grub
	cp grub.cfg ISO/isodir/boot/grub/grub.cfg
	grub2-mkrescue -o ISO/os.iso ISO/isodir

.build-tests-pre:
# Add your pre 'build-tests' code here...

.build-tests-post:
# Add your post 'build-tests' code here...


# run tests
test:.test-pre

.test-pre: build-tests
# Add your pre 'test' code here...
	qemu-system-i386 -cdrom "ISO/os.iso"
.test-post:
# Add your post 'test' code here...

install:build-tests
	sudo -t dd if="ISO/os.iso" of=/dev/$(SDA) && sync

# help
help:

.help-pre:
# Add your pre 'help' code here...

.help-post:
# Add your post 'help' code here...
