tellraw @s[hasitem={item=emerald,data=10,quantity=10..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=10..}] run structure load "1/dy/jp" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..9}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=10..}] run clear @s emerald 10 10 