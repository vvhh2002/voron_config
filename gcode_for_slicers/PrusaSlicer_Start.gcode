;M104 S0 ; Stops PS/SS from sending temp waits separately
;M140 S0

print_start EXTRUDER={first_layer_temperature[initial_extruder]} BED=[first_layer_bed_temperature] 
G28          ;home all axes
M83          ;set extrusion to relative
PRINT_BED_MESH_CALIBRATE AREA_START={first_layer_print_min[0]},{first_layer_print_min[1]} AREA_END={first_layer_print_max[0]},{first_layer_print_max[1]}
clean_nozzle_only
G1 Z20
G28
M420 S1 Z2   ;Restore leveling
G92 E0       ;Reset Extruder
G21          ;Set units to milleters
G90          ;use absolute coordinates
M82          ;use absolute distances for extrusion