#arguments: a,b
$scoreboard players set sub math_tmp $(a)
$scoreboard players set b math_tmp $(b)
scoreboard players operation sub math_tmp -= b math_tmp
execute store result storage math:result sub int 1 run scoreboard players get sub math_tmp 
return run scoreboard players get sub math_tmp