tellraw @s[hasitem={item=emerald,data=10,quantity=8..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
give @s[hasitem={item=emerald,data=10,quantity=8..}] minecraft:cookie 64 10 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[hasitem={item=emerald,data=10,quantity=..7}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=emerald}] run clear @s emerald 10 8 