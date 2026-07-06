tellraw @s[hasitem={item=phantom_membrane}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=phantom_membrane}] run structure load "1/大玄国货币" ~ ~ ~
tellraw @s[hasitem={item=phantom_membrane,quantity=0}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=phantom_membrane}] run clear @s phantom_membrane 0 1