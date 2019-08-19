# lulzbot_mini_dual_wipe_gcode
gcode for https://www.thingiverse.com/thing:1976831

## Mini 1 on Cura 3.2+

```
Here's the change for Mini 1 with the new firmware/Cura 3.2 (above is for Mini 2):

G1 X110 Y178 F4000 ; wiping
G1 X115 Y176 Z-0.5 F1000 ; wiping

G1 Z4 ; -- raise z prepare for move to secondary wiper
G1 X105 Y181 ; -- right end of secondary wiper
G1 Z1 ; -- Move down to pad
G1 X85 Y181.5 F4000 ; -- wipe off lint
G1 X105 Y181 F4000 ; -- wipe off lint
G1 X65 Y181.5 F4000 ; -- wipe off lint
G1 X85 Y181 Z0.5 F4000 ; -- wipe off lint
G1 X49 Y181.5 F3000 ; -- wipe off lint
G1 X69 Y181 F3000 ; -- wipe off lint
G1 X49 Y181.5 F2000 ; -- wipe off lint

G1 Z10 ; raise extruder
G28 X0 Y0 ; re-home to account for build variance of earlier mini builds
```
