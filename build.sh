nasm -f bin -o kernel.bin Kernel/kernel.asm
dd status=noxfer conv=notrunc if=kernel.bin of=kernel.flp
qemu-system-i386 -soundhw pcspk -fda kernel.flp
