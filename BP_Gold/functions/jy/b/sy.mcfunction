tellraw @s[scores={hp=..199}] {"rawtext":[{"text":"§4§l你的生命值不足！！！"}]}
tellraw @s[scores={hp=200..}] {"rawtext":[{"text":"§a§l交易成功，祛除瘴气1%"}]}
scoreboard players add @s[scores={hp=200..}] zq 1
scoreboard players add @s[scores={hp=200..}] hp -199