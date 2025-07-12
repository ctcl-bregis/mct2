Choosing the display used in MediaCow Touch 2 was one of the first research efforts in the project during the 2024 development period.

## Display Selection
I prefer AAS (Azimuthal Anchoring Switch) IPS technology that is specific to Innolux panels.

At first, after weeks of research, I decided to use the 11.6" touchscreen from DFRobot as it is intended for use with LattePanda systems, including the Mu. It was also the lowest cost option for a display of its size and resolution.

Late in 2024, I found out that laptop displays with integrated touchscreens can be found inexpensively though often they are 13.3" or larger. Though I am already reaching the limit of what could be printed on 3D printers available to me, I may be able to use panels up to 14".

On February 15, 2025, I decided to use the Innolux N140JCN-GS9 over the DFRobot FIT0955 display and the case design was updated to reflect this. This has the device very close to the 350mm x 350mm limit of the 3D printer currently available at a local makerspace; Build, RVA. 

## Display Adapter PCB
A display adapter PCB was designed to convert the 40-pin, 4-lane eDP connector of the LattePanda Mu to the 40-pin, 2-lane + touchscreen eDP connector of the N140JCN-GS9.

I left a separate connector for USB data since the connector has pins for both I2C and USB, left reserved if the specific bus is not used. For example, on the N140JCN-GS9 specifically does not have so the USB pins are left unused.

The USB and I2C connectors on the adapter PCB should not be both connected at the same time.

*TODO: list pinout here*

