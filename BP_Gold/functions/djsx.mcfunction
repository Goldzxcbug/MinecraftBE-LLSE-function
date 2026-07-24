# 等级属性与突破结算。
# 本文件只在玩家突破或带“属性校准”标签时运行，用于重算基础属性和境界奖励。
# 注意：基础属性先按 dj 重置，再叠加功法、筑基奇物等额外来源。
# 调用来源：
# - xh.mcfunction 检测 tag=tp：说明突破成功，需要提升境界并扣除修为。
# - xh.mcfunction 检测 tag=属性校准：说明装备外的永久属性需要重算，但不一定提升境界。
# 重要约定：这里写的是“基础属性”，最终属性仍由 sxjs.mcfunction 叠加装备和临时 buff。
# 等级属性
#money 钱       | hp 当前血量 hp2 血上限
# atk 攻击      |
#fy 防御        | atkjc 攻击加成
#atkjm 攻击减免  | sb 闪避率
#mz 命中        | bj 暴击率
#bs 暴击伤害加成 | ll  当前蓝量 ll2 蓝量上限
#zs 真伤        | xy 幸运
#pj 破甲        | hx 回血
#hl 回蓝        | xx 吸血
#shxs 伤害吸收   | jy 经验 jy2 dj等级

#初始属性 生命上限(hp2)=200  蓝量上限(ll2)=100 真伤(zs)=1 回血(hx)=1
#初始属性 回蓝(hl)=0 暴击(bj)=0 暴击伤害加成(bs)=0 闪避(sb)=1 
#初始属性 攻击(atk)=1 防御(fy)=0 tpzt突破状态

#突破系统
# tag=tp 且修为 jy >= jy2 时完成突破：提升 dj、播放反馈、扣除消耗的修为。
# 低境界可直接突破；筑基前后会被 tpsj.mcfunction 拦截走雷劫流程。
execute  as @a[tag=tp] if score @s jy >= @s jy2 run scoreboard players add @s dj 1
execute  as @a[tag=tp] if score @s jy >= @s jy2 run effect @s speed 600 1 true
execute  as @a[tag=tp] if score @s jy >= @s jy2 run effect @s haste 600 1 true
execute  as @a[tag=tp] at @s if score @s jy >= @s jy2 run playsound random.levelup @a[r=100] ~~~ 1 0.2



