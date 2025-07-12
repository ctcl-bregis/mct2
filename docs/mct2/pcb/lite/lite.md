
## Block Diagram

![Simplified block diagram](/static/pages/projects/mct2/pcb/lite/lite.png)


## Net List

### AC_AVDD
### AC_DMIC_CLK
### AC_DMIC_D0
### AC_DMIC_D1
### AC_DVDD
### AC_EAPD
### AC_PCBEEP
### AC_PORTA_L
### AC_PORTA_R
### AC_PORTB_L
### AC_PORTB_R
### AC_PORTB_VREF
### AC_PORTC_L
### AC_PORTC_R
### AC_PORTC_VREF
### AC_PORTD_LN
### AC_PORTD_LP
### AC_PORTD_RN
### AC_PORTD_RP
### AC_SENSE_A

## BM_ - Battery Management

### BM_1V05
1.05v supply used as a PROCHOT pull-up reference.

It is supplied by a switching regulator-LDO combination.

### BM_CHRGOK
Charge status output from the BQ25723

### BM_CMPOUT

### BM_OTG_VAP_FRS
### BM_REGN
### BM_VDDA
### EC_BM_I2C_SCL
### EC_BM_I2C_SDA
### EC_IOVDD
### EC_PM_I2C_ALT
### EC_PM_I2C_SCL
### EC_PM_I2C_SDA

## HDMI_ - HDMI Output Connector

### HDMI_5V
### HDMI_5V_CN
### HDMI_AUX_N
### HDMI_AUX_P
### HDMI_CEC
### HDMI_CLKN
### HDMI_CLKP
### HDMI_CLK_N
### HDMI_CLK_P
### HDMI_CN_CEC
### HDMI_CN_HPD
### HDMI_CN_SCL
### HDMI_CN_SDA
### HDMI_CT_HPD
### HDMI_D0N
### HDMI_D0P
### HDMI_D1N
### HDMI_D1P
### HDMI_D2N
### HDMI_D2P
### HDMI_HPD
### HDMI_LS_OE
### HDMI_SCL
### HDMI_SDA
### HDMI_TX0_N
### HDMI_TX0_P
### HDMI_TX1_N
### HDMI_TX1_P
### HDMI_TX2_N
### HDMI_TX2_P
### HDMI_UTILITY
### HDMI_VCCA

## LED_ - Charge Port RGB Status LED

### LED_3V3
### LED_EN
### LED_VBM

## M2E_ - M.2 Key E Connector

### M2E_COEX1
### M2E_COEX2
### M2E_COEX3
### M2E_I2C_ALT
### M2E_I2S_CLK
### M2E_I2S_SDIN
### M2E_I2S_SDOUT
### M2E_I2S_WS
### M2E_LED1
### M2E_LED2
### M2E_PCIE_CLKREQ
### M2E_PCIE_RST
### M2E_PCIE_RX_N
### M2E_PCIE_RX_P
### M2E_PCIE_TX_N
### M2E_PCIE_TX_P
### M2E_PCIE_WAKE
### M2E_POWER_SNK
### M2E_POWER_SRC
### M2E_SDIO_CLK
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_CMD
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_DATA0
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_DATA1
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_DATA2
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_DATA3
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_RST
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_SDIO_WAKE
**Unused on MediaCow Touch 2 Lite "Curitiba"** as the LattePanda Mu does not have an SDIO interface.

### M2E_UART_CTS
### M2E_UART_RTS
### M2E_UART_RX
### M2E_UART_TX
### M2E_UART_WAKE
### M2E_UIM_SWP
### M2E_USB_DN
### M2E_USB_DP
### M2E_VD1
May be **Unused on MediaCow Touch 2 Lite "Curitiba"**

### M2E_VD2
May be **Unused on MediaCow Touch 2 Lite "Curitiba"**

### M2E_VD3
May be **Unused on MediaCow Touch 2 Lite "Curitiba"**

