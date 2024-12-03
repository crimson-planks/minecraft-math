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
data modify storage comp:tmp current_char set from storage comp:tmp dexp_23
execute store success score is_not_E comp_double_to_int_pair run data modify storage comp:tmp current_char set value 'E'
tellraw @a [{"text":"is_not_E: "},{"score": {"name": "is_not_E","objective": "comp_double_to_int_pair"}}]