

#tmep id ll lla rand time
execute as @s run scoreboard players set @s xqcd 0
fill -508 0 -506 -512 4 -506 red_stained_glass 
fill -507 0 -505 -507 4 -499 red_stained_glass
execute if score "time" ld matches 0 as @a[x=-500,y=0,z=-500,r=50] at @s if block ~~-1~ minecraft:bedrock if score id ld matches 0 run titleraw @s actionbar {"rawtext":[{"text":"§l-------炼丹面板-------\n"},{"text":"-"},{"score":{"name":"*","objective":"ld"}},{"text":"§c品炼丹师§f("},{"score":{"name":"*","objective":"ldjy"}},{"text":"/"},{"score":{"name":"*","objective":"ldjy2"}},{"text":")\n-§4§l配方错误 X"}]}
execute if score "time" ld matches 0 as @a[x=-500,y=0,z=-500,r=50] at @s if block ~~-1~ minecraft:bedrock if score id ld matches 1.. run titleraw @s actionbar {"rawtext": [{"text":"§l------炼丹面板--------\n"},{"text":"-"},{"score":{"name":"*","objective":"ld"}},{"text":"§c品炼丹师§f("},{"score":{"name":"*","objective":"ldjy"}},{"text":"/"},{"score":{"name":"*","objective":"ldjy2"}},{"text":")\n-§1丹药id:§r "},{"score":{"name":"id","objective":"ld"}},{"text":"\n-§2索要灵力:§r "},{"score":{"name":"ll","objective":"ld"}},{"text":"/"},{"score":{"name":"lla","objective":"ld"}},{"text":"\n-§5自身灵力:§r "},{"score":{"name":"@s","objective":"ll"}},{"text":"/"},{"score":{"name":"@s","objective":"ll2ll2"}},{"text":"\n-§3成功概率: "},{"score":{"name":"rand","objective":"ld"}},{"text":"%"}]}
execute  if score "time" ld matches 0 run scoreboard players set id ld 0
execute  if score "time" ld matches 0 run scoreboard players set ll ld 0
execute  if score "time" ld matches 0 run scoreboard players set lla ld 0
execute  if score "time" ld matches 0 run scoreboard players set rand ld 0
################################################################################################

#琉璃丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 976 0 976 all run scoreboard players set id ld 1
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 976 0 976 all run scoreboard players set rand ld 20
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 976 0 976 all run scoreboard players set lla ld 100
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 976 1 976 976 1 976 ~~~
execute if score "time" ld matches 16 if score id ld matches 1..4 run scoreboard players random temp ld 1 5
#回春丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 977 0 976 all run scoreboard players set id ld 2
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 977 0 976 all run scoreboard players set rand ld 20
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 977 0 976 all run scoreboard players set lla ld 50
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 977 1 976 977 1 976 ~~~
#赤血丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 978 0 976 all run scoreboard players set id ld 3
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 978 0 976 all run scoreboard players set rand ld 20
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 978 0 976 all run scoreboard players set lla ld 75
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 978 1 976 978 1 976 ~~~
#回灵丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 979 0 976 all run scoreboard players set id ld 4
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 979 0 976 all run scoreboard players set rand ld 30
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 979 0 976 all run scoreboard players set lla ld 50
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 979 1 976 979 1 976 ~~~
#罡元丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 980 0 976 all run scoreboard players set id ld 5
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 980 0 976 all run scoreboard players set rand ld 15
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 980 0 976 all run scoreboard players set lla ld 150
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 980 1 976 980 1 976 ~~~
execute if score "time" ld matches 16 if score id ld matches 5 run scoreboard players random temp ld 3 8
#聚气丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 981 0 976 all run scoreboard players set id ld 6
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 981 0 976 all run scoreboard players set rand ld 20
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 981 0 976 all run scoreboard players set lla ld 200
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 981 1 976 981 1 976 ~~~
execute if score "time" ld matches 16 if score id ld matches 6 run scoreboard players random temp ld 3 8
#练气丹
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 982 0 976 all run scoreboard players set id ld 7
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 982 0 976 all run scoreboard players set rand ld 20
execute if score "time" ld matches 0 if blocks ~~~ ~~~ 982 0 976 all run scoreboard players set lla ld 500
execute if score "rand" ld matches 1.. if score "time" ld matches 16 run clone 982 1 976 982 1 976 ~~~
execute if score "time" ld matches 16 if score id ld matches 7 run scoreboard players random temp ld 10 20




