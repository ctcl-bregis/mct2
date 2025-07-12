To lower complexity and cost, a single PCB is used for MediaCow Touch 2 Lite "Curitiba".

## Net Descriptions
This section covers each net in the schematic for the MediaCow Touch 2 Lite "Curitiba" carrier board.

### AC_ - Audio CODEC
These connections relate to the audio CODEC. It surrounds the use of the 92HD95 CODEC. It is not named HDA_ in case an I2S CODEC is used. Names here are derived from the CODEC's pin names.

#### AC_PORTA_R/AC_PORTA_L
CODEC analog output to headphone jack.

#### AC_PORTB_R/AC_PORTB_L
CODEC analog input from microphone jack.

#### AC_PORTD_RP/AC_PORTD_RN/AC_PORTD_LP/AC_PORTD_LN
Analog output for internal speaker array, making use of integrated audio amplifiers.

| 92HD95 Pin | Net Name    |
| ---------- | ----------- |
| PORTD+_R   | AC_PORTD_RP |
| PORTD-_R   | AC_PORTD_RN |
| PORTD+_L   | AC_PORTD_LP |
| PORTD-_L   | AC_PORTD_LN |

#### AC_DMIC_CLK
Clock signal from digital microphone

#### AC_DMIC_D0
Data from digital microphone 1

#### AC_DMIC_D1
Data from digital microphone 2

May be unused if the webcam module being used has one microphone only.

#### AC_PCBEEP
This net is for controlling the PC Beep feature of the CODEC. It is connected directly to the embedded controller (SMEC).


### BM_ - Battery Management
These connections relate to the BQ25723 battery management IC and the battery pack BMS.

### EC_ - Embedded Controller connections

#### EC_PM_I2C_ - Embedded Controller Power Management I2C bus
This I2C bus is used for communication between the embedded controller and the following:

- TPS65988 - Type-C PD controller
- MPS8859 Programmable buck-boost converter - TCP_PPHV0 source
- MPS8859 Programmable buck-boost converter - TCP_PPHV1 source
 
#### EC_BM_I2C_ - Embedded Controller Battery Management I2C bus
This I2C bus is used for communication between the embedded controller and the following:

- BQ25723 - Battery management IC
- ??? - Pack BMS/fuel gauge

#### EC_IOVDD
This supply is used as a reference voltage for IO. Any pull-up resistors for connections to the embedded controller are to be connected to this net.

This net is likely to be 3.3v.

### HDMI_ - HDMI Subsystem
The TPD12S016 is used as the HDMI protection IC.

#### HDMI_5V
This is the 5V supply that connects to the VCC5V of the HDMI protection IC.

#### HDMI_5V_CN
HDMI_5V_CN is the connection between the HDMI connector and the HDMI protection IC's 5V output.

#### HDMI_CLKN/HDMI_CLKP
Differential pair for HDMI clock.

#### HDMI_CT_HPD
HDMI_CT_HPD is used to control the detection scheme on the HDMI protection IC.

#### HDMI_D0N/HDMI_D0P
First differential pair for HDMI data.

#### HDMI_D1N/HDMI_D1P
Second differential pair for HDMI data.

#### HDMI_D2N/HDMI_D2P
Third differential pair for HDMI data.

#### HDMI_HPD
HDMI_HPD is used for hot-plug detection and is connected to the HDMI protection IC.

#### HDMI_LS_OE
HDMI_LS_OE is used to control the integrated level shifter on the HDMI protection IC.

#### HDMI_SCL/HDMI_SDA
HDMI_SCL/HDMI_SDA are used for I2C communication and are connected to the HDMI protection IC.

#### HDMI_CN_SCL/HDMI_CN_SDA
These are connections for I2C and are connected between the HDMI protection IC and the HDMI connector.

#### HDMI_UTILITY
This connection is unused but is connected to a test point for debugging.

#### HDMI_VCCA
This is the 3.3V supply for the HDMI protection IC.

### M2E - M.2 Key E connector
The M.2 Key E connector can be used for a variety of purposes. The intended purpose is for use with a M.2 Wi-Fi/BT module.

#### M2E_WDISABLE1
First WDISABLE pin for the M.2 Key E connector. Behavior depends on the module being used.

#### M2E_WDISABLE2
Second WDISABLE pin for the M.2 Key E connector. Behavior depends on the module being used.


