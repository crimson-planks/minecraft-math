#note: these "functions" are more appropiately called "subprocesses", and the reason is that I need to use function macros
$tellraw @a {"text":" $(length_m1) $(length_m2) $(length_m3)"}

$data modify storage comp:tmp dexp_65 set string storage comp:tmp abs_double $(length_m6) $(length_m5)
$data modify storage comp:tmp dexp_54 set string storage comp:tmp abs_double $(length_m5) $(length_m4)
$data modify storage comp:tmp dexp_43 set string storage comp:tmp abs_double $(length_m4) $(length_m3)
$data modify storage comp:tmp dexp_32 set string storage comp:tmp abs_double $(length_m3) $(length_m2)

tellraw @a [{"text":"dexp_65: "},{"storage": "comp:tmp","nbt": "dexp_65"}]
tellraw @a [{"text":"dexp_54: "},{"storage": "comp:tmp","nbt": "dexp_54"}]
tellraw @a [{"text":"dexp_43: "},{"storage": "comp:tmp","nbt": "dexp_43"}]
tellraw @a [{"text":"dexp_32: "},{"storage": "comp:tmp","nbt": "dexp_32"}]

#conditions: if 65 is 'E'
#just overwrite a scoreboard value if 'E' is found and '-' is found
scoreboard players set E_location comp_double_to_int_pair 0
scoreboard players set -_location comp_double_to_int_pair 0

data modify storage comp:tmp current_char set from storage comp:tmp dexp_32
execute store success score dexp32_is_not_E comp_double_to_int_pair run data modify storage comp:tmp current_char set value 'E'
data modify storage comp:tmp current_char set from storage comp:tmp dexp_32
execute store success score dexp32_is_not_- comp_double_to_int_pair run data modify storage comp:tmp current_char set value '-'
tellraw @a [{"text":"dexp32_is_not_E: "},{"score": {"name": "dexp32_is_not_E","objective": "comp_double_to_int_pair"}}]
execute if score dexp32_is_not_E comp_double_to_int_pair matches 0 run scoreboard players set E_location comp_double_to_int_pair 2
execute if score dexp32_is_not_- comp_double_to_int_pair matches 0 run scoreboard players set -_location comp_double_to_int_pair 2

data modify storage comp:tmp current_char set from storage comp:tmp dexp_43
execute store success score dexp43_is_not_E comp_double_to_int_pair run data modify storage comp:tmp current_char set value 'E'
data modify storage comp:tmp current_char set from storage comp:tmp dexp_43
execute store success score dexp43_is_not_- comp_double_to_int_pair run data modify storage comp:tmp current_char set value '-'
tellraw @a [{"text":"dexp43_is_not_E: "},{"score": {"name": "dexp43_is_not_E","objective": "comp_double_to_int_pair"}}]
execute if score dexp43_is_not_E comp_double_to_int_pair matches 0 run scoreboard players set E_location comp_double_to_int_pair 3
execute if score dexp43_is_not_- comp_double_to_int_pair matches 0 run scoreboard players set -_location comp_double_to_int_pair 3

data modify storage comp:tmp current_char set from storage comp:tmp dexp_54
execute store success score dexp54_is_not_E comp_double_to_int_pair run data modify storage comp:tmp current_char set value 'E'
data modify storage comp:tmp current_char set from storage comp:tmp dexp_54
execute store success score dexp54_is_not_- comp_double_to_int_pair run data modify storage comp:tmp current_char set value '-'
tellraw @a [{"text":"dexp54_is_not_E: "},{"score": {"name": "dexp54_is_not_E","objective": "comp_double_to_int_pair"}}]
execute if score dexp54_is_not_E comp_double_to_int_pair matches 0 run scoreboard players set E_location comp_double_to_int_pair 4
execute if score dexp54_is_not_- comp_double_to_int_pair matches 0 run scoreboard players set -_location comp_double_to_int_pair 4

data modify storage comp:tmp current_char set from storage comp:tmp dexp_65
execute store success score dexp65_is_not_E comp_double_to_int_pair run data modify storage comp:tmp current_char set value 'E'
data modify storage comp:tmp current_char set from storage comp:tmp dexp_65
execute store success score dexp65_is_not_- comp_double_to_int_pair run data modify storage comp:tmp current_char set value '-'
tellraw @a [{"text":"dexp65_is_not_E: "},{"score": {"name": "dexp65_is_not_E","objective": "comp_double_to_int_pair"}}]
execute if score dexp65_is_not_E comp_double_to_int_pair matches 0 run scoreboard players set E_location comp_double_to_int_pair 5
execute if score dexp65_is_not_- comp_double_to_int_pair matches 0 run scoreboard players set -_location comp_double_to_int_pair 5



tellraw @a [{"text": "E_location: "},{"score": {"name": "E_location", "objective": "comp_double_to_int_pair"}}]
tellraw @a [{"text": "-_location: "},{"score": {"name": "-_location", "objective": "comp_double_to_int_pair"}}]

execute store result score exponent_type comp_double_to_int_pair run function comp:bit_cast/double_to_int_pair/exponent_type