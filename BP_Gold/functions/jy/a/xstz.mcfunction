tellraw @s[hasitem={item=emerald,data=10,quantity=5..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=emerald,data=10,quantity=5..}] run structure load "1/材料/xstz" ~ ~ ~
tellraw @s[hasitem={item=emerald,data=10,quantity=..4}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=5..}] run clear @s emerald 10 5 