### SOM_ - SoM connections
These connections are between the SoM (LattePanda Mu) and other components on the carrier board.

#### SOM_FANx_PWM/SOM_FANx_TAC/SOM_TSENSE
These pins may be unused as MediaCow Touch 2 Lite would use a fanless design while on MediaCow Touch 2 (Full), fans are to be controlled by SMEC.

#### SOM_GSX_DOUT/SOM_GSX_SLOAD/SOM_GSX_DIN/SOM_GSX_RESET/SOM_GSX_CLK
Exposed as GPIO on the LattePanda Mu, these pins have the alternate mode of providing the GPIO Serial Expander interface of the N100/N305. These pins may be unused since neither version of MediaCow Touch 2 would make use of GPIO expansion on the N100/N305. Instead, pins are exposed for debugging purposes.


| Symbol Pin Name | Label Name    |
| --------------- | ------------- |
| GPP_F12         | SOM_GSX_DOUT  |
| GPP_F13         | SOM_GSX_SLOAD |
| GPP_F14         | SOM_GSX_DIN   |
| GPP_F15         | SOM_GSX_RESET |
| GPP_F16         | SOM_GSX_CLK   |

#### SOM_HDA_ - SoM HD Audio connections
These are the connections from the SoM to the HD Audio CODEC.

- SOM_HDA_BCLK - Bit Clock
- SOM_HDA_RST - Reset, active low
- SOM_HDA_SDIN - Data from CODEC to SoM
- SOM_HDA_SDOUT - Data from SoM to CODEC
- SOM_HDA_SYNC - Sync


#### SOM_HSIO_ - SoM HSIO connections
The HSIO connections on the Intel N100/N305 are mostly used for providing PCIe lanes with the only two being used for other purposes are HSIO0 and HSIO1.

| Port    | Purpose     | PCIe Device | PCIe Controller      |
| ------- | ----------- | ----------- | -------------------- |
| HSIO 0  | Ext. USB 3  | N/A         | Controller #1        |
| HSIO 1  | Ext. USB 3  | N/A         | Controller #1        |
| HSIO 2  | Reserved    | N/A         | Controller #1        |
| HSIO 3  | Reserved    | N/A         | Controller #1        |
| HSIO 6  | M.2 Key E   | 1           | Controller #2        |
| HSIO 8  | M.2 Key M   | 2           | Controller #3        |
| HSIO 9  | M.2 Key M   | 2           | Controller #3        |
| HSIO 10 | M.2 Key M   | 2           | Controller #3        |
| HSIO 11 | M.2 Key M   | 2           | Controller #3        |

- The first two HSIO lanes are used as USB 3.2 connected to the two USB Type-C ports. 
- The M.2 Key E slot is intended for use with a Wi-Fi/BT module, with USB 2.0 provided alongside a PCIe lane.
- The M.2 Key M slots are intended for use with a M.2 NVMe storage module. This slot could also be used for a M.2 SATA module.

##### SOM_HSIO0
SOM_HSIO0 is used for providing USB 3.x for the first USB 3 Type-A port.

| SoM Net Name    | Device Net Name  |
| --------------- | ---------------- |
| SOM_HSIO0_TX_P  | USB_EXT0_SSRX0_P |
| SOM_HSIO0_TX_N  | USB_EXT0_SSRX0_N |
| SOM_HSIO0_RX_P  | USB_EXT0_SSRX1_P |
| SOM_HSIO0_RX_N  | USB_EXT0_SSRX1_N |

##### SOM_HSIO1
SOM_HSIO1 is used for providing USB 3.x for the second USB 3 Type-A port.

| SoM Net Name    | Device Net Name  |
| --------------- | ---------------- |
| SOM_HSIO1_TX_P  | USB_EXT1_SSRX0_P |
| SOM_HSIO1_TX_N  | USB_EXT1_SSRX0_N |
| SOM_HSIO1_RX_P  | USB_EXT1_SSRX1_P |
| SOM_HSIO1_RX_N  | USB_EXT1_SSRX1_N |

##### SOM_HSIO2
SOM_HSIO2 is currently unused on MediaCow Touch 2 Lite "Curitiba".

##### SOM_HSIO3
SOM_HSIO3 is currently unused on MediaCow Touch 2 Lite "Curitiba".

##### SOM_HSIO6
SOM_HSIO6 is used for providing a single PCIe lane for the M.2 Key E slot.

