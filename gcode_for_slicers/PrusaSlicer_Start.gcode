; M190 S0
; M109 S0  ; uncomment to remove set&wait temp gcode added automatically after this start gcode
print_start EXTRUDER=[first_layer_temperature[initial_tool]] BED=[first_layer_bed_temperature]
G28          ;home all axes
M83          ;set extrusion to relative
PRINT_BED_MESH_CALIBRATE AREA_START={first_layer_print_min[0]},{first_layer_print_min[1]} AREA_END={first_layer_print_max[0]},{first_layer_print_max[1]}
G1 Z30
G28
clean_nozzle_only
M420 S1 Z2   ;Restore leveling
G92 E0       ;Reset Extruder
G21          ;Set units to milleters
G90          ;use absolute coordinates
M82          ;use absolute distances for extrusion
