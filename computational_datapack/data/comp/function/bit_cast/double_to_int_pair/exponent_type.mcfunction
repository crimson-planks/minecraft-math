#E_location, -_location
#0 no "E"
#1 E
#2 E-
execute if score E_location comp_double_to_int_pair matches 0 run return 0
scoreboard players operation --E comp_double_to_int_pair = -_location comp_double_to_int_pair
scoreboard players operation --E comp_double_to_int_pair -= E_location comp_double_to_int_pair
execute if score --E comp_double_to_int_pair matches 1 run return 2
return 1