| SoM Net Name    | Device Net Name  |
| --------------- | ---------------- |
| SOM_HSIO6_TX_P  | PCIE_M2E_TX_P    |
| SOM_HSIO6_TX_N  | PCIE_M2E_TX_N    |
| SOM_HSIO6_RX_P  | PCIE_M2E_RX_P    |
| SOM_HSIO6_RX_N  | PCIE_M2E_RX_N    |

##### SOM_HSIO8/SOM_HSIO9/SOM_HSIO10/SOM_HSIO11
SOM_HSIO8/SOM_HSIO9/SOM_HSIO10/SOM_HSIO11 are used for providing four PCIe lanes for the M.2 Key M slot.

| SoM Net Name    | Device Net Name  |
| --------------- | ---------------- |
| SOM_HSIO8_TX_P  | PCIE_M2M_TX0_P   |
| SOM_HSIO8_TX_N  | PCIE_M2M_TX0_N   |
| SOM_HSIO8_RX_P  | PCIE_M2M_RX0_P   |
| SOM_HSIO8_RX_N  | PCIE_M2M_RX0_N   |
| SOM_HSIO9_TX_P  | PCIE_M2M_TX1_P   |
| SOM_HSIO9_TX_N  | PCIE_M2M_TX1_N   |
| SOM_HSIO9_RX_P  | PCIE_M2M_RX1_P   |
| SOM_HSIO9_RX_N  | PCIE_M2M_RX1_N   |
| SOM_HSIO10_TX_P | PCIE_M2M_TX2_P   |
| SOM_HSIO10_TX_N | PCIE_M2M_TX2_N   |
| SOM_HSIO10_RX_P | PCIE_M2M_RX2_P   |
| SOM_HSIO10_RX_N | PCIE_M2M_RX2_N   |
| SOM_HSIO11_TX_P | PCIE_M2M_TX3_P   |
| SOM_HSIO11_TX_N | PCIE_M2M_TX3_N   |
| SOM_HSIO11_RX_P | PCIE_M2M_RX3_P   |
| SOM_HSIO11_RX_N | PCIE_M2M_RX3_N   |

#### SOM_I2C
Usage of I2C on the SoM is minimal in both versions of MediaCow Touch 2 as the embedded controller is used for most I2C communication.

I2C2_SDA/I2C2_SCL is the only I2C bus used on the SoM.

##### SOM_I2C2_SCL/SOM_I2C2_SDA
SOM_I2C2_SCL/SOM_I2C2_SDA are used for communication between the SoM and the embedded controller.

#### SOM_I2S_
SOM_I2S_ connections are unused when the Tempo/IDT 92HD95 CODEC is used.

These connections are labeled in case another audio CODEC is used.

#### SOM_RTC_VBAT
SOM_RTC_VBAT is used to power the RTC independently of the main power supply. A coin cell battery on-board supplies this power.

#### SOM_SATAXPCIE0/SOM_SATAXPCIE1
SOM_SATAXPCIE0 is also known as GPP_E0 and SOM_SATAXPCIE1 is also known as GPP_A12.

SOM_SATAXPCIE0/SOM_SATAXPCIE1 is unused since neither version of MediaCow Touch 2 makes use of integrated SATA and is instead, the pins are exposed for debugging purposes.

#### SOM_SBK0/SOM_SBK1/SOM_SBK2/SOM_SBK3
SOM_SBK0/SOM_SBK1/SOM_SBK2/SOM_SBK3, being GPP_D0, GPP_D1, GPP_D2, and GPP_D3 respectively are used as part of the N100/N305's Serial Blink functionality. They are used for debugging purposes. They are exposed through test points or a pin header if there is enough space left on the PCB.

Each pin has this description in the Intel Processor and Intel Core i3 N-Series Datasheet Volume 1:
```
This function provides the capability to serialize POST or
other messages on the pin to a serial monitor. The Serial Blink message is
programmed through the Serial Blink Command/Status and Serial Blink Data
registers. Refer to Volume 2 for details.
```

#### SOM_SML_SCL/SOM_SML_SDA/SOM_SML_ALT
SOM_SML is used to communicate with the N100/N305's integrated USB Type-C ports using a protocol called SMLink. Not much is known about this protocol but it is crucial for the function of the USB Type-C ports and battery management.

#### SOM_UARTx
SOM_UART0_TX/RX is used as a serial console for debugging. It is exposed using a header on the carrier board and may not be connected to anything else.

