execute as @s at @s unless block ~ ~-0.05 ~ minecraft:gold_block run tellraw @s {"rawtext":[{"text":"§a§l交易失败，没站在对应方块上"}]}
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=..0}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run tellraw @s {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=1..}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run tellraw @s {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=1..}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run structure load "1/大玄国货币" ~~~
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=1..}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run structure load "1/大玄国货币" ~~~
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=1..}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run structure load "1/大玄国货币" ~~~
execute as @s[hasitem={item=minecraft:gold_ingot,quantity=1..}] at @s if block ~ ~-0.05 ~ minecraft:gold_block run clear @s minecraft:gold_ingot 0 1
execute as @s[rxm=-89] run setblock ~2~~ lever["lever_direction"="east"]