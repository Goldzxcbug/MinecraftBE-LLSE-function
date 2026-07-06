scoreboard players add @a[tag=rwcx2] rw2 0 
execute as @a[tag=rwcx2] run playsound place.amethyst_cluster @s
execute as @a[tag=rwcx,scores={rw2=-1}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 当日任务已完成，请过几日再来！"}]}






#检测任务完成
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=3..}] if score @s rw2 matches 1 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=3..}] if score @s rw2 matches 1 run clear @s minecraft:heart_of_the_sea 10 3

execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=5..}] if score @s rw2 matches 2 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=5..}] if score @s rw2 matches 2 run clear @s minecraft:heart_of_the_sea 10 5

execute as @a[tag=rwcx,hasitem={item=gold:lq_llllz,quantity=2..}] if score @s rw2 matches 3 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llllz,quantity=2..}] if score @s rw2 matches 3 run clear @s gold:lq_llllz 0 2

execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=10..}] if score @s rw2 matches 4 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=10..}] if score @s rw2 matches 4 run clear @s gold:lq_llyr 0 10

execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=30..}] if score @s rw2 matches 5 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=30..}] if score @s rw2 matches 5 run clear @s gold:lq_llyr 0 30

########################################################################################
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=3..}] if score @s rw2 matches 6 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=3..}] if score @s rw2 matches 6 run clear @s minecraft:heart_of_the_sea 10 3

execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=5..}] if score @s rw2 matches 7 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=minecraft:heart_of_the_sea,data=10,quantity=5..}] if score @s rw2 matches 7 run clear @s minecraft:heart_of_the_sea 10 5

execute as @a[tag=rwcx,hasitem={item=gold:lq_llllz,quantity=2..}] if score @s rw2 matches 8 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llllz,quantity=2..}] if score @s rw2 matches 8 run clear @s gold:lq_llllz 0 2

execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=10..}] if score @s rw2 matches 9 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=10..}] if score @s rw2 matches 9 run clear @s gold:lq_llyr 0 10

execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=30..}] if score @s rw2 matches 10 run tag @s add rw2
execute as @a[tag=rwcx,hasitem={item=gold:lq_llyr,quantity=30..}] if score @s rw2 matches 10 run clear @s gold:lq_llyr 0 30









#给奖励
execute as @a[tag=rwcx2,tag=rw2] at @s run playsound break.amethyst_block @s ~~~ 10000 0.1 10000
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~~1~
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~0.1~1~0.1
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~-0.1~1~0.1
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~0.1~1~-0.1
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~-0.1~1~-0.1
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~0.05~1~0.05
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~-0.05~1~0.05
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~0.05~1~-0.05
execute as @a[tag=rwcx2,tag=rw2] at @s run particle minecraft:heart_particle ~-0.05~1~-0.05
execute as @a[tag=rwcx2,tag=rw2] at @s run tag @s add "777"
execute as @a[tag=rwcx2,tag=rw2] run tag @s remove rwcx2
execute as @a[tag=rwcx2,tag=rw2] run tag @s remove rw2
execute as @a[tag="777"] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: §a§l任务§r§f完成！"}]}

execute as @a[tag="777"] if score @s rw2 matches 1 run scoreboard players random @s lsa 3 8
execute as @a[tag="777"] if score @s rw2 matches 2 run scoreboard players random @s lsa 5 10
execute as @a[tag="777"] if score @s rw2 matches 3 run scoreboard players random @s lsa 10 20
execute as @a[tag="777"] if score @s rw2 matches 4 run scoreboard players random @s lsa 5 15
execute as @a[tag="777"] if score @s rw2 matches 5 run scoreboard players random @s lsa 15 50
########################################################################################
execute as @a[tag="777"] if score @s rw2 matches 6 run scoreboard players random @s xwa 10 20
execute as @a[tag="777"] if score @s rw2 matches 7 run scoreboard players random @s xwa 15 25
execute as @a[tag="777"] if score @s rw2 matches 8 run scoreboard players random @s xwa 30 50
execute as @a[tag="777"] if score @s rw2 matches 9 run scoreboard players random @s xwa 10 30
execute as @a[tag="777"] if score @s rw2 matches 10 run scoreboard players random @s xwa 30 50 






execute as @a[tag="777"] run scoreboard players set @s rw2 -1
tag @a remove "777"





#分配任务
execute as @a[tag=rwcx2,scores={rw2=0,dj=1}] run scoreboard players random @s rw2 1 10 
execute as @a[tag=rwcx2,scores={rw2=0,dj=2}] run scoreboard players random @s rw2 5 15 
execute as @a[tag=rwcx2,scores={rw2=0,dj=3}] run scoreboard players random @s rw2 10 20 
execute as @a[tag=rwcx2,scores={rw2=0,dj=4}] run scoreboard players random @s rw2 15 25 
execute as @a[tag=rwcx2,scores={rw2=0,dj=5}] run scoreboard players random @s rw2 20 30 
execute as @a[tag=rwcx2,scores={rw2=0,dj=6}] run scoreboard players random @s rw2 25 35 
execute as @a[tag=rwcx2,scores={rw2=0,dj=7}] run scoreboard players random @s rw2 30 40 
execute as @a[tag=rwcx2,scores={rw2=0,dj=8}] run scoreboard players random @s rw2 35 45 
execute as @a[tag=rwcx2,scores={rw2=0,dj=9}] run scoreboard players random @s rw2 40 50 

#任务详细
execute as @a[tag=rwcx2,scores={rw2=1}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集3个琉璃珠\n§b§l奖励§r§f: 3-8个灵石"}]}
execute as @a[tag=rwcx2,scores={rw2=2}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集5个琉璃珠\n§b§l奖励§r§f: 5-10个灵石"}]}
execute as @a[tag=rwcx2,scores={rw2=3}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集2个玲珑琉璃珠\n§b§l奖励§r§f: 10-20个灵石"}]}
execute as @a[tag=rwcx2,scores={rw2=4}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集10个琉璃鱼肉\n§b§l奖励§r§f: 5-15个灵石"}]}
execute as @a[tag=rwcx2,scores={rw2=5}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收30个琉璃鱼肉\n§b§l奖励§r§f: 15-50个灵石"}]}
###############################################################################################################
execute as @a[tag=rwcx2,scores={rw2=6}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集3个琉璃珠\n§b§l奖励§r§f: 10-20修为"}]}
execute as @a[tag=rwcx2,scores={rw2=7}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集5个琉璃珠\n§b§l奖励§r§f: 15-25修为"}]}
execute as @a[tag=rwcx2,scores={rw2=8}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集2个玲珑琉璃珠\n§b§l奖励§r§f: 30-50修为"}]}
execute as @a[tag=rwcx2,scores={rw2=9}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收集10个琉璃鱼肉\n§b§l奖励§r§f: 10-30修为"}]}
execute as @a[tag=rwcx2,scores={rw2=10}] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去往琉璃秘境，收30个琉璃鱼肉\n§b§l奖励§r§f: 30-50修为"}]}