tellraw @s[hasitem={item=emerald,data=10,quantity=10..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
enchant @s[hasitem={item=emerald,data=10,quantity=10..}] efficiency 1 

tellraw @s[hasitem={item=emerald,data=10,quantity=..9}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=10..}] run clear @s emerald 10 10 