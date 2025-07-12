
## BIOS image
MediaCow Touch 2 is to use coreboot, customized for use on the device. 

### Removable BIOS Feature
MediaCow Touch 2 follows the principles of the document titled ["State Considered Harmful"](https://blog.invisiblethings.org/papers/2015/state_harmful.pdf).

Alongside the optional on-board SPI flash provided by an SOIC-8 socket, there is the option of having no SPI flash device on-board and instead, the BIOS image is loaded from the embedded controller (SMEC) that reads the image from either an externally accessible microSD or USB drive. The embedded controller (SMEC) does not have any internal flash memory and its firmware would be read from the same drive.

This is a feature found on very few devices and MediaCow Touch 2 may be the first tablet or handheld with it.

Other components such as the Ethernet controller IC that rely on an external SPI flash memory device for configuration may also have the embedded controller load this data instead. An exception to this may be the USB Type-C controller though its flash may be socketed anyway.

By default, the LattePanda Mu contains an 64GB eMMC for user-accessible storage and an SPI flash for BIOS. It may be possible to remove these devices from the module or be provided a LattePanda Mu that does not have these devices populated.

### Other microcontrollers
If other microcontrollers are present in the design for whatever reason. Microcontroller parts used may be ones that do not have have integrated flash memory or EEPROM. An example of this is the Raspberry Pi RP2040 and some RP2350 devices. 