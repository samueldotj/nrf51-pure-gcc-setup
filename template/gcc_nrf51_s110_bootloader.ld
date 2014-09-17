
SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

/* Linker script to configure memory regions. */
MEMORY
{
  /* 84 kB is taken by S110, 130 kB for app, 45K for the bootloader. */
  FLASH (rx) : ORIGIN = 0x30000, LENGTH = 0x10000
  
  /* UICR register for  the softdevice. */
  UICR (rwx) : ORIGIN = 0x10001000, LENGTH = 0x18
  
  /* 8 kB is taken by S110,8 kB for app. */
  RAM (rwx) : ORIGIN = 0x20002000, LENGTH = 0x2000

  BOOTLOADER_SETTINGS (rw) : ORIGIN = 0x0003FC00, LENGTH = 1K
}

SECTIONS
{
    /* placing my named section at given address: */
    .bootloaderSettings 0x0003FC00 :
    {
    }

    .uicrBootStartAddress 0x10001014 :
    {
    }
    /* other placements follow here... */
}

INCLUDE "gcc_nrf51_common.ld"
