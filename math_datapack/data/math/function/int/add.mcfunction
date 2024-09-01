#arguments: a,b
$scoreboard players set add math_tmp $(a)
$scoreboard players add add math_tmp $(b)
execute store result storage math:result add int 1 run scoreboard players get add math_tmp 
return run scoreboard players get add math_tmp