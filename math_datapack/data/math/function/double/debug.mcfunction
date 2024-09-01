#return 0
tellraw @a {"text": "debug function ran!"}
execute as @e[tag=add_small_tmp] run tellraw @a [{"text":"nbt: "},{"nbt":"{}","entity":"@s"}]
execute as @e[tag=add_small_tmp] run tellraw @a [{"text":"y axis: "},{"nbt":"Pos[1]","entity":"@s"}]