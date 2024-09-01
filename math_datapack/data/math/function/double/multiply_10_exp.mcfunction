#arguments: x, exp = n*10^exp
$data merge storage math:tmp {x:$(x)}
data modify storage math:argument double.internal.multiply_10_exp.x set from storage math:tmp x
function math:double/internal/multiply_10_exp with storage math:argument double.internal.multiply_10_exp
tellraw @a [{"text":""},{"nbt":"{}","storage":"math:tmp"}]