#arguments: a,b
$scoreboard players set mul math_tmp $(a)
$scoreboard players set b math_tmp $(b)
scoreboard players operation mul math_tmp *= b math_tmp
execute store result storage math:result mul int 1 run scoreboard players get mul math_tmp 
return run scoreboard players get mul math_tmp