# 筑基阶段需要消耗奇物，tdqw 记录玩家选择的筑基奇物类型。
# 这些物品只在 dj=5 的突破瞬间消耗一次，之后 tdqw 会作为永久选择保留。
execute  as @a[tag=tp,hasitem={item=zj:zjqw14},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 1 
execute  as @a[tag=tp,hasitem={item=zj:zjqw14},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw14 0 1

execute  as @a[tag=tp,hasitem={item=zj:zjqw15},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 2 
execute  as @a[tag=tp,hasitem={item=zj:zjqw15},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw15 0 1

execute  as @a[tag=tp,hasitem={item=zj:zjqw16},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 3 
execute  as @a[tag=tp,hasitem={item=zj:zjqw16},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw16 0 1

execute  as @a[tag=tp,hasitem={item=zj:zjqw17},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 4 
execute  as @a[tag=tp,hasitem={item=zj:zjqw17},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw17 0 1

execute  as @a[tag=tp,hasitem={item=zj:zjqw18},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 5
execute  as @a[tag=tp,hasitem={item=zj:zjqw18},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw18 0 1

execute  as @a[tag=tp,hasitem={item=zj:zjqw19},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 6
execute  as @a[tag=tp,hasitem={item=zj:zjqw19},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw19 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw1},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 7
execute as @a[tag=tp,hasitem={item=zj:zjqw1},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw1 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw2},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 8
execute as @a[tag=tp,hasitem={item=zj:zjqw2},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw2 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw3},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 9
execute as @a[tag=tp,hasitem={item=zj:zjqw3},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw3 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw4},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 10
execute as @a[tag=tp,hasitem={item=zj:zjqw4},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw4 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw5},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 11
execute as @a[tag=tp,hasitem={item=zj:zjqw5},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw5 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw6},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 12
execute as @a[tag=tp,hasitem={item=zj:zjqw6},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw6 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw7},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 13
execute as @a[tag=tp,hasitem={item=zj:zjqw7},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw7 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw8},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 14
execute as @a[tag=tp,hasitem={item=zj:zjqw8},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw8 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw9},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 15
execute as @a[tag=tp,hasitem={item=zj:zjqw9},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw9 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 16
execute as @a[tag=tp,hasitem={item=zj:zjqw10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw10 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw11},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 17
execute as @a[tag=tp,hasitem={item=zj:zjqw11},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw11 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw12},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 18
execute as @a[tag=tp,hasitem={item=zj:zjqw12},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw12 0 1

execute as @a[tag=tp,hasitem={item=zj:zjqw13},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 19
execute as @a[tag=tp,hasitem={item=zj:zjqw13},scores={dj=5}] if score @s jy >= @s jy2 run clear @s zj:zjqw13 0 1






execute  as @a[tag=tp,scores={dj=1}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f洗去凡人§0瘴气§f，突破到练气初期，从此§4仙§3凡§f两立"}]}
execute  as @a[tag=tp,scores={dj=2}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f吸天地之灵，突破到练气中期"}]}
execute  as @a[tag=tp,scores={dj=3}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f吸天地之灵，突破到练气后期"}]}
execute  as @a[tag=tp,scores={dj=4}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f吸天地之灵，突破到练气圆满，即将展望筑基大道"}]}
execute  as @a[tag=tp,scores={dj=5,tdqw=1..}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f假天地之奇，"},{"translate":"%%7","with":{"rawtext":[{"selector":"@s[scores={tdqw=..1}]"},{"selector":"@a[scores={tdqw=..2}]"},{"selector":"@a[scores={tdqw=..3}]"},{"selector":"@a[scores={tdqw=..4}]"},{"selector":"@a[scores={tdqw=..5}]"},{"selector":"@a[scores={tdqw=..6}]"},{"text":"奇物§a§l【虬龙枝】§r§f成就道基"},{"text":"奇物§a§l【锈剑道玄】§r§f成就道基"},{"text":"奇物§a§l【天煞剑意】§r§f成就道基"},{"text":"奇物§a§l【附魔金苹果】§r§f成就道基"},{"text":"奇物§a§l【不眠瞳】§r§f成就道基"},{"test":"奇物§a§l【沧海珠】§r§f成就道基"}]}},{"text":"，突破到筑基初期!"}]}
execute  as @a[tag=tp,scores={dj=6}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f假天地之奇，突破到筑基中期"}]}
execute  as @a[tag=tp,scores={dj=7}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f假天地之奇，突破到筑基后期"}]}
execute  as @a[tag=tp,scores={dj=8}] if score @s jy >= @s jy2 run tellraw @a {"rawtext":[{"text":"§3§l修士 §l§6"},{"selector":"@s"},{"text":"§l§f假天地之奇，突破到筑基圆满，即将展望金丹大道!!"}]}
execute  as @a[tag=tp] if score @s jy >= @s jy2 run scoreboard players operation @s "jy" -= @s "jy2"
tag @a[tag=tp] add "属性校准"
# 下面是境界基础属性表；只对带“属性校准”的玩家写入，最后统一移除标签。
# 每个境界都会完整重写 atk/hp2/ll2/hx/hl/bj/bs/sb/fy/zs/jy2，避免旧境界残留数值。
#dj=1属性 生命上限(hp2)= 300  蓝量上限(ll2)=150 真伤(zs)=1 回血(hx)=2
#dj=1属性 回蓝(hl)=0 暴击(bj)=2 暴击伤害加成(bs)=10 闪避(sb)=1
#dj=1属性 攻击(atk)=3 防御(fy)=2
#练气初期 
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] atk 7
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hp2 150
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] ll2 150
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hl 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hx 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] bj 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] bs 10
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] fy 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] jy2 150
#练气中期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=2}] atk 12
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hp2 250
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] ll2 165
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hx 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hl 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] bj 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] bs 15
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] fy 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] jy2 200
#练气后期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=3}] atk 17
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hp2 350
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] ll2 225
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hx 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hl 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] bs 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] fy 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] jy2 600
#练气圆满
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=4}] atk 23
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hp2 450
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] ll2 300
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hx 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hl 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] bs 25
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] fy 8
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] jy2 2000




#筑基初期-要筑基奇物
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] atk 70
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hp2 1000
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] ll2 800
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hx 15
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hl 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] bs 30
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] fy 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] jy2 2500
##筑基中期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=6}] atk 105
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hp2 1500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] ll2 1000
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hx 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hl 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] bs 35
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] fy 30
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] jy2 3800
##筑基后期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=7}] atk 140
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hp2 2000
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] ll2 1200
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hx 30
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hl 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] bs 39
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] sb 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] fy 40
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] jy2 6800
##筑基圆满
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] atk 175
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hp2 2500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] ll2 1400
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hx 40
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hl 6
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] bs 44
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] sb 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] fy 50
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] jy2 12000

