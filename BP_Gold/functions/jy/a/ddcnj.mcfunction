tellraw @s[hasitem={item=armadillo_scute,quantity=32..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=armadillo_scute,quantity=32..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=armadillo_scute,quantity=32..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=armadillo_scute,quantity=32..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=armadillo_scute,quantity=32..}] run structure load "1/大玄国货币" ~ ~ ~
tellraw @s[hasitem={item=armadillo_scute,quantity=..31}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=armadillo_scute,quantity=32..}] run clear @s armadillo_scute 0 32