This document is here to move stuff from Connectivity and should be cleaned up if "Paris" is ever to be developed.

### HSIO

| Port    | Purpose     | PCIe Device | PCIe Controller      |
| ------- | ----------- | ----------- | -------------------- |
| HSIO 0  | Ext. USB 3  | N/A         | Controller #1        |
| HSIO 1  | Ext. USB 3  | N/A         | Controller #1        |
| HSIO 2  | M.2 Key E   | 1           | Controller #1        |
| HSIO 3  | M.2 Key B   | 2           | Controller #1        |
| HSIO 6  | M.2 Key A/E | 3           | Controller #2        |
| HSIO 8  | M.2 Key M   | 4           | Controller #3        |
| HSIO 9  | M.2 Key M   | 4           | Controller #3        |
| HSIO 10 | M.2 Key M   | 4           | Controller #3        |
| HSIO 11 | M.2 Key M   | 4           | Controller #3        |

- The first two HSIO lanes are used as USB 3.2 connected to the two USB Type-C ports. 
- The M.2 Key E slot is intended for use with a Wi-Fi/BT module, with USB 2.0 provided alongside a PCIe lane.
- The M.2 Key B slot is intended for use with a 5G/LTE module, with USB 2.0 provided alongside a PCIe lane. A SIM card slot may be present on the carrier board.
- The M.2 Key A/E slot is intended for use with a M.2 Ethernet module.
- The M.2 Key M slots are intended for use with a M.2 NVMe SSD. This slot could also be used for a M.2 SATA module and ATA power connectors may be provided on the carrier board for this purpose.

### SOM_USB2_
The LattePanda Mu SoM exposes eight USB 2.0 interfaces.

Since USB2 interfaces 1, 2, 5 and 6 are able to be assigned to USB Type-C (TCP) ports, 5 and 6 are used for the USB Type-C ports on both versions of MediaCow Touch 2.

Since USB 3.0 connectors have both USB 2 and USB 3 links, USB 2.0 interfaces 1 and 2 are used for the USB 3.2 Type-A ports on both versions of MediaCow Touch 2.


MediaCow Touch 2 "Paris" uses all of the USB 2.0 interfaces.

| Port    | Purpose     |
| ------- | ----------- |
| USB2_P1 | Ext. USB 3  |
| USB2_P2 | Ext. USB 3  |
| USB2_P3 | M.2 Key E   |
| USB2_P4 | M.2 Key B   |
| USB2_P5 | TCP Port 1  |
| USB2_P6 | TCP Port 2  |
| USB2_P7 | Webcam      |
| USB2_P8 | SMEC HID    |

Along with I2C and QSPI, a USB 2.0 link is also included between the SoM and SMEC (SP7021). The USB 2.0 link may be used to emulate a keyboard device.

