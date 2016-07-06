nasm -f bin -o kernel.bin Kernel/kernel.asm
dd status=noxfer conv=notrunc if=kernel.bin of=kernel.flp
qemu -fda kernel.flp
