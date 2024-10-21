#a and b are indices, and this script swaps the 2 values of working_array[a] and working_array[b] iff working_array[a] > working_array[b]
$execute store result score av exchangesort run data get storage pr:exchangesort working_array[$(a)]
$execute store result score bv exchangesort run data get storage pr:exchangesort working_array[$(b)]
execute if score av exchangesort <= bv exchangesort run return 0
$data modify storage pr:exchangesort a_copy set from storage pr:exchangesort working_array[$(a)]
$data modify storage pr:exchangesort working_array[$(a)] set from storage pr:exchangesort working_array[$(b)]
$data modify storage pr:exchangesort working_array[$(b)] set from storage pr:exchangesort a_copy
return 1