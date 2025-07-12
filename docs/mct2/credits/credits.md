## Software Used
Open Source software has been used whenever possible. 

### CAD and EDA

#### KiCAD
KiCAD is used to draw electrical schematics and design the carrier board PCB.

#### LibreCAD
LibreCAD was used for the first time on August 6 to record measurements of the battery pack that is used in the device.

Its use, however, was brief and was eventually replaced by QCAD.

#### QCAD
Starting January 1, 2025, QCAD is used for technical, mechanical drawings, taking place of draw.io for such task. Its use is still limited.

#### OpenSCAD 
OpenSCAD is used extensively for 3D design.

#### FreeCAD
FreeCAD was very briefly used for case design. No part of the current case design was done in FreeCAD.

### Planning and Documentation

#### draw.io/diagrams.net
draw.io is extensively used for rough physical diagrams and electrical block diagrams. The draw.io desktop client command line features are used by StaticSite to render .drawio files.

#### Git and GitHub
The MediaCow Touch 2 hardware design and software files are hosted on GitHub for anyone to see while having the ability to easily sync progress across devices in cases where I have to go somewhere.

#### StaticSite
StaticSite is used to generate this website starting December 31, 2024. Prior to this, website backends called "ctclsite-rust" and "ctclsite-python" were used to serve website content.

#### Discord
Using a chat service in as a way to dump ideas into categories has returned from MediaCow Touch 1 where I used a self-hosted Rocket.Chat instance for that purpose. This time I used a private "server" on Discord to brainstorm ideas. At the conclusion of the project, I would make a public release of the channel logs. 

#### MediaWiki
A self-hosted MediaWiki instance is used for personal documentation. It's role in MediaCow Touch 2, however, is very limited. 

#### STM32CubeMX
STM32CubeMX was used to select the microcontroller used as the embedded controller (SMEC) and plan its pinout until the switch to the SP7021 as the embedded controller.

#### Sourcegraph Cody + Claude 3.5/Claude 3.7/GPT-4o
Sourcegraph Cody has found extensive use in many of my projects, including this one, starting in late 2024. It is used for sentence completion in documentation and code completion in software and firmware development. Some case design with OpenSCAD was assisted by AI.

