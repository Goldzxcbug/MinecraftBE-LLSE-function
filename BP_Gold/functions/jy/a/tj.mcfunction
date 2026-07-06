tellraw @s[hasitem={item=emerald,data=10,quantity=30..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=30..}] run structure load "1/材料/tj" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=30..}] run structure load "1/材料/tj" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=30..}] run structure load "1/材料/tj" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..29}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=30..}] run clear @s emerald 10 30 