### M2E_WDISABLE1
Wireless disable signal, driven by SMEC

### M2E_WDISABLE2
Wireless disable signal, driven by SMEC

## SOM_ - System On Module (LattePanda Mu) Connections

### SOM_CSI_C_CLK_N/SOM_CSI_C_CLK_P
**Unused on MediaCow Touch 2 Lite "Curitiba"**.
CSI Port C Clock differential pair input for the CSI Camera.

### SOM_CSI_C_D0_N/SOM_CSI_C_D0_P
**Unused on MediaCow Touch 2 Lite "Curitiba"**.
CSI Port C Data differential pair lane 0.

### SOM_CSI_C_D1_N/SOM_CSI_C_D1_P
**Unused on MediaCow Touch 2 Lite "Curitiba"**.
CSI Port C Data differential pair lane 1.

### SOM_CSI_D_CLK_N/SOM_CSI_D_CLK_P
**Unused on MediaCow Touch 2 Lite "Curitiba"**.
CSI Port D Clock differential pair input for the CSI Camera.

### SOM_CSI_D_D0_N{slash}C_D3_N / SOM_CSI_D_D0_P{slash}C_D3_P
CSI Port D Data differential pair lane 0 **or** CSI Port C Data differential pair lane 3. **Unused on MediaCow Touch 2 Lite "Curitiba"**.

### SOM_CSI_D_D1_N{slash}C_D2_N / SOM_CSI_D_D1_P{slash}C_D2_P
CSI Port D Data differential pair lane 1 **or** CSI Port C Data differential pair lane 2. **Unused on MediaCow Touch 2 Lite "Curitiba"**.

### SOM_FAN1_PWM
**Unused on MediaCow Touch 2 Lite "Curitiba"** as no fans are used.
Super IO Fan 1 PWM output.

### SOM_FAN1_TAC
**Unused on MediaCow Touch 2 Lite "Curitiba"** as no fans are used.
Super IO Fan 1 Tachometer input.

### SOM_FAN2_PWM
**Unused on MediaCow Touch 2 Lite "Curitiba"** as no fans are used.
Super IO Fan 2 PWM output.

### SOM_FAN2_TAC
**Unused on MediaCow Touch 2 Lite "Curitiba"** as no fans are used.
Super IO Fan 2 Tachometer input.

### SOM_GSX_CLK
### SOM_GSX_DIN
### SOM_GSX_DOUT
### SOM_GSX_RESET
### SOM_GSX_SLOAD
### SOM_HDA_BCLK
### SOM_HDA_RST
### SOM_HDA_SDIN
### SOM_HDA_SDOUT
### SOM_HDA_SYNC

### SOM_HSIO_
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

