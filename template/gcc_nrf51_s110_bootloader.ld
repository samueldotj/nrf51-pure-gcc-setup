
GROUP(libgcc.a libc.a libm.a libnosys.a)

/* Linker script to configure memory regions. */
MEMORY
{
  /* 84 kB is taken by S110, 130 kB for app, 45K for the bootloader. */
  FLASH (rx) : ORIGIN = 0x30000, LENGTH = 0x10000
  
  /* UICR register for  the softdevice. */
  UICR (rwx) : ORIGIN = 0x10001000, LENGTH = 0x18
  
  /* 8 kB is taken by S110,8 kB for app. */
  RAM (rwx) : ORIGIN = 0x20002000, LENGTH = 0x2000
}
INCLUDE "gcc_nrf51_bootloader_common.ld"
