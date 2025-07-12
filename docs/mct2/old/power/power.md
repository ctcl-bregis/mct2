Power management is one of the more complex parts of the project. Power regulators are expected to dominate the amount of ICs (integrated circuits; chips) used in the design.

## Overview
As a tablet computer, MediaCow Touch 2 contains a rechargeable battery pack.

MediaCow Touch 2 would charge off from USB Type-C Power Delivery that is supported by both USB Type-C ports present.

## LattePanda Mu
The LattePanda supports a wide voltage input of 9v to 20v, this allows the module to be powered directly off from system power that could be anywhere between 12v (worst case) and 20v.

## Battery
With difficulties finding battery packs for DIY usage that have the ability to report state-of-charge; have a fuel gauge. I used a battery pack intended as a replacement battery pack for an existing laptop, specifically the HP FM08 used in the HP OMEN 17-an008ca among others. The pinout and connector type is unknown at the moment.

In January 2025, I had the idea of making my own battery pack, using four of Adafruit's 10050mAh 3.7v battery packs in a 4S3P configuration using a custom BMS board, resulting in a 14.8v 10Ah (148.74Wh) battery pack. This is about 3.72 times the battery capacity of the [Steam Deck](https://www.steamdeck.com/en/hardware) at 40Wh and 1.7 times the capacity of the HP FM08 battery pack at 86Wh.



## Voltage Supplies

### System Power - VSYS
System Power is the main supply that is directly from the battery or USB Type-C ports. Worst case voltage for the battery is 12v. Power from USB Type-C is expected to be 20v.

This supply is always available while the system is powered on or off.

### LattePanda Mu input voltage - VSYS_SW
VSYS_SW is a switched power supply that powers the LattePanda Mu. An Infineon BTS7003-1EPP is used to switch the voltage. Due to the relatively high voltage of VSYS, only automotive-grade parts such as the BTS7003-1EPP were available.

The BTS7003-1EPP has a unique sense pin feature that allows a microcontroller to read the voltage and current, a bit of research was done to see how this could be implemented with the SP7021, even going to a junkyard to see if I could find this component in a vehicle. Due to the part being recent, with the datasheet dating 2018, I have not been able to find this part in a vehicle. I used this as more of an excuse to go to the junkyard.

As recommended in the datasheet for the BTS7003-1Epp, a zener diode on the sense output is used to protect the microcontroller from possible overvoltage.

### SMEC input voltage - SMEC_5V
SMEC_5V is a pre-regulated 5v supply that feeds directly to the PMIC for the SP7021. 