#### SOM_USBx
This table describes the purpose of each USB port on the SoM.

| Port        | Purpose     |
| ----------- | ----------- |
| SOM_USB2_P1 | Ext. USB 3  |
| SOM_USB2_P2 | Ext. USB 3  |
| SOM_USB2_P3 | M.2 Key E   |
| SOM_USB2_P4 |             |
| SOM_USB2_P5 | TCP Port 1  |
| SOM_USB2_P6 | TCP Port 2  |
| SOM_USB2_P7 | Webcam      |
| SOM_USB2_P8 |             |

Each USB pair has the following nets:
- SOM_USB2_Px_P
- SOM_USB2_Px_N

#### SOM_VSYS
This is the main power supply for the SoM, after the BTS7006-1EPP load switch that is controlled by the embedded controller.

### TCP_ - USB Type-C Subsystem
A TPS65988 is used for USB Type-C management for both ports.


#### Type-C Port 0 - TCP0_

##### TCP0_DP/TCP0_DN
Differential pair for USB 2.0 over USB Type-C.

##### TCP0_HPD
USB Type-C Hot-Plug Detect used for DisplayPort alternate mode.

##### TCP0_TX0_P/TCP0_TX0_N
First differential pair for USB 3.0 over USB Type-C.

220nF capacitors are in-line between this net and the connector as recommended.

A TPD4USB_EXT30 is used for overvoltage protection on these lines.

##### TCP0_TX1_P/TCP0_TX1_N
Second differential pair for USB 3.0 over USB Type-C.

220nF capacitors are in-line between this net and the connector as recommended. 

A TPD4USB_EXT30 is used for overvoltage protection on these lines.

##### TCP0_TXRX0_P/TCP0_TXRX0_N
Differential pair for USB 3.0 over USB Type-C.

##### TCP0_TX0_P/TCP0_TX0_N
Differential pair for USB 3.0 over USB Type-C.

#### Type-C Port 1 - TCP1_

##### TCP1_DP/TCP1_DN
Differential pair for USB 2.0 over USB Type-C.

##### TCP1_HPD
USB Type-C Hot-Plug Detect used for DisplayPort alternate mode.

##### TCP1_TX0_P/TCP1_TX0_N
First differential pair for USB 3.0 over USB Type-C.

220nF capacitors are in-line between this net and the connector as recommended.

A TPD4USB_EXT30 is used for overvoltage protection on these lines.

##### TCP1_TX1_P/TCP1_TX1_N
Second differential pair for USB 3.0 over USB Type-C.

220nF capacitors are in-line between this net and the connector as recommended. 

A TPD4USB_EXT30 is used for overvoltage protection on these lines.

##### TCP1_TXRX0_P/TCP1_TXRX0_N
Differential pair for USB 3.0 over USB Type-C.

##### TCP1_TX0_P/TCP1_TX0_N
Differential pair for USB 3.0 over USB Type-C.

#### *Optional* - SPI Flash - TCP_SPI_
As a precaution, pads for an SPI flash memory are included on the carrier board in case it cannot be configured by an external device such as SMEC.

##### TCP_SPI_3V3
This is the 3.3V supply for the SPI flash, it is provided by the integrated LDO in the TPS65988 as the description for the pin suggests that it is what is used to power the SPI flash.

##### TCP_SPI_CS
This is the chip select pin for the SPI flash.

##### TCP_SPI_CLK
This is the clock pin for the SPI flash.

##### TCP_SPI_MOSI
This is the master (TPS65988) output, slave (SPI flash) input pin for the SPI flash.

The pull-up resistor is marked as Do not Populate and exists as a precautionary measure for the case where a pull-up resistor may be needed.

##### TCP_SPI_MISO
This is the master (TPS65988) input, slave (SPI flash) output pin for the SPI flash.

##### TCP_SPI_WP
This net is unused and only exists to name the connection between the pin and a pull-up resistor.

##### TCP_SPI_HOLD
This net is unused and only exists to name the connection between the pin and a pull-up resistor.


### VSYS_ - System Power
VSYS itself is a net that is after the battery charge IC, it can be anywhere within 12 to 20v.

#### VSYS_SOM
This is the switched power supply for the SoM, after the BTS7006-1EPP load switch that is controlled by the embedded controller.

#### VSYS_SW_EN
This is the enable pin for the load switch for the SoM.

