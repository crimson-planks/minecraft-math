execute if score i exchangesort >= length exchangesort run return 0
scoreboard players operation j exchangesort = i exchangesort
scoreboard players add j exchangesort 1
function pr:exchangesort/j_loop
scoreboard players add i exchangesort 1
function pr:exchangesort/i_loop