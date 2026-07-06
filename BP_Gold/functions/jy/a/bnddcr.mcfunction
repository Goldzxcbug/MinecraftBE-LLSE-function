tellraw @s[hasitem={item=fermented_spider_eye,quantity=2..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=fermented_spider_eye,quantity=2..}] run structure load "1/大玄国货币" ~ ~ ~
tellraw @s[hasitem={item=fermented_spider_eye,quantity=..1}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=fermented_spider_eye,quantity=2..}] run clear @s fermented_spider_eye 0 2