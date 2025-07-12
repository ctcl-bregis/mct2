
## Material and Fabrication
MediaCow Touch 2's case is to be constructed from white PET(G) plastic as part of the theme.

Fortunately, the case's parts can be 3D printed whole as the total dimensions are within the 350x350mm bounds of a 3D printer available at a local makerspace.

## Design
The case is designed in OpenSCAD.

The case is split into three parts: the base, the display mount and the display cover. These parts are bolted together at four to six points. 

## Parts
The case is to be split into three parts: the **base**, the **display mount** and the **display cover**.

### Display Mount
The display mount is a tray-like structure that holds the display in place. The structure is made up of a single rectangle that is surrounded by walls.

The display mount was inspired by the System Cover Design Guidance section of the Innolux N156HGE and N140JCN-GS9 datasheet and various laptops that use a similar design such as the ThinkPad X240.

The display is held in place using double-sided tape that also acts as a spacer as the thickness of the display is wider at the LCD driver PCB area.

### Display Cover
The display cover is a thin layer that covers the outside edges of the display, acting as a screen bezel. 

### Base
The base component consists of the walls, PCB mounting points, connector cutouts and mounting points for connectors. It defines the structure of the device.

#### Side-mounted display mount
**Not present on MediaCow Touch 2 Lite**

The small touchscreen display on the side of the case is to be attached to the Side-Mounted Display PCB that contains the FPGA-based RGB-MIPI video bridge. The PCB is to be bolted at two or more points to mounting posts.

#### Keypad
**Not present on MediaCow Touch 2 Lite**

The keypad board, providing twelve tactile button switches. 

#### Buttons
**Only present on MediaCow Touch 2 Lite**

On MediaCow Touch 2 Lite, the buttons are to be mounted on the PCB with cutouts in the the case for the button caps.


