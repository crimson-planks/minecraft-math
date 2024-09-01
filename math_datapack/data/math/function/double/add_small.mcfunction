#arguments: a, b (|a+b| < 2e8)
execute unless entity @e[tag=add_small] in math:mathdim run summon marker 0.0 0.0 0.0 {Tags:["add_small"]}
function math:double/debug
$execute in math:mathdim as @e[tag=add_small] at @s run tp @s 0.0 $(a) 0.0
function math:double/debug
$execute in math:mathdim as @e[tag=add_small] at @s run tp @s 0.0 ~$(b) 0.0
function math:double/debug
data modify storage math:result add_small set from entity @e[tag=add_small,limit=1] Pos[1]
data modify storage math:argument print.text set from storage math:result add_small
function math:print with storage math:argument print