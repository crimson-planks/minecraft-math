#implements the Double.doubleToRawLongBits function in Java
#^ get the string representation (Double.toString() in Java), and then get convert it to an int pair.
#input
data get storage comp:input double_to_int_pair


execute store result score int_0 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 1
execute store result score int_32 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 4294967296

#get the string representation of the double by using JSON and by using text display
tellraw @a ["string_rep: ",{"storage": "comp:input","nbt": "double_to_int_pair"}]
execute in comp:compdim run data modify entity @e[distance=0..,limit=1,type=text_display,tag=entity_to_resolve_text] text set value "{\"storage\": \"comp:input\",\"nbt\": \"double_to_int_pair\"}"
execute in comp:compdim run data modify storage comp:tmp string_rep_resolved set from entity @e[distance=0..,limit=1,type=text_display,tag=entity_to_resolve_text] text

execute in comp:compdim run tellraw @a ["string_rep_resolved: ",{"storage":"comp:tmp","nbt": "string_rep_resolved"}]

tellraw @a ["0: ",{"score": {"name": "int_0", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["32: ",{"score": {"name": "int_32", "objective": "comp_double_to_int_pair"}}]


#17 is the minimum decimal digits
#format: "string_representation_of_doubleD"
#Since the way we test if a storage value is equal to another storage value is by using data modify and then checking the success value (1 if different, 0 if same)
data modify storage comp:tmp double_start_char set string storage comp:tmp string_rep_resolved 1 2
tellraw @a ["double_start_char: ",{"storage":"comp:tmp","nbt": "double_start_char"}]
data modify storage comp:tmp neg_test set from storage comp:tmp double_start_char
execute store success score is_not_neg comp_double_to_int_pair run data modify storage comp:tmp neg_test set value "-"
scoreboard players set sign comp_double_to_int_pair 1
scoreboard players operation sign comp_double_to_int_pair -= is_not_neg comp_double_to_int_pair
#0: positive, 1: negative
execute if score sign comp_double_to_int_pair matches 1 run data modify storage comp:tmp abs_double set string storage comp:tmp string_rep_resolved 2
execute if score sign comp_double_to_int_pair matches 0 run data modify storage comp:tmp abs_double set string storage comp:tmp string_rep_resolved 1
tellraw @a ["sign: ",{"score":{"name": "sign","objective": "comp_double_to_int_pair"}}]
tellraw @a ["abs_double: ",{"storage": "comp:tmp","nbt": "abs_double"}]
execute store result score length comp_double_to_int_pair run data get storage comp:tmp string_rep_resolved
scoreboard players remove length comp_double_to_int_pair 2
tellraw @a ["length: ",{"score":{"name": "length","objective": "comp_double_to_int_pair"}}]
scoreboard players operation length_m1 comp_double_to_int_pair = length comp_double_to_int_pair
scoreboard players operation length_m2 comp_double_to_int_pair = length comp_double_to_int_pair
scoreboard players operation length_m3 comp_double_to_int_pair = length comp_double_to_int_pair
scoreboard players operation length_m4 comp_double_to_int_pair = length comp_double_to_int_pair
scoreboard players operation length_m5 comp_double_to_int_pair = length comp_double_to_int_pair
scoreboard players operation length_m6 comp_double_to_int_pair = length comp_double_to_int_pair

scoreboard players remove length_m1 comp_double_to_int_pair 1
scoreboard players remove length_m2 comp_double_to_int_pair 2
scoreboard players remove length_m3 comp_double_to_int_pair 3
scoreboard players remove length_m4 comp_double_to_int_pair 4
scoreboard players remove length_m5 comp_double_to_int_pair 5
scoreboard players remove length_m6 comp_double_to_int_pair 6

data modify storage comp:arguments find_exponent set value {}

execute store result storage comp:arguments find_exponent.length_m1 int 1 run scoreboard players get length_m1 comp_double_to_int_pair
execute store result storage comp:arguments find_exponent.length_m2 int 1 run scoreboard players get length_m2 comp_double_to_int_pair
execute store result storage comp:arguments find_exponent.length_m3 int 1 run scoreboard players get length_m3 comp_double_to_int_pair
execute store result storage comp:arguments find_exponent.length_m4 int 1 run scoreboard players get length_m4 comp_double_to_int_pair
execute store result storage comp:arguments find_exponent.length_m5 int 1 run scoreboard players get length_m5 comp_double_to_int_pair
execute store result storage comp:arguments find_exponent.length_m6 int 1 run scoreboard players get length_m6 comp_double_to_int_pair
function comp:bit_cast/double_to_int_pair/find_exponent with storage comp:arguments find_exponent