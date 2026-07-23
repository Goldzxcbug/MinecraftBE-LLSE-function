#这是一个循环函数
#gw 怪物属性
scoreboard players add "tick" tick 1
scoreboard players add "10" tick 1 
# execute if score "tick" tick matches 1 run scoreboard players add daytime day 1
# execute if score "tick" tick matches 1 run function day


function gw 
#攻击受击计算-hhxt核心系统
# function hxxt
execute if entity @a[tag=tpsj] run function tpsj
execute if score "10" tick matches 5 unless entity @a[tag=!tp,tag=!"属性校准",tag=!"法不可同修"] run function djsx
# execute if score "tick" tick matches 19 run function sxjs

execute if score "10" tick matches 6 run function time
###############################钓鱼竿飞行判定########################################
execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记"] run scoreboard players add @s tygcd -1
execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=1..}] at @s run tp @s ^^^-0.8
#鱼竿枪粒子
execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=1..}] at @s if score @s tyglx matches 1 positioned ~~-99~ run particle minecraft:endrod ~~~  
execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=1..}] at @s if score @s tyglx matches 2 positioned ~~-99~ run particle minecraft:basic_crit_particle ~~~


execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=1..}] at @s positioned ~~-99.5~ unless score @s uuid = @p[r=2] uuid run tag @e[family=!inanimate,type=!item,r=1.5,scores={hp=1..},c=1] add gg

execute if entity @e[tag=gg] as @e[tag=gg] at @s positioned ~~99.5~ as @a if score @s uuid = @e[c=1,r=1.5,type=boat] uuid positioned ~~-99.5~ run damage @e[tag=gg,c=1,r=1.5] 1 entity_attack entity @s

execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=1..}] at @s positioned ~~-99.5~ unless block ~~~ air run kill @s 
execute if entity @e[type=minecraft:boat,tag="标记"] as @e[type=minecraft:boat,tag="标记",scores={tygcd=..0}] run kill @s 
execute if entity @a[tag=!tpsj] run kill @e[type=fishing_hook]
execute if entity @e[tag=gg] as @e[tag=gg] at @s positioned ~~99.5~ run kill @e[c=1,type=boat,r=2]
tag @e remove gg
####################################################################################

function xqcd


#回血回蓝
execute if score "tick" tick matches 19 run scoreboard players add "5s" tick 1
execute if score "5s" tick matches 5 as @a run scoreboard players operation @s hp += @s hxhx
execute if score "5s" tick matches 5 as @a run scoreboard players operation @s ll += @s hlhl
execute if score "5s" tick matches 5 as @a run scoreboard players operation @s ll < @s ll2ll2
execute if score "5s" tick matches 5 as @a run scoreboard players operation @s hp < @s hp2hp2
#丹药回血回蓝
execute if score "tick" tick matches 19 as @a[scores={kshxt=1..}] run scoreboard players operation @s hp += @s kshx
execute if score "tick" tick matches 19 as @a[scores={kshlt=1..}] run scoreboard players operation @s ll += @s kshl
execute if score "tick" tick matches 19 as @a[scores={kshlt=1..}] run scoreboard players operation @s ll < @s ll2ll2
execute if score "tick" tick matches 19 as @a[scores={kshxt=1..}] run scoreboard players operation @s hp < @s hp2hp2
execute if score "tick" tick matches 19 as @a[scores={kshxt=1..}] run scoreboard players add @s kshxt -1
execute if score "tick" tick matches 19 as @a[scores={kshlt=1..}] run scoreboard players add @s kshlt -1
execute if score "tick" tick matches 19 as @a[scores={ksfyt=1..}] run scoreboard players add @s ksfyt -1
execute if score "tick" tick matches 19 as @a[scores={ksatkt=1..}] run scoreboard players add @s ksatkt -1
execute if score "tick" tick matches 19 as @a[scores={ksfyt=0,ksfy=1..}] run scoreboard players set @s ksfyt 0
execute if score "tick" tick matches 19 as @a[scores={ksatkt=0,ksatk=1..}] run scoreboard players set @s ksatkt 0
execute if score "tick" tick matches 19 as @a[scores={kshxt=0,kshx=1..}] run scoreboard players set @s kshx 0
execute if score "tick" tick matches 19 as @a[scores={kshlt=0,kshl=1..}] run scoreboard players set @s kshl 0
execute if score "tick" tick matches 19 as @a[scores={ksfyt=0,ksfy=1..}] run scoreboard players set @s ksfy 0
execute if score "tick" tick matches 19 as @a[scores={ksatkt=0,ksatk=1..}] run scoreboard players set @s ksatk 0
#怪物的回血回蓝
execute if score "tick" tick matches 19 as @e[family=mob,scores={hp=1..,hx=1..,hp2=1..}] run scoreboard players operation @s hp += @s hx
execute if score "tick" tick matches 19 as @e[family=mob,scores={hp=1..,hx=1..,hp2=1..}] run scoreboard players operation @s hp < @s hp2

execute if score "tick" tick matches 19 if score "5s" tick matches 5.. unless score rand day matches 601..750  run scoreboard players set "5s" tick 1
execute if score "tick" tick matches 19 if score "5s" tick matches 10.. if score rand day matches 601..700 run scoreboard players set "5s" tick 1
execute if score "tick" tick matches 19 if score "5s" tick matches 3.. if score rand day matches 701..750 run scoreboard players set "5s" tick 1

# execute if score "tick" tick matches 5 if entity @a[tag=jq] run function jq/jq
# execute if score "tick" tick matches 7 if entity @a[tag=rwcx] as @a[tag=rwcx] run function rw/rw
execute if score "tick" tick matches 8 as @a[hasitem={item=cookie,data=10,quantity=1..50,location=slot.weapon.mainhand}] run replaceitem entity @s slot.weapon.mainhand 0 cookie 64 10 {"item_lock":{"mode":"lock_in_inventory"}}
#限制经验1.5倍
execute if score "10" tick matches 10 as @a run scoreboard players operation @s tempb = @s jy2
execute if score "10" tick matches 10 as @a run scoreboard players operation @s tempb *= "3" sum
execute if score "10" tick matches 10 as @a run scoreboard players operation @s tempb /= "2" sum
execute if score "10" tick matches 10 as @a run scoreboard players operation @s jy < @s tempb
execute if score "10" tick matches 10 as @a[rx=88] run replaceitem entity @s slot.inventory 26 ominous_bottle 1 1 {"item_lock":{"mode":"lock_in_slot"}}
execute if score "10" tick matches 10 as @a[rxm=89] run replaceitem entity @s slot.inventory 26 air 
execute if score "tick" tick matches 19 if entity @a[scores={wqjx=1..}] as @a[scores={wqjx=1..}] run scoreboard players add @s wqjx -1
#rw
execute if score "10" tick matches 2 as @a[scores={rw=2,rwa=3},hasitem={item=element_1}] run tag @s add rw 
execute if score "10" tick matches 2 as @a[scores={rw=2,rwa=3},hasitem={item=element_1}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: §a§l任务§r§f完成！请提交任务"}]}
execute if score "10" tick matches 2 as @a[scores={rw=2,rwa=3},hasitem={item=element_1}] run clear @s element_1 0 1


#cyy
execute if score "cyy" day matches 1.. run function ld/cyy




#功法
execute if score "10" tick matches 3..6 at @a[tag=gf,scores={gftime=1..}] run particle minecraft:lava_particle ~ ~ ~ 
execute if score "tick" tick matches 3 run function gf




execute if score tick tick matches 20.. run scoreboard players set tick tick 0
execute if score "10" tick matches 10.. run scoreboard players set "10" tick 0
