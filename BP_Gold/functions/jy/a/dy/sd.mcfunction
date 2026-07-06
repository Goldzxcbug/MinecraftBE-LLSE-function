tellraw @s[hasitem={item=emerald,data=10,quantity=7..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=7..}] run structure load "1/dy/sd" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..6}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=7..}] run clear @s emerald 10 7