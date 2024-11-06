scoreboard objectives add const dummy
scoreboard objectives add comp dummy
scoreboard objectives add comp_double_to_int_pair dummy
scoreboard players set 1 const 1
#infinities, ignore errors
data modify storage comp:const inf set value 1e1000d 
data modify storage comp:const neginf set value -1e1000d

execute in comp:compdim run forceload add 0 0 0 0
execute in comp:compdim run kill @e[type=text_display,tag=entity_to_resolve_text]
execute in comp:compdim run summon text_display 0.0 0.0 0.0 {Tags:["entity_to_resolve_text"]}

tellraw @a "Hello World!"