#### SOM_HSIO0_RX_N
#### SOM_HSIO0_RX_P
#### SOM_HSIO0_TX_N
#### SOM_HSIO0_TX_P
#### SOM_HSIO1_RX_N
#### SOM_HSIO1_RX_P
#### SOM_HSIO1_TX_N
#### SOM_HSIO1_TX_P
#### SOM_HSIO2_RX_N
#### SOM_HSIO2_RX_P
#### SOM_HSIO2_TX_N
#### SOM_HSIO2_TX_P
#### SOM_HSIO3_RX_N
#### SOM_HSIO3_RX_P
#### SOM_HSIO3_TX_N
#### SOM_HSIO3_TX_P
#### SOM_HSIO6_RX_N
#### SOM_HSIO6_RX_P
#### SOM_HSIO6_TX_N
#### SOM_HSIO6_TX_P
#### SOM_HSIO8_RX_N
#### SOM_HSIO8_RX_P
#### SOM_HSIO8_TX_N
#### SOM_HSIO8_TX_P
#### SOM_HSIO9_RX_N
#### SOM_HSIO9_RX_P
#### SOM_HSIO9_TX_N
#### SOM_HSIO9_TX_P
#### SOM_HSIO10_RX_N
#### SOM_HSIO10_RX_P
#### SOM_HSIO10_TX_N
#### SOM_HSIO10_TX_P
#### SOM_HSIO11_RX_N
#### SOM_HSIO11_RX_P
#### SOM_HSIO11_TX_N
#### SOM_HSIO11_TX_P
### SOM_I2C2_SCL
### SOM_I2C2_SDA
### SOM_I2C3_SCL
### SOM_I2C3_SDA
### SOM_I2C4_SCL
### SOM_I2C4_SDA
### SOM_I2C5_SCL
### SOM_I2C5_SDA
### SOM_I2S_MCLK
### SOM_I2S_RXD
### SOM_I2S_SCLK
### SOM_I2S_SFRM
### SOM_I2S_TXD
### SOM_PCIE_CLKREQ3
### SOM_PCIE_CLKREQ4
### SOM_PCIE_PLTRST
### SOM_PCIE_REF0_N
### SOM_PCIE_REF0_P
### SOM_PCIE_REF1_N
### SOM_PCIE_REF1_P
### SOM_PCIE_REF2_N
### SOM_PCIE_REF2_P
### SOM_PCIE_REF3_N
### SOM_PCIE_REF3_P
### SOM_PCIE_REF4_N
### SOM_PCIE_REF4_P
### SOM_PCIE_WAKE
### SOM_PROCHOT
### SOM_PWRBTN
### SOM_RSTBTN
### SOM_RTC_BAT
### SOM_SATAXPCIE0
### SOM_SATAXPCIE1
### SOM_SBK0
### SOM_SBK1
### SOM_SBK2
### SOM_SBK3
### SOM_SIO_SLS_S0
### SOM_SIO_SLS_S3

### SOM_SIO_UART - System UART output
Supposedly these pins are used for system UART console output.

#### SOM_SIO_UART_RX
#### SOM_SIO_UART_TX

### SOM_SMB_ALT
### SOM_SMB_SCL
### SOM_SMB_SDA

### SOM_SML_ - Intel SMLink connections

#### SOM_SML_ALT
#### SOM_SML_PMCALT
#### SOM_SML_SCL
#### SOM_SML_SDA

### SOM_SPI_ - SPI connections
This SPI connection is used for both external BIOS flash and TPM.

#### SOM_SPI_BIOS_SEL
Switch to select on-module BIOS flash or on-board BIOS flash.

May be connected to a PCB jumper or DIP switch to assert high or low.

#### SOM_SPI_CLK
SPI clock output

#### SOM_SPI_CS
SPI chip select output for BIOS flash.

#### SOM_SPI_CS2
SPI chip select output for TPM.

#### SOM_SPI_IO0_MOSI
SPI data output from SoM or QSPI Data 0.

#### SOM_SPI_IO1_MISO
SPI data input to SoM or QSPI Data 1.

#### SOM_SPI_IO2
QSPI Data 2 from or to SoM.

#### SOM_SPI_IO3
QSPI Data 3 from or to SoM.

#### SOM_SPI_TPM_IRQ
SPI interrupt from TPM.

#### SOM_SPI_VCC
Dedicated 3.3v for BIOS flash and TPM.

### SOM_SPKR_SATALED
### SOM_SUSCLK
### SOM_TSENSE
### SOM_UART0_RX
### SOM_UART0_TX
### SOM_UART1_RX
### SOM_UART1_TX
### SOM_UART2_RX
### SOM_UART2_TX

#### SOM_USB2_
The LattePanda Mu SoM exposes eight USB 2.0 interfaces.

Since USB2 interfaces 1, 2, 5 and 6 are able to be assigned to USB Type-C (TCP) ports, 5 and 6 are used for the USB Type-C ports on both versions of MediaCow Touch 2.

Since USB 3.0 connectors have both USB 2 and USB 3 links, USB 2.0 interfaces 1 and 2 are used for the USB 3.2 Type-A ports on both versions of MediaCow Touch 2.

