#input
data get storage comp:input double_to_int_pair


execute store result score int_0 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 1
execute store result score int_1 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 2
execute store result score int_2 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 4
execute store result score int_3 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 8
execute store result score int_10 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 1024
execute store result score int_16 comp_double_to_int_pair run data get storage comp:input double_to_int_pair 65536

tellraw @a ["string_rep: ",{"storage": "comp:input","nbt": "double_to_int_pair"}]

tellraw @a ["0: ",{"score": {"name": "int_0", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["1: ",{"score": {"name": "int_1", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["2: ",{"score": {"name": "int_2", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["3: ",{"score": {"name": "int_3", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["10: ",{"score": {"name": "int_10", "objective": "comp_double_to_int_pair"}}]
tellraw @a ["16: ",{"score": {"name": "int_16", "objective": "comp_double_to_int_pair"}}]


#17 is the minimum decimal digits