execute if score "time" ld matches 16 run scoreboard players operation @s ldjy += temp ld
execute if score "rand" ld matches ..0 if score "time" ld matches 16 run clone 976 0 978 976 0 978 ~~~
################################################################################################
#ld等级增益
execute if score "time" ld matches 0 as @s[scores={ld=1}] run scoreboard players add rand ld 20
execute if score "time" ld matches 0 as @s[scores={ld=1}] run scoreboard players add rand ld 50





execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld = lla ld
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld /= "10" sum 
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation "ll" ld = @s ldll
execute if score "time" ld matches 0 as @s[rxm=89] if score id ld matches 1.. if score @s ll >= temp ld run scoreboard players operation @s ldll += temp ld
execute if score "time" ld matches 0 as @s[rxm=89] if score id ld matches 1.. if score @s ll >= temp ld run scoreboard players operation @s ll -= temp ld
execute if score "time" ld matches 0 as @s[rxm=89] if score id ld matches 1.. if score @s ll >= temp ld run particle minecraft:crop_growth_area_emitter ~ ~-1 ~
execute if score "time" ld matches 0 as @s[rxm=89] if score id ld matches 1.. if score @s ll < temp ld if score @s ll matches 1.. run scoreboard players operation @s ldll += @s ll
execute if score "time" ld matches 0 as @s[rxm=89] if score id ld matches 1.. if score @s ll < temp ld if score @s ll matches 1.. run scoreboard players set @s ll 0
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld = ll ld
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld -= lla ld 
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld *= "100" sum
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld /= lla ld 
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld *= rand ld
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld /= "200" sum
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation temp ld < rand ld 
execute if score "time" ld matches 0 as @s if score id ld matches 1.. run scoreboard players operation rand ld += temp ld 
execute if score "time" ld matches 0 as @s if score id ld matches 1.. if score rand ld matches ..-1 run scoreboard players set rand ld 0 


execute as @s if entity @s[rx=-89] if score "time" ld matches 0 run setblock ~~~ fire
execute as @s if entity @s[rx=-89] if score "time" ld matches 0 run scoreboard players set "time" ld 1
execute if score "time" ld matches 1.. run scoreboard players add "time" ld 1
execute as @s if score "time" ld matches 1..12 run particle minecraft:trial_spawner_detection ~-0.5 ~ ~
execute as @s if score "time" ld matches 7.. run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~

execute if score "time" ld matches 4 run setblock ~~1~ respawn_anchor ["respawn_anchor_charge"=1]
execute if score "time" ld matches 5 run scoreboard players random temp ld 0 99
execute if score "time" ld matches 5 run scoreboard players operation rand ld -= temp ld 
execute if score "time" ld matches 8 run setblock ~~1~ respawn_anchor ["respawn_anchor_charge"=2]
execute if score "time" ld matches 12 run setblock ~~1~ respawn_anchor ["respawn_anchor_charge"=3]
execute if score "time" ld matches 16 run setblock ~~1~ respawn_anchor ["respawn_anchor_charge"=4]
execute if score "time" ld matches 17 run particle minecraft:knockback_roar_particle ~ ~ ~
execute if score "time" ld matches 17 run playsound ambient.weather.lightning.impact @a ~~~ 0.8 0.9 1
execute if score "time" ld matches 17 as @s run scoreboard players set @s ldll 0 
execute if score "time" ld matches 17 run setblock ~~1~ respawn_anchor ["respawn_anchor_charge"=0]
#炼丹等级
execute as @s if score @s ldjy >= @s ldjy2 run scoreboard players add @s ld 1
execute as @s if score @s ldjy >= @s ldjy2 run tellraw @s {"rawtext":[{"text":"§6[系统] §a恭喜你，炼丹等级提升了！当前等级: §e"},{"score":{"name":"*","objective":"ld"}},{"text":" §a品"}]}



execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 1 run scoreboard players set @s ldjy2 500
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 2 run scoreboard players set @s ldjy2 2000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 3 run scoreboard players set @s ldjy2 8000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 4 run scoreboard players set @s ldjy2 20000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 5 run scoreboard players set @s ldjy2 50000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 6 run scoreboard players set @s ldjy2 150000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 7 run scoreboard players set @s ldjy2 400000
execute as @s if score @s ldjy >= @s ldjy2 if score @s ld matches 8 run scoreboard players set @s ldjy2 1000000



execute if score "time" ld matches 17 run scoreboard players set "time" ld 0
scoreboard players add "time" ld 0