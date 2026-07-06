execute as @s[scores={rwa=28},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run scoreboard players set @s jqa 55
execute as @s[scores={rwa=28},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run tag @s add jq 
execute as @s[scores={rwa=28},hasitem={item=minecraft:emerald,data=10,quantity=..63}] run tellraw @s {"rawtext":[{"text":"-你没有足够的钱财用于洗白"}]}
execute as @s[scores={rwa=28},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run  clear @s minecraft:emerald 10 64 

execute as @s[scores={rwa=29},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run scoreboard players set @s jqa 56
execute as @s[scores={rwa=29},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run tag @s add jq 
execute as @s[scores={rwa=29},hasitem={item=minecraft:emerald,data=10,quantity=..63}] run tellraw @s {"rawtext":[{"text":"-你没有足够的钱财用于洗白"}]}
execute as @s[scores={rwa=29},hasitem={item=minecraft:emerald,data=10,quantity=64..}] run  clear @s minecraft:emerald 10 64 