#金丹初期-要金丹及以上功法
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=9}] atk 100
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] hp2 3500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] ll2 1000
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] hx 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] hl 10
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] bj 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] bs 60
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] sb 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] fy 30
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=9}] jy2 7500
#元婴 需要洞天
#化神 需要天之髓
#合道 需要天地之魄
#长生 需要逆转天地之理

#筑基奇物 
# tdqw 提供永久额外属性；筑基后每次属性校准都会重新叠加。
# 这里用 add/set 叠加到基础属性上，所以必须放在境界基础属性表之后。
#虬龙枝
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=1}] hp2 500
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=1}] ll2 100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=1}] hx 20
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=1}] hl 10
#锈剑道玄
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=2}] fy 20
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=2}] atk 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={tdqw=2}] xx 10
#天煞剑意
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] hp2 -100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] ll2 -100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] hx -5
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] hl -1
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] atk 100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] bj 20
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=3}] bs 99
#附魔金苹果
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=4}] hp2 100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=4}] ll2 100
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=4}] hx 30
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=4}] hl 15
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=4}] fy 30
#不眠瞳
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=5}] hp2 500
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=5}] ll2 300
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=5}] hl 25
#沧海珠
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={tdqw=6}] ll2 1333
#青藤心露
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=7}] hp2 600
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=7}] hx 50
#血眼
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=8}] hp2 666
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=8}] atk 66
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=8}] xx 6
#苹果
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=9}] hp2 1110
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=9}] fy 11
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=9}] hx 11
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=9}] hl 11
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=9}] hx 1
#飘零梅（原hx100/zs50过高，下调回血与特殊属性）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=11}] hp2 -300
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=11}] bs 70
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=11}] hx 10
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=11}] zs 20

#烬海遗骨（原hp2 700/zs90超标，下调生命与特殊属性，保留防御惩罚）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=12}] hp2 400
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=12}] zs 40
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=12}] bj 15
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=12}] fy -25

#无相天章（原ll2 600/hl60/sb5过强，大幅下调灵力与特殊机制，保留攻击惩罚）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=13}] ll2 300
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=13}] hl 15
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=13}] sb 5
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=13}] atk -20

#赤曜古藤（原hx80/xx15偏高，下调回血与吸血，保留生命惩罚）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=14}] atk 30
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=14}] hx 25
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=14}] xx 10
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=14}] hp2 -400

#听潮玉简（原hp2 300/ll2 200略高，小幅下调双资源）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=15}] hp2 650
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=15}] ll2 120
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=15}] hl 10

#山川百脉阵图（原ll2 500/hl50严重超标，大幅下调灵力相关属性）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=16}] fy 10
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=16}] ll2 200
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=16}] hl 20

#烈炎羽（原bs66过高，下调爆发属性，保留生命惩罚）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=17}] atk 91
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=17}] zs 10
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=17}] bs 30
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=17}] hp2 -400

#行云碑（原hp2 800/fy100双高，下调生命与防御）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=18}] hp2 450
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=18}] fy 75

#灵怒火（原bj50偏高，下调暴击相关属性，保留防御惩罚）
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=19}] atk 60
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=19}] hx -5
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=19}] bj 35
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=19}] bs 50
execute if entity @a[tag="属性校准"] run scoreboard players add @a[tag="属性校准", scores={tdqw=19}] fy -30



