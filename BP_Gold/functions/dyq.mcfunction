#鱼竿
#灵力枪
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=13,ll=..6},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] run kill @s

execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run summon boat
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s run playsound mob.zombie.woodbreak @s ~ ~ ~ 9 7 25
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s run camerashake add @a[r=30] 0.2 0.1 positional
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run scoreboard players set @e[r=2,c=1,type=boat,tag=!"标记"] tyglx 1
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run scoreboard players set @e[r=2,c=1,type=boat,tag=!"标记"] tygcd 25
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run scoreboard players operation @e[r=2,c=1,type=boat,tag=!"标记"] uuid = @s uuid
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run tp @e[tag=!"标记",type=boat,c=1] ^^^0.2 facing ~~~
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s positioned ~~100.6~ run tag @e[r=2,type=boat] add "标记"
execute if entity @a[scores={wqlx=13},tag=!tpsj] at @e[type=fishing_hook] as @p if entity @s[scores={wqlx=13,ll=7..},tag=!tpsj,hasitem={item=minecraft:archer_pottery_sherd,data=10,location=slot.inventory,slot=0}] run scoreboard players add @s ll -7


#燧发枪
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=0}]] run kill @s

execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run summon boat
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s run playsound mob.zombie.woodbreak @a[r=30] ~ ~ ~ 9 7 25
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s run camerashake add @s 0.3 0.2 positional
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run scoreboard players set @e[r=2,c=1,type=boat,tag=!"标记"] tyglx 2
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run scoreboard players set @e[r=2,c=1,type=boat,tag=!"标记"] tygcd 25
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run scoreboard players  set  @e[r=2,c=1,type=boat,tag=!"标记"] atk 30
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run scoreboard players operation @e[r=2,c=1,type=boat,tag=!"标记"] mz = @s mzmz
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run scoreboard players operation @e[r=2,c=1,type=boat,tag=!"标记"] uuid = @s uuid
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run tp @e[tag=!"标记",type=boat,c=1] ^^^0.2 facing ~~~
execute if entity @a[scores={wqlx=13},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] at @s positioned ~~100.6~ run tag @e[r=2,type=boat] add 标记
execute if entity @a[scores={wqlx=13},tag=!tpsj] at @e[type=fishing_hook] as @p if entity @s[scores={wqlx=13},tag=!tpsj,hasitem=[{item=minecraft:amethyst_cluster,location=slot.inventory,slot=0},{item=iron_nugget,data=10,quantity=1..}]] run clear @s iron_nugget 10 1 


#灵力弯刀
# execute if score 1 atk matches 114514 run tag @s add a
# execute if score 1 atk matches 114514 run tag @s add b
# execute if score 1 atk matches 114514 run tag @s add c
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=..9},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] run kill @s
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @p at @s run tag @s add "sb"
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @e[type=minecraft:boat,tag=a] at @s run tp @s ~~~~97
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @e[type=minecraft:boat,tag=a] at @s run tp @e[tag=b,type=minecraft:boat] ^^^2 facing @s 
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @p at @s positioned ^^^-5 rotated as @e[tag=c] positioned ^^^0.25 rotated as @e[tag=c] positioned ^^^0.5 rotated as @e[tag=c] positioned ^^^1 rotated as @e[tag=c] positioned ^^^2 rotated as @e[tag=c] positioned ^^^4 rotated as @e[tag=c] positioned ^^^0.25 rotated as @e[tag=c] positioned ^^^4 facing entity @s eyes positioned as @s positioned ^^^3 positioned ~~1~ run particle minecraft:basic_crit_particle ~~~
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @p at @s run playsound sweep @a[r=6] ~ ~ ~ 1.0 1 0
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s run camerashake add @s 0.2 0.1 positional
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s run playsound mob.snowgolem.hurt @a[r=50] ~~~ 1 4
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s if entity @p[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] as @p at @s anchored eyes positioned ^^^2 run damage @e[scores={hp=1..},r=3,tag=!sb] 1 entity_attack entity @p[tag=sb]

execute if entity @a[scores={wqlx=14},tag=!tpsj] as @e[type=fishing_hook] at @s as @p if entity @s[scores={wqlx=14,ll=10..},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] at @s run scoreboard players remove @s ll 10 
execute if entity @a[scores={wqlx=14},tag=!tpsj] as @a[scores={wqlx=14},tag=!tpsj,hasitem={item=minecraft:flow_pottery_sherd,data=10,location=slot.inventory,slot=0}] run tag @s remove sb



























kill @e[type=minecraft:fishing_hook]