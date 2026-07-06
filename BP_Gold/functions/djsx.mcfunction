#等级属性
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
execute  as @a[tag=tp] if score @s jy >= @s jy2 run scoreboard players add @s dj 1
execute  as @a[tag=tp] if score @s jy >= @s jy2 run effect @s speed 600 1 true
execute  as @a[tag=tp] if score @s jy >= @s jy2 run effect @s haste 600 1 true
execute  as @a[tag=tp] at @s if score @s jy >= @s jy2 run playsound random.levelup @a[r=100] ~~~ 1 0.2



execute  as @a[tag=tp,hasitem={item=bamboo,data=10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 1 
execute  as @a[tag=tp,hasitem={item=bamboo,data=10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s bamboo 10 1
execute  as @a[tag=tp,hasitem={item=blade_pottery_sherd,data=10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 2 
execute  as @a[tag=tp,hasitem={item=blade_pottery_sherd,data=10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s blade_pottery_sherd 10 1
execute  as @a[tag=tp,hasitem={item=blade_pottery_sherd,data=11},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 3 
execute  as @a[tag=tp,hasitem={item=blade_pottery_sherd,data=11},scores={dj=5}] if score @s jy >= @s jy2 run clear @s blade_pottery_sherd 11 1
execute  as @a[tag=tp,hasitem={item=mojang_banner_pattern,data=10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 4 
execute  as @a[tag=tp,hasitem={item=mojang_banner_pattern,data=10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s mojang_banner_pattern 10 1
execute  as @a[tag=tp,hasitem={item=ender_eye,data=10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 5 
execute  as @a[tag=tp,hasitem={item=ender_eye,data=10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s ender_eye 10 1
execute  as @a[tag=tp,hasitem={item=diamond,data=10},scores={dj=5}] if score @s jy >= @s jy2 run scoreboard players set @s tdqw 6
execute  as @a[tag=tp,hasitem={item=diamond,data=10},scores={dj=5}] if score @s jy >= @s jy2 run clear @s diamond 10 1

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
#dj=1属性 生命上限(hp2)= 300  蓝量上限(ll2)=150 真伤(zs)=1 回血(hx)=2
#dj=1属性 回蓝(hl)=0 暴击(bj)=2 暴击伤害加成(bs)=10 闪避(sb)=1
#dj=1属性 攻击(atk)=3 防御(fy)=2
#练气初期 
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=1}] atk 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hp2 500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] ll2 150
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hl 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] hx 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] bj 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] bs 10
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] fy 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=1}] jy2 300
#练气中期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=2}] atk 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hp2 550
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] ll2 165
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hx 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] hl 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] bj 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] bs 12
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] fy 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=2}] jy2 500
#练气后期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=3}] atk 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hp2 600
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] ll2 225
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hx 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] hl 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] bs 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] fy 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=3}] jy2 700
#练气圆满
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=4}] atk 6
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hp2 650
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] ll2 225
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hx 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] hl 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] bs 23
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] fy 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=4}] jy2 2000




#筑基初期-要筑基奇物
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=5}] atk 20
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hp2 1000
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] ll2 500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hx 7
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] hl 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] bj 3
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] bs 26
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] fy 10
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=5}] jy2 1500
##筑基中期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=6}] atk 25
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hp2 1200
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] ll2 600
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hx 8
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] hl 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] bs 35
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] sb 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] fy 12
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=6}] jy2 2225
##筑基后期
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=7}] atk 30
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hp2 1500
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] ll2 700
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hx 10
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] hl 5
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] bs 39
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] sb 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] fy 13
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=7}] jy2 3000
##筑基圆满
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准", scores={dj=8}] atk 35
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hp2 1750
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] ll2 700
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hx 12
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] hl 6
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] bj 4
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] bs 45
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] sb 2
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] fy 15
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] zs 1
execute if entity @a[tag="属性校准"]  run scoreboard players set @a[tag="属性校准",scores={dj=8}] jy2 10000




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

#功法
#练气（1-100）
#小衍水决1_11
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={gf=1}] ll2 50
execute if entity @a[tag="属性校准"]  run scoreboard players add @a[tag="属性校准", scores={gf=1}] hl 3
#筑基（101-200）

#金丹（201-300）

#元婴（301-400）

#千机玉寰金章301_10
#无效果

#化神（401-500）

#合道（501-600）

#筑基奇物 
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







execute if entity @a[scores={tdqw=5}] as @a[scores={tdqw=5}]  run effect @s night_vision  infinite 0 true
execute if entity @a[scores={tdqw=5}] as @a[scores={tdqw=5}]  run effect @s speed infinite 1 true 
execute if entity @a[tag="属性校准"] run tag @a[tag="属性校准"] remove "属性校准"






#突破升级 tpzt-突破状态 1-初始化 2和3是鱼竿循环
tag @a[tag=tp] remove tp
scoreboard players set @a[tag=!tpsj,scores={tpzt=2..}] tpzt 0 


