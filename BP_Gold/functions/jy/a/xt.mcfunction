tellraw @s[hasitem={item=emerald,data=10,quantity=9..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=9..}] run structure load "1/材料/xt" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=9..}] run structure load "1/材料/xt" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=9..}] run structure load "1/材料/xt" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..8}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=9..}] run clear @s emerald 10 9 