execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run tag @s add rw 
execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run tag @s add rwcx
execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run tag @s add jq
execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run scoreboard players set @s jqa 13
execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run tellraw @s {"rawtext":[{"text":"[殿试考官] 我有预感，你会中状元，我的感觉不会错"}]}
execute as @s[hasitem={item=emerald,data=10,quantity=64..},scores={rwa=8}] run clear @s emerald 10 64
execute as @s[hasitem={item=emerald,data=10,quantity=..63},scores={rwa=8}] run tellraw @s {"rawtext":[{"text":"[殿试考官] 别灰心，即使你的货币不够，但是现在还有很多时间，你可以去赚取更多的货币"}]}