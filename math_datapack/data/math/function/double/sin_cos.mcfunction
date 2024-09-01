#arguments: x(in degrees)
execute unless entity @e[tag=sin_cos_center] in math:mathdim run summon marker 0.0 0.0 0.0 {Tags:["sin_cos_center"]}
$execute as @e[tag=sin_cos_center] at @s run tp @s ~ ~ ~ $(x) 0
execute unless entity @e[tag=sin_cos_lead] in math:mathdim run summon marker 0.0 0.0 0.0 {Tags:["sin_cos_lead"]}
execute in math:mathdim at @e[tag=sin_cos_center] run tp @e[tag=sin_cos_lead] ^ ^ ^1
tellraw @a [{"text":""},{"nbt":"Pos","entity":"@e[tag=sin_cos_lead]"}]