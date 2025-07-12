MediaCow Touch 2 makes use of the LattePanda Mu System on Module.

## Hardware
Originally, MediaCow Touch 2 was to use the N100 variant of the LattePanda Mu until the N305 variant became available in January 2025.

Though the N100 and N305 are intended as a low-power mobile solution for devices such as Chromebooks, it is significantly more powerful than any ARM-based SoC I could find on a System on Module, including the Rockchip RK3399 on the Graperain GR3399 that was originally going to be used in the project and even more than the Allwinner A64 that was present in MediaCow Touch 1.

After testing the System on Module with a [couple games in early July 2024 on provided Windows 11](/blog/mct2_p1/), I determined that the N100's performance is more than enough for what I expected to use the device for. 

### Memory
On the product page, it is mentioned that the module has optional "in-band ECC". This means that a part of the memory would be reserved for storing error correction data. This is different from ECC memory where there are dedicated DRAM ICs and extra memory bus bits for storing error correcting codes. I do not consider this feature to be "true ECC" memory and it may be disabled if it has too much of an impact over performance.

