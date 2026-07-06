tellraw @s[hasitem={item=emerald,data=10,quantity=2..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=2..}] run structure load "1/材料/ps" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=2..}] run structure load "1/材料/ps" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=2..}] run structure load "1/材料/ps" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..1}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=2..}] run clear @s emerald 10 2 