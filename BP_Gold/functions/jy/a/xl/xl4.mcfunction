tellraw @s[hasitem={item=emerald,data=10,quantity=128..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
enchant @s[hasitem={item=emerald,data=10,quantity=128..}] efficiency 2 

tellraw @s[hasitem={item=emerald,data=10,quantity=..127}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=128..}] run clear @s emerald 10 128 