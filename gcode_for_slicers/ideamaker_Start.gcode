print_start 
G28          ;home all axes
M83          ;set extrusion to relative
PRINT_BED_MESH_CALIBRATE AREA_START={print_pos_min_x},{print_pos_min_y} AREA_END={print_pos_max_x},{print_pos_max_y}
G1 Z30
G28
clean_nozzle_only
G1 Z5 F3000                  ;rasie z
G1 X5 Y20 Z0.3 F8000  ;go intro start pos
G1 X60 E9 F800             ;thick line
G1 X90 E4 F1000           ;medium line
G1 X120 E3.5 F1200      ;slim line
G1 X118 E-1 Z0.5 F1500 ;wipe
G92 E0