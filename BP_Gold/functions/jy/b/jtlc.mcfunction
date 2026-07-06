tellraw @s[scores={ls=..1499}] {"rawtext":[{"text":"§4§l灵石不够！！！"}]}
tellraw @s[scores={ls=1500..}] {"rawtext":[{"text":"§a§l交易成功，瘴气已经祛除！！！"}]}
scoreboard players add @s[scores={ls=1500..}] zq 100
playsound mob.chicken.say @s[scores={ls=1500..}] ~~~
scoreboard players add @s[scores={ls=1500..}] ls -1500

