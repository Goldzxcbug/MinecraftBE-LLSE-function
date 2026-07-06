# 游戏规则相关
gamerule commandblockoutput false
gamerule mobgriefing false
gamerule keepinventory true
gamerule doweathercycle false
gamerule tntexplodes false
gamerule showbordereffect false
gamerule showcoordinates true
gamerule respawnblocksexplode false
gamerule randomtickspeed 0

# 积分声明（玩家属性相关）
# ls   灵石           | hp   当前血量      | hp2  血上限
# atk  攻击           | fy   防御         | atkjc   攻击加成
# atkjm 攻击减免      | sb   闪避率       | mz      命中
# bj   暴击率         | bs   暴击伤害加成 | ll      当前蓝量
# ll2  蓝量上限       | zs   真伤         | xy      幸运
# day  天数           | hx   回血         | hl      回蓝
# xx   吸血           | shxs 伤害吸收     | jy      经验
# jy2  dj等级         | xw   修为         | tdqw    筑基奇物
# tdqw1 金丹功法      | tdqw2 元婴洞天    | tdqw3   化神天之髓
# tdqw4 合道天地之魄  | uuid 玩家id       | yj      耀金
# gf     
scoreboard objectives add uuid dummy
scoreboard objectives add day dummy
scoreboard objectives add sw dummy
scoreboard objectives add shxs dummy 
scoreboard objectives add ls dummy 
scoreboard objectives add hp dummy 
scoreboard objectives add hp2 dummy 
scoreboard objectives add hl dummy 
scoreboard objectives add hx dummy 
scoreboard objectives add atk dummy
scoreboard objectives add fy dummy
scoreboard objectives add atkjc dummy 
scoreboard objectives add atkjm dummy
scoreboard objectives add sb dummy
scoreboard objectives add mz dummy
scoreboard objectives add bj dummy
scoreboard objectives add bs dummy
scoreboard objectives add ll dummy
scoreboard objectives add ll2 dummy
scoreboard objectives add xx dummy
scoreboard objectives add zs dummy
scoreboard objectives add xy dummy
scoreboard objectives add dj dummy
scoreboard objectives add jy dummy
scoreboard objectives add jy2 dummy
scoreboard objectives add tdqw dummy
scoreboard objectives add tdqw1 dummy
scoreboard objectives add tdqw2 dummy
scoreboard objectives add tdqw3 dummy
scoreboard objectives add tdqw4 dummy
scoreboard objectives add zq dummy
scoreboard objectives add yj dummy
scoreboard objectives add yja dummy
scoreboard objectives add ld dummy
scoreboard objectives add ldll dummy
scoreboard objectives add ldjy dummy
scoreboard objectives add ldjy2 dummy
scoreboard objectives add gf dummy
scoreboard objectives add gftime dummy
# 玩家最终防御 # 玩家最终伤害

scoreboard objectives add kshx dummy
scoreboard objectives add kshxt dummy
scoreboard objectives add kshl dummy
scoreboard objectives add kshlt dummy
scoreboard objectives add ksfy dummy
scoreboard objectives add ksfyt dummy
scoreboard objectives add ksatk dummy
scoreboard objectives add ksatkt dummy


# 战斗相关      # 受伤扣血
scoreboard objectives add sskx dummy  

# Tick/计时相关
scoreboard objectives add ftime dummy
scoreboard objectives add tick dummy
scoreboard objectives add ticka dummy

# 武器类型相关
scoreboard objectives add wqlx dummy

# 常用数值
scoreboard objectives add sum dummy
scoreboard players set "-1" sum -1
scoreboard players set "1" sum 1
scoreboard players set "2" sum 2
scoreboard players set "3" sum 3
scoreboard players set "4" sum 4
scoreboard players set "5" sum 5
scoreboard players set "6" sum 6
scoreboard players set "7" sum 7
scoreboard players set "8" sum 8
scoreboard players set "9" sum 9
scoreboard players set "10" sum 10
scoreboard players set "50" sum 50
scoreboard players set "100" sum 100
scoreboard players set "200" sum 200

# 临时变量
scoreboard objectives add temp dummy
scoreboard objectives add tempa dummy
scoreboard objectives add tempb dummy
scoreboard objectives add tempc dummy
scoreboard objectives add tempd dummy
scoreboard objectives add x dummy
scoreboard objectives add z dummy
# 随机相关
scoreboard objectives add rand dummy
scoreboard objectives add gwrand dummy

# 菜单相关
scoreboard objectives add xqcd dummy 

# 显示相关
scoreboard objectives add sjshxs dummy     
scoreboard objectives add xxxs dummy
scoreboard objectives add xwa dummy
scoreboard objectives add lsa dummy
# 战斗统计
scoreboard objectives add jzrs dummy    

# 传送相关
scoreboard objectives add tptime dummy
scoreboard objectives add tp dummy
scoreboard objectives add tpsh dummy
scoreboard objectives add tpqd dummy 
scoreboard objectives add tpph dummy
scoreboard objectives add tprand dummy
scoreboard objectives add tptick dummy
scoreboard objectives add tpzt dummy

# 特殊武器
scoreboard objectives add tygcd dummy
scoreboard objectives add tyglx dummy 

# 剧情相关
scoreboard objectives add jqtime dummy
scoreboard objectives add jq dummy
scoreboard objectives add jqa dummy
scoreboard objectives add rw dummy
scoreboard objectives add rwa dummy

scoreboard objectives add rw2 dummy

scoreboard objectives add wy dummy

# 特殊状态
scoreboard objectives add wqjx dummy  