;This G-Code has been generated specifically for the LulzBot Mini with Aerostruder V1
; AJE double wipe,  10/11/21, for CURA-lulzbot
;
; works with firmware (use M115 gcode to see):
;   FIRMWARE_VERSION:1.1.9.34 EXTRUDER_TYPE:Aerostruder
;
M73 P0 ; clear GLCD progress bar
M75 ; Start GLCD Timer
G26 ; clear potential 'probe fail' condition
M107 ; disable fans
M420 S0 ; disable leveling matrix
G90 ; absolute positioning
M82 ; set extruder to absolute mode
G92 E0 ; set extruder position to 0
M140 S{material_bed_temperature_layer_0} ; start bed heating up
G28 ; home all axes
G0 X0 Y187 Z156 F200 ; move away from endstops
M109 R{material_soften_temperature} ; soften filament before retraction
G1 E-15 F75 ; retract filament
M109 R{material_wipe_temperature} ; wait for extruder to reach wiping temp
G1 X45 Y173 F11520 ; move above wiper pad
G1 Z2.5 F1200 ; push nozzle into wiper
G1 X42 Y173 Z2 F4000 ; wiping
G1 X52 Y171 Z2 F4000 ; wiping
G1 X42 Y173 Z2.5 F4000 ; wiping
G1 X52 Y171 F4000 ; wiping
G1 X42 Y173 F4000 ; wiping
G1 X52 Y171 F4000 ; wiping
G1 X42 Y173 F4000 ; wiping
G1 X52 Y171 F4000 ; wiping
G1 X57 Y173 F4000 ; wiping
G1 X77 Y171 F4000 ; wiping
G1 X57 Y173 F4000 ; wiping
G1 X77 Y171 F4000 ; wiping
G1 X57 Y173 F4000 ; wiping
G1 X87 Y171 F4000 ; wiping
G1 X77 Y173 F4000 ; wiping
G1 X97 Y171 F4000 ; wiping
G1 X77 Y173 F4000 ; wiping
G1 X97 Y171 F4000 ; wiping
G1 X77 Y173 F4000 ; wiping
G1 X97 Y171 F4000 ; wiping
G1 X107 Y173 F4000 ; wiping
G1 X97 Y171 F4000 ; wiping
G1 X107 Y173 F4000 ; wiping
G1 X97 Y171 F4000 ; wiping
G1 X107 Y173 F4000 ; wiping
G1 X112 Y171 Z2 F1000 ; wiping
G1 Z8 ; -- raise z prepare for move to secondary wiper
G1 X105 Y181 ; -- right end of secondary wiper
G1 Z3 ; -- Move down to pad
G1 X85 Y181.5 F4000 ; -- wipe off lint
G1 X105 Y181 F4000 ; -- wipe off lint
G1 X65 Y181.5 F4000 ; -- wipe off lint
G1 X85 Y181 Z3.5 F4000 ; -- wipe off lint
G1 X49 Y181.5 F3000 ; -- wipe off lint
G1 X69 Y181 F3000 ; -- wipe off lint
G1 X49 Y181.5 F2000 ; -- wipe off lint
G1 Z10 ; raise extruder
G28 X0 Y0 ; home X and Y
G0 X0 Y187 F200 ; move away from endstops
M109 R{material_probe_temperature} ; wait for extruder to reach probe temp
M204 S300 ; set probing acceleration
G29 V4       ; start auto-leveling sequence
M420 S1   ; enable leveling matrix
M425 Z    ; use measured Z backlash for compensation
M425 Z F0 ; turn off measured Z backlash compensation. (if activated in the quality settings, this command will automatically be ignored)
M204 S2000 ; restore standard acceleration
G28 X0 Y0 ; re-home to account for build variance of earlier mini builds
G0 X0 Y187 F200 ; move away from endstops
G0 Y152 F4000 ; move in front of wiper pad
G4 S1 ; pause
M400 ; wait for moves to finish
M117 Heating... ; progress indicator message on LCD
M109 R{material_print_temperature_layer_0}  ; wait for extruder to reach printing temp
M190 R{material_bed_temperature_layer_0} ; wait for bed to reach printing temp
G1 Z2 E0 F75 ; prime tiny bit of filament into the nozzle
M117 Mini Printing... ; progress indicator message on LCD
M221 S74 ; Printer specific extrusion modifier.
