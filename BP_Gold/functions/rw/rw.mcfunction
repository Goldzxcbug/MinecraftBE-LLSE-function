#检测任务是否完成

execute as @a[tag=rwcx,hasitem={item=minecraft:amethyst_cluster},scores={rw=..8,rwa=9}] run tag @s add rw 
execute as @a[tag=rwcx,scores={rw=..10,rwa=11,day=2..}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..10,rwa=11,day=2..}] run scoreboard players reset @s day 
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=10},scores={rw=..11,rwa=12}] run tag @s add rw
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=10},scores={rw=..11,rwa=12}] run clear @s poisonous_potato 10 1
execute as @a[tag=rwcx,scores={rw=..13,rwa=14,day=1..}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..13,rwa=14,day=1..}] run scoreboard players reset @s day 

execute as @a[tag=rwcx,scores={rw=..14,rwa=15}] at @s if block ~~-0.1~ minecraft:diamond_block run tag @s add rw
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=10},scores={rw=..16,rwa=17}] run tag @s add rw
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=10},scores={rw=..16,rwa=17}] run clear @s poisonous_potato 10 1
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=11},scores={rw=..17,rwa=18}] run tag @s add rw
execute as @a[tag=rwcx,hasitem={item=minecraft:poisonous_potato,data=11},scores={rw=..17,rwa=18}] run clear @s poisonous_potato 11 1
execute as @a[tag=rwcx,scores={rw=..18,rwa=19}] if entity @s[x=246,y=44,z=264,r=10] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..19,rwa=20},hasitem={item=minecraft:trial_key,data=10}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..19,rwa=20},hasitem={item=minecraft:trial_key,data=10}] run clear @s trial_key 10 1
execute as @a[tag=rwcx,scores={rw=..20,rwa=21,day=1..}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..20,rwa=21,day=1..}] run scoreboard players reset @s day 
execute as @a[tag=rwcx,scores={rw=..21,rwa=22},hasitem={item=minecraft:acacia_door,data=10}] if entity @s[x=-283,y=73,z=214,r=5] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..22,rwa=23},hasitem={item=minecraft:acacia_door,data=10}] run tp @s -519 73 216
execute as @a[tag=rwcx,scores={rw=..22,rwa=23},hasitem={item=minecraft:acacia_door,data=10}] run effect @s darkness infinite 0 true
execute as @a[tag=rwcx,scores={rw=..24,rwa=25},hasitem={item=minecraft:acacia_door,data=10}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..26,rwa=27,zq=50..}] run tag @s add rw 
execute as @a[tag=rwcx,scores={rw=..29,rwa=30,day=1..}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..29,rwa=30,day=1..}] run scoreboard players reset @s day 
execute as @a[tag=rwcx,scores={rw=..30,rwa=31,zq=100..}] run tag @s add rw
execute as @a[tag=rwcx,scores={rw=..31,rwa=32,dj=1..}] run tag @s add rw






execute as @a[tag=rwcx,tag=rw] run scoreboard players operation @s rw = @s rwa 
execute as @a[tag=rwcx,tag=rw] at @s run playsound break.amethyst_block @s ~~~ 10000 0.1 10000
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~~1~
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~0.1~1~0.1
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~-0.1~1~0.1
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~0.1~1~-0.1
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~-0.1~1~-0.1
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~0.05~1~0.05
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~-0.05~1~0.05
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~0.05~1~-0.05
execute as @a[tag=rwcx,tag=rw] at @s if score @s rw = @s rwa  run particle minecraft:heart_particle ~-0.05~1~-0.05
#任务完成触发

execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 2 run scoreboard players set @s jqa 5 
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 2 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 3 run scoreboard players set @s jqa 7 
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 3 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 6 unless entity @a[tag=jq9] run scoreboard players set @s jqa 9 
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 6 unless entity @a[tag=jq9] run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 6 if entity @a[tag=jq9] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 有人正在完成这个任务，稍后再来"}]}

execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 7 run scoreboard players set @s jqa 12
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 7 run tag @s add jq 
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 9 run scoreboard players set @s jqa 14
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 9 run tag @s add jq 
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 11 unless entity @a[tag=jq9] run scoreboard players set @s jqa 16
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 11 unless entity @a[tag=jq9] run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 11 if entity @a[tag=jq9] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 有人正在完成这个任务，稍后再来"}]}
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 12 run scoreboard players set @s jqa 18
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 12 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 14 unless entity @a[tag=jq9] run scoreboard players set @s jqa 20
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 14 unless entity @a[tag=jq9] run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 14 if entity @a[tag=jq9] run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 有人正在完成这个任务，稍后再来"}]}
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 15 run scoreboard players set @s jqa 22
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 15 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 16 run scoreboard players set @s jqa 24
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 16 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 17 run scoreboard players set @s jqa 25
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 17 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 18 run scoreboard players set @s jqa 26
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 18 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 19 run scoreboard players set @s jqa 27
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 19 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 20 run scoreboard players set @s jqa 28
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 20 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 21 run scoreboard players set @s jqa 29
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 21 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 22 run scoreboard players set @s jqa 32
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 22 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 23 run scoreboard players set @s rwa 24
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 24 run scoreboard players set @s jqa 50
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 24 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 25 run scoreboard players set @s jqa 51
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 25 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 26 run scoreboard players set @s jqa 52
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 26 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 27 run scoreboard players set @s jqa 53
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 27 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 30 run scoreboard players set @s jqa 57
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 30 run tag @s add jq
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 31 run scoreboard players set @s jqa 58
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa if score @s rw matches 31 run tag @s add jq


execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa  run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: §a§l任务§r§f完成！"}]}
execute as @a[tag=rwcx,tag=rw] if score @s rw = @s rwa  run tag @s add "666"
execute as @a[tag="666"]   run tag @s remove rwcx
execute as @a[tag="666"]  run tag @s remove rw
execute as @a[tag="666"]  run tag @s remove "666"



execute as @a[tag=rwcx] run playsound place.amethyst_cluster @s
execute as @a[tag=rwcx] if score @s rw = @s rwa run  tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 当前没有任务"}]}
#jq3
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 1 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 找婶婶要钱，参加科考（坐标 225 ？ 215）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 2 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去城边界击败大玄国生物，可用于换钱，购买精良武器(206 ? 206)"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 3 if entity @s[x=122,y=58,z=266,r=10] if entity @e[name="村长的弟弟"] run tellraw @s[x=122,y=58,z=266,r=10] {"rawtext":[{"text":"§a§l任务§r§f: 有人正在完成这个任务，稍后再来"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 3 if entity @s[x=122,y=58,z=266,r=10] unless entity @e[name="村长的弟弟"] run scoreboard players set @s jqa 6
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 3 if entity @s[x=122,y=58,z=266,r=10] unless entity @e[name="村长的弟弟"] run tag @s add jq 
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 3 if entity @s[x=122,y=58,z=266,r=10] unless entity @e[name="村长的弟弟"] run tp @s 111 60 273

execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 3 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 去家对面，给村长儿子一个教训，让他不敢打我家祖传的肥沃田地的主意（坐标122 58 266）§a[在村长家查询任务会召唤村长儿子]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 4 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：去科举殿试（坐标 241 ？ 81）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 5 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：赚够64个货币后，参加科举殿试（坐标 241 ？ 81）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 6 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：带上礼物，前往琅琊王府(坐标211 ？ 174)"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 7 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 依靠自己，参加科考（坐标 225 ？ 215）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 8 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 依靠自己，去科举殿试（坐标 241 ？ 81）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 9 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 制作燧发枪，交给工匠研究（制作完，查询任务即可）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 10 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 暗中入京找首席大学士。（坐标 27 57 62）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 11 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 等待两天（目前第"},{"score":{"name":"*","objective":"day"}},{"text":"天）[任务达成后，查询任务就算提交]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 12 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 制作超越时代的慢性毒药给心腹，让其给皇帝下毒。（制作完，查询任务即可）\n配方：\n火药x32 铜x64 火药x32\n绿宝石x32 金萝卜x64 绿宝石x32\n合金x10 火药x64 合金x10"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 13 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：前往东方墟渊(1 58 219)"}]}


execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 14 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 等待一天（目前第"},{"score":{"name":"*","objective":"day"}},{"text":"天）[任务达成后，查询任务就算提交]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 15 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 前往牢房，拷问寇洪（122,?，171）[站到钻石块上查询即可]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 16 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 前往状元楼打听最近的消息（95 63 47）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 17 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 制作超越时代的慢性毒药给心腹，让其给皇帝下毒。（制作完，查询任务即可）\n配方：\n火药x32 铜x64 火药x32\n绿宝石x32 金萝卜x64 绿宝石x32\n合金x10 火药x64 合金x10"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 18 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 制作该毒药解药给心腹（访古学史），救活皇帝（制作完，查询任务即可）\n配方：百年蠢蠢虫肉x21 蠢蠢虫肉x64 百年蠢蠢虫肉x21\n百年蠢蠢虫肉x21 金萝卜x64 百年蠢蠢虫肉x21\n百年蠢蠢虫肉x21 蠢蠢虫肉x64 百年蠢蠢虫肉x21"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 19 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 前往伊行之墓(246,44,264)[到了此地，查询任务即可]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 20 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 打死百年蠢蠢虫，有概率掉神秘钥匙，用于打开仙人之墓（打到了，查询任务即可）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 21 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f: 等待一天（目前第"},{"score":{"name":"*","objective":"day"}},{"text":"天）[任务达成后，查询任务就算提交]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 22 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：前往东方墟渊(1 58 219)[到了查询任务即可]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 23 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：小心穿过黑暗层（查询任务传送）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 24 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：到处逛逛，前往（3257 ~ 3100）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 25 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：收集金银财宝[192个大玄国货币以上]（到了查询任务即可）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 26 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：去船的附近找人对话"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 27 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：祛除体内瘴气（"},{"score":{"name":"*","objective":"zq"}},{"text":"/50%）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 28 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：前往琉璃秘境，洗白大玄国财产，求净体名额，祛除体内瘴气（"},{"score":{"name":"*","objective":"zq"}},{"text":"/100%）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 29 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：再次出海捞宝，求净体名额，祛除体内瘴气（"},{"score":{"name":"*","objective":"zq"}},{"text":"/100%）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 30 run tellraw @s {"rawtext":[{"text":"§a§l临时任务§r§f：等一天，等待万华商会（"},{"score":{"name":"*","objective":"day"}},{"text":"天）[任务达成后，查询任务就算提交]"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 31 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：求净体名额，祛除体内瘴气（"},{"score":{"name":"*","objective":"zq"}},{"text":"/100%）"}]}
execute as @a[tag=rwcx] unless score @s rw = @s rwa if score @s rwa matches 32 run tellraw @s {"rawtext":[{"text":"§a§l任务§r§f：突破至练气期"}]}












execute as @a[tag=rwcx] run tag @s remove rwcx