| Port    | Purpose     |
| ------- | ----------- |
| USB2_P1 | Ext. USB 3  |
| USB2_P2 | Ext. USB 3  |
| USB2_P3 |             |
| USB2_P4 |             |
| USB2_P5 | TCP Port 1  |
| USB2_P6 | TCP Port 2  |
| USB2_P7 |             |
| USB2_P8 |             |


#### SOM_USB2_P1_N
#### SOM_USB2_P1_P
#### SOM_USB2_P2_N
#### SOM_USB2_P2_P
#### SOM_USB2_P3_N
#### SOM_USB2_P3_P
#### SOM_USB2_P4_N
#### SOM_USB2_P4_P
#### SOM_USB2_P5_N
#### SOM_USB2_P5_P
#### SOM_USB2_P6_N
#### SOM_USB2_P6_P
#### SOM_USB2_P7_N
#### SOM_USB2_P7_P
#### SOM_USB2_P8_N
#### SOM_USB2_P8_P
### SOM_USB_OC
### SOM_VSYS

## USB Type C

### TCP0_AUX_N
### TCP0_AUX_P
### TCP0_CC1
### TCP0_CC1_CN
### TCP0_CC2
### TCP0_CC2_CN
### TCP0_DN
### TCP0_DP
### TCP0_HPD
### TCP0_PPHV
### TCP0_PPHV_EN
### TCP0_SBU1
### TCP0_SBU1_CN
### TCP0_SBU2
### TCP0_SBU2_CN
### TCP0_TX0_N
### TCP0_TX0_P
### TCP0_TX1_N
### TCP0_TX1_P
### TCP0_TXRX0_N
### TCP0_TXRX0_P
### TCP0_TXRX1_N
### TCP0_TXRX1_P
### TCP0_VBUS
### TCP1_AUX_N
### TCP1_AUX_P
### TCP1_CC1
### TCP1_CC1_CN
### TCP1_CC2
### TCP1_CC2_CN
### TCP1_DN
### TCP1_DP
### TCP1_HPD
### TCP1_PPHV
### TCP1_PPHV_EN
### TCP1_SBU1
### TCP1_SBU1_CN
### TCP1_SBU2
### TCP1_SBU2_CN
### TCP1_TX0_N
### TCP1_TX0_P
### TCP1_TX1_N
### TCP1_TX1_P
### TCP1_TXRX0_N
### TCP1_TXRX0_P
### TCP1_TXRX1_N
### TCP1_TXRX1_P
### TCP1_VBUS
### TCP_ADCIN1
### TCP_ADCIN2
### TCP_DRAIN1
### TCP_DRAIN2
### TCP_LDO_1V8
### TCP_LDO_3V3
### TCP_PA_EXT_EN
### TCP_PB_EXT_EN
### TCP_PP_5V
### TCP_SPI_3V3
### TCP_SPI_CLK
### TCP_SPI_CS
### TCP_SPI_HOLD
### TCP_SPI_MISO
### TCP_SPI_MOSI
### TCP_SPI_WP
### TCP_VIN_3V3
### USB_5V
### USB_EXT0_EN
### USB_EXT0_FLT
### USB_EXT0_SSRX0_N
### USB_EXT0_SSRX0_P
### USB_EXT0_SSRX1_N
### USB_EXT0_SSRX1_P
### USB_EXT0_USB2_N
### USB_EXT0_USB2_P
### USB_EXT0_VBUS
### USB_EXT1_EN
### USB_EXT1_FLT
### USB_EXT1_SSRX0_N
### USB_EXT1_SSRX0_P
### USB_EXT1_SSRX1_N
### USB_EXT1_SSRX1_P
### USB_EXT1_USB2_N
### USB_EXT1_USB2_P
### USB_EXT1_VBUS
### VBAT
### VBUS
### VSYS
### VSYS_SOM
### VSYS_SW_EN