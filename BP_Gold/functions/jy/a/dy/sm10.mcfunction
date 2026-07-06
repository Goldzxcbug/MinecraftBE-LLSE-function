tellraw @s[hasitem={item=emerald,data=10,quantity=25..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=25..}] run structure load "1/dy/sm10" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..24}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=25..}] run clear @s emerald 10 25