execute if entity @a[scores={tdqw=5}] as @a[scores={tdqw=8}]  run effect @s night_vision  infinite 0 true
execute if entity @a[scores={tdqw=5}] as @a[scores={tdqw=5}]  run effect @s night_vision  infinite 0 true
execute if entity @a[scores={tdqw=5}] as @a[scores={tdqw=5}]  run effect @s speed infinite 1 true 
#功法
# 功法在基础属性之后叠加，gf 分段对应不同大境界功法。
#练气（1-100）
#小衍水决1_1
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=1}] ll2gf 50
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=1}] hlgf 3
# [E+] 玄黄清心咒 (gf=2)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=2}] hp2gf 200
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=2}] atkgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=2}] fygf 3
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=2}] hxgf 1
# [D+] 玄黄练心诀 (gf=3)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=3}] hp2gf 350
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=3}] atkgf 8
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=3}] fygf 5
# [D] 烘炉功 (gf=4)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=4}] hp2gf -75
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=4}] fygf -1
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=4}] atkgf 10
# [D++] 云水幻梦功 (gf=5)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=5}] hp2gf 580
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=5}] atkgf 8
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=5}] fygf 3
# [D++] 造化烘炉功 (gf=6)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=6}] hp2gf -150
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=6}] fygf -5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=6}] atkgf 20
# [E++] 破阵子 (gf=7)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=7}] atkgf 10
# [E++] 铁布衫 (gf=8)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=8}] atkgf -5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=8}] fygf 6
# [C-] 星尘引气诀 (gf=9)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=9}] hp2gf 700
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=9}] atkgf 10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=9}] fygf 6
# [D] 青木生长诀 (gf=10)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=10}] hp2gf 350
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=10}] hxgf 2
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=10}] hlgf 2
# [E] 练气功法-厚土归元功 (gf=11)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=11}] hp2gf 300
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=11}] fygf 5
# [D++] 练气功法-庚金裂石决 (gf=12)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=12}] atkgf 15
# [D+] 练气功法-坐山诀 (gf=13)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=13}] fygf 3
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=13}] hp2gf 400
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=13}] hxgf 3
# [D] 练气功法-风息步 (gf=14)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=14}] atkgf 7
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=14}] ll2gf 20
# [E-?] 练气功法-藏剑术 (gf=15)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=15}] atkgf 10
# [C-] 练气功法-五灵感气法 (gf=16)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] atkgf 8
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] fygf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] hp2gf 500
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] ll2gf 50
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] hxgf 4
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=16}] hlgf 2
# [D+] 练气功法-大日金乌诀 (gf=17)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=17}] atkgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=17}] hp2gf 800
# [D++] 练气功法-灵植共生法 (gf=18)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=18}] hp2gf 1000
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=18}] hxgf 10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=18}] atkgf -10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=18}] fygf -3
# [E] 练气功法-聚灵纳气诀 (gf=19)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=19}] hp2gf 400
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=19}] atkgf 4
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=19}] fygf 2
# [C-] 练气功法-八荒镇海桩 (gf=20)
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=20}] hp2gf 700
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=20}] hxgf 4





# 筑基-生死禅功（上）
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=99}] hp2gf 300
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=99}] hxgf 10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=99}] hlgf 10
# 筑基-生死禅功（下）
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=100}] hp2gf -1000
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=100}] hxgf -10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=100}] hlgf -10
# 筑基-玄黄生死禅功
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] hp2gf 1000
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] hxgf 20
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] hlgf 20
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] atkgf 40
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] zsgf 40
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=101}] fygf 40
# 筑基-坐山决
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=102}] hp2gf 100
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=102}] hxgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=102}] hlgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=102}] atkgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=102}] hp2gf *=  rsa rs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=102}] ll2gf *=  rsa rs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=102}] hxgf *=  rsa rs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=102}] hlgf *=  rsa rs
# 筑基-沧海游龙功
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103}] ll2gf 666
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103}] hlgf 30
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103}] atkgf 30
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103}] bjgf 5
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103}] bsgf 50
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103,tdqw=6}] ll2gf 1332
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103,tdqw=6}] hlgf 60
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103,tdqw=6}] atkgf 60
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103,tdqw=6}] bjgf 10
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players set @s[scores={gf=103,tdqw=6}] bsgf 100
# 筑基-身化他自在
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hp2gf = @s hp2
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hp2gf /= "2" sum
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hxgf = @s hx
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hxgf /= "3" sum
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hlgf = @s hl
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] hlgf /= "3" sum
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] atkgf = @s atk
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s[scores={gf=104}] atkgf /= "3" sum


























# 法不可同修
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hp2gf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s ll2gf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hxgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hlgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s atkgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s fygf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s bjgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s bsgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s mzgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s sbgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s zsgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s xxgf /= @s gfrs
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s xygf /= @s gfrs

execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hp2 += @s hp2gf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s ll2 += @s ll2gf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hx += @s hxgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s hl += @s hlgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s atk += @s atkgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s fy += @s fygf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s bj += @s bjgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s bs += @s bsgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s mz += @s mzgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s sb += @s sbgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s zs += @s zsgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s xx += @s xxgf
execute as @a unless entity @s[tag=!"属性校准",tag=!"法不可同修"] run scoreboard players operation @s xy += @s xygf

execute if entity @a[tag="属性校准"] run tag @a[tag="属性校准"] remove "属性校准"
execute if entity @a[tag="法不可同修"] run tag @a[tag="法不可同修"] remove "法不可同修"
tag @a[tag=tp] remove tp
scoreboard players set @a[tag=!tpsj,scores={tpzt=2..}] tpzt 0 
