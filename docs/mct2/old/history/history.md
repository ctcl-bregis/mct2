
## Beginning - 2021
The project technically started in early March 2021.

Ideas for MediaCow Touch 2 date back to March 2021 as mentioned before. The initial idea at the time surrounded the use of a soldered-down Rockchip RK3588 SoC with ten DDR4 DRAM ICs, specifically Nanya NT5AD1024M8A3, for 8GB of memory with ECC. This would have been almost impossible if not impossible for me to design at the time.

Halfway through March 2021 (March 12, 2021 according to emails), I decided to use the Graperain GR3399 System on Module that uses the Rockchip RK3399 and 2GB of DDR3 RAM (4x Samsung K4B4G1649E-BCMA). The development kit including the SoM was ordered in February 2022 but ended up never being used for the project. I preferred to use the MXM3.0 ("Gold Finger") format of the System on Module over the "Stamp hole" G3399 so during the assembly stage, I could just remove a couple screws to remove the module from the development kit and install the module into the prototype without having to desolder and risk damaging the module and/or development board.

## 2022 
In 2022, not knowing anything about circuit design and during the peak of the global chip shortage, I made multiple attempts to work on the project but I never got anywhere.

Later in 2022, I found out about various System on Modules that became available from Banana Pi, who supplied the board for MediaCow Touch 1, that used the newer and more powerful Rockchip RK3588.

## 2023
Throughout 2022 and 2023, I stopped working on hardware design projects due to their complexity and focused on software instead.

## 2024
In May 2024, I have found out about the [LattePanda Mu](https://www.lattepanda.com/lattepanda-mu) System on Module. This module uses an x86-64 processor instead of an ARM64 SoC. [According to Intel](https://ark.intel.com/content/www/us/en/ark/products/231803/intel-processor-n100-6m-cache-up-to-3-40-ghz.html), the N100 is targeted towards use in mobile devices. Using an x86 processor has its benefits including better software support and laptop-like performance. I signed up for the LattePanda Mu Free Trial Event to receive a LattePanda Mu System on Module along with its Lite Carrier Board.

In June 2024, I received the LattePanda Mu System on Module and Lite Carrier Board. I have since started working on the hardware design for the MediaCow Touch 2.

Throughout the development process from July 2024 to September 2024, the project became more and more complex. In November 2024, I decided to basically start over with the project, using what I had before as a reference.

## Late 2024 and early 2025
By January 2025, project development has slow, if not stopped, due to the lack of funding and me returning to college.
