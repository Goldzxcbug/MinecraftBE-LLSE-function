tellraw @s[hasitem={item=emerald,data=10,quantity=30..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
enchant @s[hasitem={item=emerald,data=10,quantity=30..}] efficiency 2 

tellraw @s[hasitem={item=emerald,data=10,quantity=..29}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=30..}] run clear @s emerald 10 30 