#### CircuitJS
[CircuitJS](https://falstad.com/circuit/) has been used to test ideas such as using Schottky diodes on the power inputs of SPI flash memory and connecting the IS pin of the Infineon BTS7006 to a microcontroller.

### Software Development
This software was used to develop software for the project.

#### VSCodium
VSCodium is used as the main editor for any software project, including this website. Content like these pages are written using VSCodium.

The 'Open Remote - SSH' extension played a crucial role during development as it let me edit files on the desktop PC from anywhwere like I am using VSCodium on that system.

## Hardware Used
Hardware used for development since May 2024:

**Format: Codename - Motherboard**

### Development Hardware

- LattePanda Mu N100
  - Experimentation
  - Communications
  - Research

### Workstations

- ASRock B550M Pro4
  - Circuit and device design
  - Documentation
  - Software development
  - Research
  - Communications
- HP ZBook Studio G3 15
  - Circuit and device design
  - Documentation
  - Software development
  - Research
  - Communications
- Lenovo ThinkPad T450s
  - Device design
  - Documentation
  - Research
- Lenovo ThinkPad T430s
  - Communications
  - Circuit design
  - Documentation
  - Research
  - Planning
- Apple iPhone XR (A1984)
  - Social media promotion
  - Research
  - Communications
- ASUS Zenfone 9 (AI2202)
  - Documentation
  - Communications
  - Research
  - Remote internet access
- Valve Steam Deck OLED (1030)
  - Communications
  - Documentation
  - Research
  - Planning
- Samsung Galaxy S7 WW (SM-G930F)
  - Communications
  - Research
  - Planning
- MediaCow Touch 1 (Banana Pi BPI-M64)
  - Communications
  - Media playback

Non-CTCL Hardware:
- Dell OptiPlex 7460 AIO - Brightpoint Community College MIDLRTC19928
  - Datasheet viewing

### Servers

- SVCS1 (pre-2025) - HP ProLiant BL460c G8
  - File storage host (Nextcloud)
  - Planning (MediaWiki)
  - DNS server
- SVCS1 (2025) - Supermicro X8DAi
  - DNS server
- WBSD1 - Supermicro X8SIE
  - File storage
- ROUTER1 - Supermicro X8SIE
  - Router
  - Remote access host

### Other

- Texas Instruments TI-Nspire CX
  - Formula calculation
- Flipper Zero FZ.1
  - Device debugging

## Locations

MediaCow Touch 2 was developed in the following locations:

- Atlantic Beach, North Carolina, United States
- Bramwell, West Virginia, United States
- Doswell, Virginia, United States
  - Kings Dominion
- Fort Myers Beach, Florida, United States
- Fort Myers, Florida, United States
- Midlothian, Virginia, United States
  - Brightpoint Community College Midlothian Campus
  - Clover Hill Public Library
  - Midlothian Library
- Orlando, Florida, United States
- Pocahontas, West Virginia, United States
- Richmond, Virginia, United States
  - Build, RVA
  - Maymont Estate
  - VCU Engineering East Hall Qimonda Atrium
  - The Pace Center (VCU)
- Verona Beach, New York, United States
- Canastota, New York, United States
- Cazenovia, New York, United States

Most development was done in Midlothian, Virginia.

This list excludes any work done from aircraft, which was an Airbus A320 for both the departing and return flights from Orlando, Florida during the August 2024 trip to the Fort Myers Beach area.

## Individuals and Organizations
This project was made possible by LattePanda where hardware and documentation was provided.

### Hardware
These organizations and individuals have provided hardware for me to use for development.

- Banana Pi - MediaCow Touch 2 Full 
- Chesterfield Auto Parts
- CrashSys (OEW; One-Eyed Willie)
- LattePanda
- Shenzhen Graperain Technology - 2022 Designs
- Tailorpixels - MediaCow Touch 2 Full

### Direct Technical Support
These organizations and individuals have provided direct technical support for development through email, chat and other means:

Individuals:
- Arya
  - eDP adapter board revision in April 2025

Organizations:
- Adafruit
  - Community support over Discord for battery management ideas
- GOWIN
  - Email support about MIPI DPHY capabilities, before switching to a Lattice FPGA for the RGB-MIPI bridge
- LattePanda
  - Support for hardware and software development over email and Discord
- Shenzhen Graperain Technology
  - 2022 RK3399-based design: email support and development files
- Tailorpixels
  - Tech support over email
- Tibbo Technology
  - Email support for receiving more information about the SP7021

### Technical Support
Organizations that provided guides, datasheets and other technical support documents that were used in development:

- Adafruit
- Advantech
- Altium
- Analog Devices (including Linear Technology Corporation and Maxim Integrated)
- Congatec
- Crystalfontz
- CTS
- Delta Electronics
- Dialog Semiconductor (including Silego)
- Diodes Incorporated
- ECS
- Flipper Devices
- Foxconn
- Framework Computer
- Fuzhou Rockchip
- GOWIN
- Hirose
- Infineon Technologies (including Cypress Technology and Qimonda)
- Innolux Display
- Intel
- ISSI
- JST
- Kinetic Technologies
- KIOXIA
- LOTES
- Lumissil
- MacroSilicon
- MediaTek
- Micron Technology
- Molex
- Monolithic Power Systems
- Nanya Technology
- Nexperia
- NXP
- Onsemi
- Raydium Corp.
- Renesas (including Intersil)
- Richtek
- Rohm
- Samsung Electro-Mechanics
- Samsung Electronics
- Samsung Semiconductor
- Shenzhen Graperain Technology
- Silergy
- SINOVOIP Banana Pi
- Sunplus Technology
- SiTime
- STMicroelectronics
- Super Micro Computer (hereinafter refered to as Supermicro)
- Tailorpixels
- Tempo Semiconductor (including IDT and SigmaTel)
- Texas Instruments
- Tibbo Technology
- Toradex
- Toshiba
- Valve Corporation
- Vishay (including Siliconix and General Semiconductor)
- Winbond Electronics
- Xi'an Aerosemi Technology
- YAGEO

## Inspiration
MediaCow Touch 2 takes inspiration from existing devices and media.

### Device Design
MediaCow Touch 2's design and hardware had inspiration from the following products:

- Ainol NOVO7 Paladin
  - Display mount ideas
- Apple MacBook various models from 2019 to 2022 with Touch Bar
  - Side-mounted display idea
- Apple iPhone 6S
  - Display selection
- Apple iPhone XR
  - Display selection
- ASUS Chromebook Flip C100P
  - Some inspiration for original Rockchip-based MediaCow Touch 2 idea (2021-2022)
  - Display selection
  - Embedded controller ideas
  - Battery management ideas
- ASUS Zenfone 9 AI2202
  - USB Type-C feature inspiration, specifically USB PD capabilities
- Banana Pi BPI-F2P/BPI-F2S
  - Circuit design reference
- Dell Latitude D630
  - Audio CODEC IC selection
- Flipper Devices Flipper Zero FZ.1
  - LED controller ideas
  - **MediaCow Touch 2 Full**: Original inspiration for SMEC's side-mounted display
- Framework Laptop 13 (11th Gen Intel)
  - USB Type-C feature and IC selection
  - Circuit design reference
- HP ZBook Studio G3 15
  - USB Type-C feature inspiration
  - Display selection
  - CPU cooling ideas
  - M.2 mount ideas
  - Some influence in choosing the audio CODEC IC
- HP(E) ProLiant BL460c G8, BladeSystem C3000 chassis, ProLiant DL380 G7
  - Inlet temperature sensor idea
- HP(E) BladeSytem C3000 chassis
  - **MediaCow Touch 2 Full**: Possible inspiration for SMEC
- LattePanda Mu Full Carrier
  - Circuit design reference
- LattePanda Mu Lite Carrier
  - Circuit design reference
- Lenovo 100e Chromebook 2nd Gen (11.6" Intel)
  - Status LED idea
  - USB Type-C feature ideas
- Lenovo ThinkPad T430s
  - Battery layout ideas
- Lenovo ThinkPad T450s
  - Battery layout ideas
- Lenovo ThinkPad X240
  - Display mount ideas
- Matterport Pro2
  - Battery layout ideas
  - CPU cooling ideas
- Microsoft Surface series
  - Overall physical design inspiration
- Microsoft Zune series
  - Original inspiration for MediaCow
- Nintendo Switch (2017)
  - Display selection
  - USB Type-C Power Delivery ideas
- Positivo BGH Y210
  - Camera placement idea
- Samsung Chromebook XE500C13
  - Display size comparison
  - Status LED idea
  - **MediaCow Touch 2 Lite**: passive cooling idea
  - **MediaCow Touch 2 Lite**: port selection
- Samsung Galaxy S7 SM-G930F
  - Status LED idea
  - Display selection
  - Camera ideas
- Samsung Galaxy Tab3 10.1 P5210
  - Used as an example of an x86-based tablet
- Supermicro H13SAE-MF
  - Socketed BIOS idea
  - TPM module pinout
- Valve Steam Deck LCD (1010) and OLED (1030)
  - Overall physical design inspiration
  - Device usage ideas
  - Component selection

### Media Inspirations

- OneShot (2016 game), OneShot World Machine Edition (2022/2024 game)
  - Major aesthetic inspiration
  - Use of Terminus for UI fonts and in documentation
  - Display video switch PCB idea being named "Solstice"
  - Clover symbol on PCB designs
- ULTRAKILL (2018-present game)
  - Use of VCR OSD Mono for UI fonts
  - reference in side-mounted display example code
- OK K.O. Let's Be Heroes (2017-2019 series)
  - Addition of "Cool S" symbol to all PCB designs for projects since MathPad (2022)
- Steven Universe (2013-2019 series), 2017 episode specifically
  - Idea of the addition of a strap to the device