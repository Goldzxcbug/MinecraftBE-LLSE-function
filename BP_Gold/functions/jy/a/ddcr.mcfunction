tellraw @s[hasitem={item=rabbit_foot,quantity=64..}] {"rawtext":[{"text":"§a§l交易成功！！！"}]}
execute at @s[hasitem={item=rabbit_foot,quantity=64..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=rabbit_foot,quantity=64..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=rabbit_foot,quantity=64..}] run structure load "1/大玄国货币" ~ ~ ~
execute at @s[hasitem={item=rabbit_foot,quantity=64..}] run structure load "1/大玄国货币" ~ ~ ~
tellraw @s[hasitem={item=rabbit_foot,quantity=..63}] {"rawtext":[{"text":"§a§l交易失败，货币不足"}]}
execute as @s[hasitem={item=rabbit_foot,quantity=64..}] run clear @s rabbit_foot 0 64