scoreboard objectives add math_tmp dummy
execute in math:mathdim run forceload add -1 -1 0 0
data merge storage math:constants {d_inf: 1e1000d, d_zero: 0d}
tellraw @a {"text": "math load called!"}