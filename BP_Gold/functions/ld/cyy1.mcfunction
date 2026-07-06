execute as @e[tag=cyy,type=minecraft:armor_stand,x=1000,y=50,z=-1000,r=300,scores={x=0,z=0}] at @s if block ~~-1~ minecraft:red_stained_glass run kill @s 
execute as @e[tag=cyy,type=minecraft:armor_stand,x=1000,y=50,z=-1000,r=300,scores={x=0,z=0}] at @s run particle minecraft:villager_happy ~ ~ ~
execute as @e[tag=cyy,type=minecraft:armor_stand,x=1000,y=50,z=-1000,r=300,scores={x=0,z=0}] at @s unless entity @s[y=-42,dy=1] run tp @s ~ ~-1 ~
execute as @e[tag=cyy,type=minecraft:armor_stand,x=1000,y=50,z=-1000,r=300,scores={x=0,z=0}] at @s if entity @s[y=-42,dy=1] run tag @s add cyyend
execute as @e[tag=cyyend] at @s unless block ~ -42 ~ jungle_wood run particle minecraft:crop_growth_emitter ~ ~ ~
execute as @e[tag=cyyend] at @s unless block ~ -42 ~ jungle_wood run setblock ~ -42 ~ minecraft:sweet_berry_bush ["growth"=2]
execute as @e[tag=cyyend] run kill @s
execute as @e[name="甜浆果",r=500] unless score @s gwrand matches 1..1000 run scoreboard players random @s gwrand 1 1000

#1-4练气 5-8筑基
execute at @e[name="甜浆果"] as @p[r=10] run effect @s slowness 3 3 true
execute at @e[name="甜浆果"] run fill ~~~~~~ air replace minecraft:sweet_berry_bush
execute at @e[name="甜浆果",r=500,scores={gwrand=1..100}] as @p[r=10] as @s if entity @s[scores={dj=1..4}] run structure load "cy/lq_llw" ~~~
execute at @e[name="甜浆果",r=500,scores={gwrand=101..200}] as @p[r=10] as @s if entity @s[scores={dj=1..4}] run structure load "cy/lq_lwc" ~~~
execute at @e[name="甜浆果",r=500,scores={gwrand=201..300}] as @p[r=10] as @s if entity @s[scores={dj=1..4}] run structure load "cy/lq_qxc" ~~~
execute at @e[name="甜浆果",r=500,scores={gwrand=301..350}] as @p[r=10] as @s if entity @s[scores={dj=1..4}] run structure load "cy/lq_xjr" ~~~
execute at @e[name="甜浆果",r=500,scores={gwrand=350..1000}] as @p[r=10] as @s if entity @s[scores={dj=1..4}] run structure load "cy/zc" ~~~

execute at @e[name="甜浆果",r=500,scores={gwrand=1..50}] as @p[r=10] as @s if entity @s[scores={dj=4..7}] run structure load "cy/lq_jjs" ~~~





kill @e[name="甜浆果",r=500]