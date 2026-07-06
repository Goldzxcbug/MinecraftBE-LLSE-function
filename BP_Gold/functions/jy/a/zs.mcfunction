tellraw @s[hasitem={item=emerald,data=10,quantity=96..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=96..}] run structure load "1/材料/zs" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=96..}] run structure load "1/材料/zs" ~ ~ ~
execute at @s[hasitem={item=emerald,data=10,quantity=96..}] run structure load "1/材料/zs" ~ ~ ~

tellraw @s[hasitem={item=emerald,data=10,quantity=..95}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=96..}] run clear @s emerald 10 96 