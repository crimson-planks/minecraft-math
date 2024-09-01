#note: very experimental
#arguments: a,b (double)
$data merge storage math:tmp {a:"$(a)",b:"$(b)"}
#infinity check, does for a and b
$data merge storage math:tmp {eqcheck:"$(a)"}
execute store success score is_not_inf math_tmp run data merge storage math:tmp {eqcheck:"∞"} 
execute if score is_not_inf math_tmp matches 0 run data modify storage math:result double.add set from storage math:constants d_inf
execute if score is_not_inf math_tmp matches 0 run return 0
$execute store success score is_not_inf math_tmp run data merge storage math:tmp {eqcheck:"$(b)"} 
execute if score is_not_inf math_tmp matches 0 run data modify storage math:result double.add set from storage math:constants d_inf
execute if score is_not_inf math_tmp matches 0 run return 0
