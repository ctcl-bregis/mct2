While seemingly unneccesary, SMEC has a dedicated display mounted on the side of the device. This display is used to interact with the embedded controller directly, independent of the system.

## User Interface
Along with the keypad, the side-mounted display includes a capacitive touchscreen. 

## RGB-MIPI
An RGB-MIPI video bridge is required as the SP7021 does not have a MIPI DSI output. RGB-MIPI bridge ICs are scarce. I have considered Toshiba TC358778XBG though I was unable to receive extended information from Toshiba for this part. Another option is the use of an FPGA such as the Lattice LIF-MD6000-6MG81I where there is IP available for converting a variety of video standards to MIPI DSI/CSI, the IP is however non-free and may cost too much for a small-scale project such as this.

<img src="/static/pages/projects/mct2/smec/display/rgb2mipi.png" title="Possible solutions for RGB-MIPI"/>

In February 2025, I decided to make use of an **FPGA** for the RGB-MIPI bridge, though more expensive, it offers the most flexibility.

### RGB-MIPI Bridge Placement
In order to be able to use a larger variety of displays without making changes to the carrier PCB, the RGB-MIPI bridge IC would be placed on the button PCB (or a separate PCB if it is worth increasing the PCB count).

## Options
Multiple displays have been considered for use as the side-mounted display. The Tailorpixels TTH318BVE-01C was chosen due to its short height, being less than an inch (25.4mm), which reduces the overall thickness of the device. It is also unique in that it is an AMOLED display. It appears to have been introduced in November 2024 with its datasheet being dated August 13, 2024, which is likely why I have not seen it before.

### WF0299ATYAC2MNR0

- Vendor: Winstar Display
- Technology: IPS LCD
- Video Interface: MIPI DSI
- Resolution: 800x268
- Touch Interface: I2C
- Module Dimensions: 26.52mm x 78.2mm x 2.46mm
- Active Area: 24.12mm x 72.0mm

### MDT0299AIH-RGB

- Vendor: Midas Displays
- Technology: IPS LCD
- Video Interface: MIPI DSI
- Resolution: 800x268
- Touch Interface: SPI
- Module Dimensions: 26.96mm x 80.08mm x 1.66mm
- Active Area: 24.12mm x 72.00mm

### TOH323XVT-01C

- Vendor: Tailorpixels
- Technology: AMOLED
- Video Interface: MIPI DSI
- Resolution: 928x262
- Touch Interface: SPI
- Module Dimensions: 23.80mm x 81.05mm x 0.63mm
- Active Area: 22.008mm x 77.952mm

### TTH318BVE-01C

- Vendor: Tailorpixels
- Technology: IPS LCD
- Video Interface: MIPI DSI
- Resolution: 960x288
- Touch Interface: I2C
- Module Dimensions: 25.5mm x 85.3mm x 4.19mm
- Active Area: 23.07mm x 76.9mm