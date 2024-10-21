execute if score n fizzbuzz matches 65.. run return 0
scoreboard players set indent fizzbuzz 1
scoreboard players operation mod3 fizzbuzz = n fizzbuzz
scoreboard players operation mod3 fizzbuzz %= 3 const
scoreboard players operation mod5 fizzbuzz = n fizzbuzz
scoreboard players operation mod5 fizzbuzz %= 5 const
#no, Minecraft doesn't have blocks (take this out of context) so I have to repeat conditions
execute if score mod3 fizzbuzz matches 0 if score mod5 fizzbuzz matches 0 run tellraw @a "fizzbuzz"
execute if score mod3 fizzbuzz matches 0 if score mod5 fizzbuzz matches 0 run scoreboard players set indent fizzbuzz 0
execute if score indent fizzbuzz matches 1 if score mod3 fizzbuzz matches 0 run tellraw @a "fizz"
execute if score mod3 fizzbuzz matches 0 run scoreboard players set indent fizzbuzz 0
execute if score indent fizzbuzz matches 1 if score mod5 fizzbuzz matches 0 run tellraw @a "buzz"
execute if score mod5 fizzbuzz matches 0 run scoreboard players set indent fizzbuzz 0
execute if score indent fizzbuzz matches 1 run tellraw @a {"score": {"name": "n", "objective": "fizzbuzz"}}
scoreboard players add n fizzbuzz 1
function pr:fizzbuzz/loop