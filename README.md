zig build-exe src/main.zig statup.s -target thumb-freestanding-none -mcpu cortex_m4 -O ReleaseSafe -Tsrc/linker.ld --name main.elf -fstrip -fno-compiler-rt
sudo openocd -f board/st_nucleo_f4.cfg -c "program main.elf verify reset exit"
