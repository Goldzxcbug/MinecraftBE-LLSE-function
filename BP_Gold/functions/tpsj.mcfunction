# 初始化突破事件状态；没有 tpzt 分数的玩家会被补到 0。
execute as @a[tag=tpsj] run scoreboard players add @s tpzt 0

# tpzt=0 表示刚进入突破事件，推进到准备阶段。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=0},tag=tpsj] run scoreboard players add @s tpzt 1

# 突破次数 dj 为 0..3 时直接突破成功，不进入后续判定。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1,dj=0..3},tag=tpsj] run tag @s add tp
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1,dj=0..3},tag=tpsj] run tag @s remove tpsj

# dj=4 时设置突破次数、突破强度和突破平衡参数。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1,dj=4},tag=tpsj] run scoreboard players set @s tp 5
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1,dj=4},tag=tpsj] run scoreboard players random @s tpqd 3 5
# tpph：突破平衡，用于降低最终突破伤害。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1,dj=4},tag=tpsj] run scoreboard players set @s tpph 2

# 初始化单次突破循环的倒计时、随机值和波动计时器。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1},tag=tpsj] run scoreboard players set @s tptime 20
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1},tag=tpsj] run scoreboard players random @s tprand 0 50
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1},tag=tpsj] run scoreboard players set @s tptick 0

# tptick 在 0..50 之间往返，用来影响末影珍珠命中时的 tprand 判定。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=2},tag=tpsj] run scoreboard players add @s tptick 2
execute if entity @a[tag=tpsj] as @a[scores={tpzt=2,tptick=50..},tag=tpsj] run scoreboard players set @s tpzt 3
execute if entity @a[tag=tpsj] as @a[scores={tpzt=3},tag=tpsj] run scoreboard players add @s tptick -1
execute if entity @a[tag=tpsj] as @a[scores={tpzt=3,tptick=..0},tag=tpsj] run scoreboard players set @s tpzt 2

# 初始化完成后进入循环状态；已经成功突破的玩家移除 tpsj。
execute if entity @a[tag=tpsj] as @a[scores={tpzt=1},tag=tpsj] run scoreboard players add @s tpzt 1
execute if entity @a[tag=tpsj] as @a[tag=tp,tag=tpsj] run tag @s remove tpsj

# 首次进入本轮突破时计算基础伤害：
# tpsh = 10 * dj * dj * tpqd / tpph / tp。
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh = "10" sum
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh *= @s dj  
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh *= @s dj 
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh *= @s tpqd
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh /= @s tpph
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run scoreboard players operation @s tpsh /= @s tp

# 本轮突破期间给予抗火，并用 tpsja 标记避免重复计算基础伤害。
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run effect @s fire_resistance 21 3 true 
execute if entity @a[tag=tpsj,tag=!tpsja] as @a[tag=tpsj] run tag @s add tpsja

# 仍有剩余突破次数时显示岩浆粒子。
execute if entity @a[tag=tpsj,scores={tp=1..}] run particle minecraft:lava_particle ~~~

# 玩家附近存在末影珍珠时，将 tprand 与当前 tptick 对比来决定本轮伤害修正。
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj] at @s if entity @e[r=3.5,type=minecraft:ender_pearl] run scoreboard players operation @s tprand -= @s tptick
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=1..}] at @s if entity @e[r=3.5,type=minecraft:ender_pearl] run scoreboard players operation @s tprand *= "-1" sum

# 精准命中窗口：伤害降为五分之一。
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=0}]  run scoreboard players operation @s tpsh /= "5" sum
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=0}]  run tellraw @s {"rawtext":[{"text":"全是灵力沸腾，完美减伤"}]}

# 接近命中窗口：伤害减半。
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=-2..-1}] run scoreboard players operation @s tpsh /= "2" sum
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=-2..-1}]  run tellraw @s {"rawtext":[{"text":"气沉丹田，减伤"}]}

# 偏差过大：伤害翻倍。
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=..-30}] run scoreboard players operation @s tpsh *= "2" sum
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj,scores={tprand=..-30}] run tellraw @s {"rawtext":[{"text":"灵力虚浮，走火入魔"}]}

# 末影珍珠触发本轮立即结算，并移除 tpsja 以便下一轮重新计算基础伤害。
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj] at @s if entity @e[r=3.5,type=minecraft:ender_pearl] run scoreboard players set @s tptime -1
execute if entity @a[tag=tpsj] if entity @e[type=minecraft:ender_pearl] as @a[tag=tpsj] at @s if entity @e[r=3.5,type=minecraft:ender_pearl] run tag @s remove tpsja

# 清理用于突破判定的末影珍珠，防止重复触发。
kill @e[type=minecraft:ender_pearl]

# 倒计时结束或末影珍珠触发后，结算伤害、召唤雷电并推进突破次数。
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] run scoreboard players operation @s sskx += @s tpsh
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] at @s run summon minecraft:lightning_bolt ~~~  
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] run scoreboard players set @s tpsh 0
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] run scoreboard players add @s tp -1

# tp 扣到 0 后标记突破完成，并设置需求冷却。
execute if entity @a[tag=tpsj,scores={tptime=..0,tp=..0}] as @a[tag=tpsj] run tag @s add tp
execute if entity @a[tag=tpsj,scores={tptime=..0,tp=..0}] as @a[tag=tpsj] run scoreboard players set @s xqcd 1

# 重置下一轮突破的随机值和倒计时。
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] run scoreboard players random @s tprand 0 50
execute if entity @a[tag=tpsj,scores={tptime=..0}] as @a[tag=tpsj] run scoreboard players set @s tptime 20

# 每秒减少一次突破倒计时。
execute if score "tick" tick matches 19 if entity @a[tag=tpsj,scores={tptime=1..}] as @a[tag=tpsj] run scoreboard players add @s tptime -1

# 倒计时仍在进行时，维持需求冷却状态。
execute if entity @a[tag=tpsj,scores={tptime=1..}] as @a[tag=tpsj] run scoreboard players set @s xqcd 3 
