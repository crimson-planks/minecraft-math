#you input the value by setting pr:exchangesort.input
scoreboard objectives add exchangesort dummy
#does this work???
data modify storage pr:exchangesort working_array set from storage pr:exchangesort input
execute store result score length exchangesort run data get storage pr:exchangesort working_array

tellraw @a [{"text": "length: "},{"score": {"name": "length", "objective": "exchangesort"}}]
scoreboard players set i exchangesort 0

function pr:exchangesort/i_loop