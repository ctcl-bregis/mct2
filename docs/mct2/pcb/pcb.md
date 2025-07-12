This page and subpages cover the PCB design of MediaCow Touch 2 and MediaCow Touch 2 Lite.

## Subpages

{{button|page=/projects/mct2/pcb/lite/}}
{{button|page=/projects/mct2/pcb/full/}}

## Notes
These notes apply to both MediaCow Touch 2 "Paris" and MediaCow Touch 2 Lite "Curitiba".

### Infineon MOSFETs
For Infineon transistors using TDSON-8 and TSDSON-8, the following pins are assigned to the pins on the KiCAD symbol and footprint:

| Chip pin   | KiCAD pin | Purpose |
| ---------- | --------- | ------- |
| 1, 2, 3    | 1         | Source  |
| 4          | 2         | Gate    |
| 5, 6, 7, 8 | 3         | Drain   |

Though these devices technically have eight pins, in the schematic, they have three pins.

### Use of MEMS oscillators
Even in larger packages, helium could still seep into the package of MEMS oscillator over time, reducing reliability in environments where there is a high concentration of helium.

Since the benefit of using a MEMS oscillator on MediaCow Touch 2 is near non-existant, where size and battery is plentiful, a quartz oscillator is to be used instead for SMEC (STM32/SP7021).


