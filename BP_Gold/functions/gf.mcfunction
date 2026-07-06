#####################千机玉寰金章
execute as @a[hasitem={item=book,data=10,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 500
execute as @a[hasitem={item=book,data=10,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 301
execute as @a[hasitem={item=book,data=10,location=slot.weapon.mainhand},scores={gf=301,dj=1..},tag=!gf,rxm=89] run clear @s book 10 1
execute as @a[scores={gf=301,gftime=500}] run tag @s add gf
execute as @a[scores={gf=301,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=301,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2
#####################小衍水决
execute as @a[hasitem={item=book,data=11,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=book,data=11,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 1
execute as @a[hasitem={item=book,data=11,location=slot.weapon.mainhand},scores={gf=1,dj=1..},tag=!gf,rxm=89] run clear @s book 11 1
execute as @a[scores={gf=1,gftime=600}] run tag @s add gf
execute as @a[scores={gf=1,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=1,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2



















execute as @a[scores={gftime=1..}] run scoreboard players add @s gftime 0
execute as @a[scores={gftime=1..}] run effect @s slowness 2 4 true
execute as @a[scores={gftime=1..}] run effect @s weakness 2 32 true
execute as @a[scores={gftime=0},tag=gf] at @s run playsound random.totem 
execute as @a[scores={gftime=0},tag=gf] at @s run particle minecraft:totem_particle ~ ~ ~
execute as @a[scores={gftime=0},tag=gf] run tag @s add "属性校准"
execute as @a[scores={gftime=0},tag=gf] run tag @s remove gf 
  