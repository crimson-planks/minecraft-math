execute if score j exchangesort >= length exchangesort run return 0
tellraw @a [{"text": "i: "},{"score": {"name": "i", "objective": "exchangesort"}},{"text": ", j: "},{"score": {"name": "j", "objective": "exchangesort"}}]
data modify storage pr:exchangesort sorted_swap_arguments set value {}
execute store result storage pr:exchangesort sorted_swap_arguments.a int 1 run scoreboard players get i exchangesort
execute store result storage pr:exchangesort sorted_swap_arguments.b int 1 run scoreboard players get j exchangesort
function pr:exchangesort/sorted_swap with storage pr:exchangesort sorted_swap_arguments
tellraw @a {"storage": "pr:exchangesort","nbt": "working_array"}
scoreboard players add j exchangesort 1
function pr:exchangesort/j_loop