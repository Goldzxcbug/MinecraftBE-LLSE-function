# 功法学习流程。
# gf=0 表示尚未学习功法；设置 gf 后会清除书籍，tag=gf 表示正在修炼读条。
# gftime 不是现实秒，而是由 xh/gf 调度减少的进度值；灵力不足时不会继续减少。

#####################小衍水决
# ===== 小衍水决 gf=1 =====
execute as @a[hasitem={item=gf:lq_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 1
execute as @a[hasitem={item=gf:lq_1,location=slot.weapon.mainhand},scores={gf=1,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_1 0 1
execute as @a[scores={gf=1,gftime=600}] run tag @s add gf
execute as @a[scores={gf=1,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=1,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 玄黄清心咒 gf=2 =====
execute as @a[hasitem={item=gf:lq_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 2
execute as @a[hasitem={item=gf:lq_2,location=slot.weapon.mainhand},scores={gf=2,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_2 0 1
execute as @a[scores={gf=2,gftime=600}] run tag @s add gf
execute as @a[scores={gf=2,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=2,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 玄黄练心决 gf=3 =====
execute as @a[hasitem={item=gf:lq_3,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 800
execute as @a[hasitem={item=gf:lq_3,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 3
execute as @a[hasitem={item=gf:lq_3,location=slot.weapon.mainhand},scores={gf=3,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_3 0 1
execute as @a[scores={gf=3,gftime=800}] run tag @s add gf
execute as @a[scores={gf=3,gftime=1..},tag=gf] if score @s ll matches 1.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=3,gftime=1..},tag=gf] if score @s ll matches 1.. run scoreboard players add @s ll -1

# ===== 烘炉功 gf=4 =====
execute as @a[hasitem={item=gf:lq_4,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 500
execute as @a[hasitem={item=gf:lq_4,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 4
execute as @a[hasitem={item=gf:lq_4,location=slot.weapon.mainhand},scores={gf=4,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_4 0 1
execute as @a[scores={gf=4,gftime=500}] run tag @s add gf
execute as @a[scores={gf=4,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=4,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s ll -5

# ===== 云水幻梦功 gf=5 =====
execute as @a[hasitem={item=gf:lq_5,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_5,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 5
execute as @a[hasitem={item=gf:lq_5,location=slot.weapon.mainhand},scores={gf=5,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_5 0 1
execute as @a[scores={gf=5,gftime=600}] run tag @s add gf
execute as @a[scores={gf=5,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=5,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 造化烘炉功 gf=6 =====
execute as @a[hasitem={item=gf:lq_6,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 1000
execute as @a[hasitem={item=gf:lq_6,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 6
execute as @a[hasitem={item=gf:lq_6,location=slot.weapon.mainhand},scores={gf=6,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_6 0 1
execute as @a[scores={gf=6,gftime=1000}] run tag @s add gf
execute as @a[scores={gf=6,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=6,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s ll -5

# ===== 破阵子 gf=7 =====
execute as @a[hasitem={item=gf:lq_7,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 400
execute as @a[hasitem={item=gf:lq_7,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 7
execute as @a[hasitem={item=gf:lq_7,location=slot.weapon.mainhand},scores={gf=7,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_7 0 1
execute as @a[scores={gf=7,gftime=400}] run tag @s add gf
execute as @a[scores={gf=7,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=7,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 铁布衫 gf=8 =====
execute as @a[hasitem={item=gf:lq_8,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_8,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 8
execute as @a[hasitem={item=gf:lq_8,location=slot.weapon.mainhand},scores={gf=8,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_8 0 1
execute as @a[scores={gf=8,gftime=600}] run tag @s add gf
execute as @a[scores={gf=8,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=8,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 星尘引气决 gf=9 =====
execute as @a[hasitem={item=gf:lq_9,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_9,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 9
execute as @a[hasitem={item=gf:lq_9,location=slot.weapon.mainhand},scores={gf=9,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_9 0 1
execute as @a[scores={gf=9,gftime=600}] run tag @s add gf
execute as @a[scores={gf=9,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=9,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 青木生长决 gf=10 =====
execute as @a[hasitem={item=gf:lq_10,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_10,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 10
execute as @a[hasitem={item=gf:lq_10,location=slot.weapon.mainhand},scores={gf=10,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_10 0 1
execute as @a[scores={gf=10,gftime=600}] run tag @s add gf
execute as @a[scores={gf=10,gftime=1..},tag=gf] if score @s ll matches 3.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=10,gftime=1..},tag=gf] if score @s ll matches 3.. run scoreboard players add @s ll -3

# ===== 厚土归元功 gf=11 =====
execute as @a[hasitem={item=gf:lq_11,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_11,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 11
execute as @a[hasitem={item=gf:lq_11,location=slot.weapon.mainhand},scores={gf=11,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_11 0 1
execute as @a[scores={gf=11,gftime=600}] run tag @s add gf
execute as @a[scores={gf=11,gftime=1..},tag=gf] if score @s ll matches 3.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=11,gftime=1..},tag=gf] if score @s ll matches 3.. run scoreboard players add @s ll -3

# ===== 庚金裂石决 gf=12 =====
execute as @a[hasitem={item=gf:lq_12,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 450
execute as @a[hasitem={item=gf:lq_12,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 12
execute as @a[hasitem={item=gf:lq_12,location=slot.weapon.mainhand},scores={gf=12,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_12 0 1
execute as @a[scores={gf=12,gftime=600}] run tag @s add gf
execute as @a[scores={gf=12,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=12,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 爬山诀 gf=13 =====
execute as @a[hasitem={item=gf:lq_13,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 900
execute as @a[hasitem={item=gf:lq_13,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 13
execute as @a[hasitem={item=gf:lq_13,location=slot.weapon.mainhand},scores={gf=13,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_13 0 1
execute as @a[scores={gf=13,gftime=900}] run tag @s add gf
execute as @a[scores={gf=13,gftime=1..},tag=gf] if score @s ll matches 1.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=13,gftime=1..},tag=gf] if score @s ll matches 1.. run scoreboard players add @s ll -1

# ===== 风息步 gf=14 =====
execute as @a[hasitem={item=gf:lq_14,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_14,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 14
execute as @a[hasitem={item=gf:lq_14,location=slot.weapon.mainhand},scores={gf=14,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_14 0 1
execute as @a[scores={gf=14,gftime=600}] run tag @s add gf
execute as @a[scores={gf=14,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=14,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 藏剑术 gf=15 =====
execute as @a[hasitem={item=gf:lq_15,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_15,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 15
execute as @a[hasitem={item=gf:lq_15,location=slot.weapon.mainhand},scores={gf=15,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_15 0 1
execute as @a[scores={gf=15,gftime=600}] run tag @s add gf
execute as @a[scores={gf=15,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=15,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 五灵感气法 gf=16 =====
execute as @a[hasitem={item=gf:lq_16,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_16,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 16
execute as @a[hasitem={item=gf:lq_16,location=slot.weapon.mainhand},scores={gf=16,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_16 0 1
execute as @a[scores={gf=16,gftime=600}] run tag @s add gf
execute as @a[scores={gf=16,gftime=1..},tag=gf] if score @s ll matches 4.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=16,gftime=1..},tag=gf] if score @s ll matches 4.. run scoreboard players add @s ll -4

# ===== 大日金乌诀 gf=17 =====
execute as @a[hasitem={item=gf:lq_17,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_17,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 17
execute as @a[hasitem={item=gf:lq_17,location=slot.weapon.mainhand},scores={gf=17,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_17 0 1
execute as @a[scores={gf=17,gftime=600}] run tag @s add gf
execute as @a[scores={gf=17,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=17,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 灵植共生法 gf=18 =====
execute as @a[hasitem={item=gf:lq_18,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_18,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 18
execute as @a[hasitem={item=gf:lq_18,location=slot.weapon.mainhand},scores={gf=18,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_18 0 1
execute as @a[scores={gf=18,gftime=600}] run tag @s add gf
execute as @a[scores={gf=18,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=18,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 聚灵纳气诀 gf=19 =====
execute as @a[hasitem={item=gf:lq_19,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_19,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 19
execute as @a[hasitem={item=gf:lq_19,location=slot.weapon.mainhand},scores={gf=19,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_19 0 1
execute as @a[scores={gf=19,gftime=600}] run tag @s add gf
execute as @a[scores={gf=19,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=19,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

# ===== 八荒镇海桩 gf=20 =====
execute as @a[hasitem={item=gf:lq_20,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 600
execute as @a[hasitem={item=gf:lq_20,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 20
execute as @a[hasitem={item=gf:lq_20,location=slot.weapon.mainhand},scores={gf=20,dj=1..},tag=!gf,rxm=89] run clear @s gf:lq_20 0 1
execute as @a[scores={gf=20,gftime=600}] run tag @s add gf
execute as @a[scores={gf=20,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=20,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

#####################生死禅功(上卷)
execute as @a[hasitem={item=gf:zj_1_s,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 1200
execute as @a[hasitem={item=gf:zj_1_s,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 99
execute as @a[hasitem={item=gf:zj_1_s,location=slot.weapon.mainhand},scores={gf=99,dj=1..},tag=!gf,rxm=89] run clear @s gf:zj_1_s 0 1
execute as @a[scores={gf=99,gftime=1200}] run tag @s add gf
execute as @a[scores={gf=99,gftime=1..},tag=gf] if score @s ll matches 7.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=99,gftime=1..},tag=gf] if score @s ll matches 7.. run scoreboard players add @s ll -7

#####################生死禅功(下卷)
execute as @a[hasitem={item=gf:zj_1_x,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 200
execute as @a[hasitem={item=gf:zj_1_x,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 100
execute as @a[hasitem={item=gf:zj_1_x,location=slot.weapon.mainhand},scores={gf=100,dj=1..},tag=!gf,rxm=89] run clear @s gf:zj_1_x 0 1
execute as @a[scores={gf=100,gftime=200}] run tag @s add gf
execute as @a[scores={gf=100,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=100,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2

#####################玄黄生死禅功
execute as @a[hasitem={item=gf:zj_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 1200
execute as @a[hasitem={item=gf:zj_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 101
execute as @a[hasitem={item=gf:zj_1,location=slot.weapon.mainhand},scores={gf=101,dj=1..},tag=!gf,rxm=89] run clear @s gf:zj_1 0 1
execute as @a[scores={gf=101,gftime=1200}] run tag @s add gf
execute as @a[scores={gf=101,gftime=1..},tag=gf] if score @s ll matches 10.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=101,gftime=1..},tag=gf] if score @s ll matches 10.. run scoreboard players add @s ll -10

#####################坐山决
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 900
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 102
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=102,dj=1..},tag=!gf,rxm=89] run clear @s gf:zj_2 0 1
execute as @a[scores={gf=102,gftime=900}] run tag @s add gf
execute as @a[scores={gf=102,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=102,gftime=1..},tag=gf] if score @s ll matches 5.. run scoreboard players add @s ll -5

#####################沧海游龙功
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 888
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 103
execute as @a[hasitem={item=gf:zj_2,location=slot.weapon.mainhand},scores={gf=103,dj=1..},tag=!gf,rxm=89] run clear @s gf:zj_2 0 1
execute as @a[scores={gf=103,gftime=888}] run tag @s add gf
execute as @a[scores={gf=103,gftime=1..},tag=gf] if score @s ll matches 6.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=103,gftime=1..},tag=gf] if score @s ll matches 6.. run scoreboard players add @s ll -6















#####################千机玉寰金章######################
execute as @a[hasitem={item=gf:yy_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gftime 500
execute as @a[hasitem={item=gf:yy_1,location=slot.weapon.mainhand},scores={gf=0,dj=1..},tag=!gf,rxm=89] run scoreboard players set @s gf 301
execute as @a[hasitem={item=gf:yy_1,location=slot.weapon.mainhand},scores={gf=301,dj=1..},tag=!gf,rxm=89] run clear @s book 301 1
execute as @a[scores={gf=301,gftime=500}] run tag @s add gf
execute as @a[scores={gf=301,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s gftime -1
execute as @a[scores={gf=301,gftime=1..},tag=gf] if score @s ll matches 2.. run scoreboard players add @s ll -2





# 修炼中的通用限制和完成结算。
# 修炼中给缓慢和虚弱，避免玩家边修炼边战斗；完成时播放图腾粒子并重新计算属性。
execute as @a[scores={gftime=1..}] run scoreboard players add @s gftime 0
execute as @a[scores={gftime=1..}] run effect @s slowness 2 4 true
execute as @a[scores={gftime=1..}] run effect @s weakness 2 32 true
execute as @a[scores={gftime=0},tag=gf] at @s run playsound random.totem 
execute as @a[scores={gftime=0},tag=gf] at @s run particle minecraft:totem_particle ~ ~ ~
execute as @a[scores={gftime=0},tag=gf] run tag @s add "属性校准"
execute as @a[scores={gftime=0},tag=gf] run tag @s remove gf 
  scoreboard players add @a gf 0
