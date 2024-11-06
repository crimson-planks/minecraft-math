#input
data get storage comp:input double_to_int_pair


execute store result score int_0 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 1
execute store result score int_32 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 4294967296

#get the string representation of the double by using JSON and by using text display
tellraw @a ["string_rep: ",{"storage": "comp:input","nbt": "double_to_int_pair"}]
execute in comp:compdim run data modify entity @e[distance=0..,limit=1,type=text_display,tag=entity_to_resolve_text] text set value "{\"storage\": \"comp:input\",\"nbt\": \"double_to_int_pair\"}"
execute in comp:compdim run data modify storage comp:tmp string_rep_resolved set from entity @e[distance=0..,limit=1,type=text_display,tag=entity_to_resolve_text] text
execute in comp:compdim run data modify storage comp:tmp start_text set string storage comp:tmp string_rep_resolved 0 1
execute in comp:compdim run tellraw @a ["string_rep_resolved: ",{"entity": "@e[distance=0..,limit=1,type=text_display,tag=entity_to_resolve_text]","nbt": "text"}]

tellraw @a ["0: ",{"score": {"name": "int_0", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["32: ",{"score": {"name": "int_32", "objective": "comp_double_to_int_pair"}}]


#17 is the minimum decimal digits
