tellraw @s[hasitem={item=emerald,data=10}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
give @s[hasitem={item=emerald,data=10}] chicken 25
tellraw @s[hasitem={item=emerald,data=10,quantity=0}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald}] run clear @s emerald 10 1