tellraw @s[hasitem={item=emerald,data=10,quantity=3..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=3..}] run structure load "1/dy/sm" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..2}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=3..}] run clear @s emerald 10 3 