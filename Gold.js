function debounce(func, delay) {
    let timerId = null;
    
    const debounced = function(...args) {
        const context = this;
        
        // 如果已有定时器任务，先取消之前的
        if (timerId !== null) {
            clearInterval(timerId);
        }
        
        // 设置新的定时器
        timerId = setTimeout(function() {
            func.apply(context, args);
            timerId = null;
        }, delay);
    };
    
    // 取消方法
    debounced.cancel = function() {
        if (timerId !== null) {
            clearInterval(timerId);
            timerId = null;
        }
    };
    
    return debounced;
}










function zjqw(num)
{
    switch(num)
    {
        case 0: return "";
        case 1: return "【§a虬龙枝§r】";
        case 2: return "【§6锈剑道玄§r】";
        case 3: return "【§0天煞剑意§r】";
        case 4: return "【§5附魔金苹果§r】";
        case 5: return "【§2不眠瞳§r】";
        case 6: return "【§b沧海珠§r】";
        default: return "错误";
    }
}
function gf(num){
    switch(num)
    {
        case 0: return "";
        case 1: return "§4▪ §2练气功法：  §r 【§b小衍水决§r】§r";
        case 301: return "§4▪ §e元婴功法：  §r 【§e千机玉寰金章§r】§r";
        default: return "错误";

    }

}






function hxxt()
{

    function playerscore(st) {
        let atk = st.getScore("atk")||0;//攻击力
        let fy = st.getScore("fy")||0;//防御
        let ll = st.getScore("ll")||0;//灵力
        let bj = st.getScore("bj")||0;//暴击
        let bs = st.getScore("bs")||0;//暴
        let mz = st.getScore("mz")||0;//命中
        let shxs = st.getScore("shxs")||0;//伤害吸收
        let atkjm = st.getScore("atkjm")||0;//攻击减免
        let xx = st.getScore("xx")||0;//吸血
        let zs = st.getScore("zs")||0;//真实伤害
        let sb = st.getScore("sb")||0;//闪避

        // 主手武器判定（做存在性检查以防 null）
        try {
            const it = st.getInventory().getItem(9);
            const t = it ? it.type : null;
            const aux = it ? it.aux : null;
            switch(t) //主手武器
            {
                case "minecraft:wooden_axe": atk+=4 ; st.setScore("wqlx",1) ; break;
                case "minecraft:stone_axe": atk+=9 ; st.setScore("wqlx",2) ; break;
                case "minecraft:iron_axe": atk+=13 ; st.setScore("wqlx",3) ; break;
                case "minecraft:golden_axe": atk+=18 ; st.setScore("wqlx",4) ; break;
                case "minecraft:diamond_axe": atk+=21 ; st.setScore("wqlx",5) ; break;
                case "minecraft:netherite_axe": atk+=24 ; st.setScore("wqlx",6) ; break;
                case "minecraft:wooden_sword": atk+=4 ; st.setScore("wqlx",7) ; break;
                case "minecraft:stone_sword": atk+=5 ; st.setScore("wqlx",8) ; break;
                case "minecraft:iron_sword": atk+=6 ; st.setScore("wqlx",9) ; break;
                case "minecraft:golden_sword": atk+=7 ; st.setScore("wqlx",10) ; break;
                case "minecraft:diamond_sword": atk+=10 ; st.setScore("wqlx",11) ; break;
                case "minecraft:netherite_sword": atk+=13 ; st.setScore("wqlx",12) ; break;
                case "minecraft:archer_pottery_sherd": if(aux==10) {atk+=15 ; st.setScore("wqlx",13)} ; break;//灵力枪
                case "minecraft:flow_pottery_sherd": if(aux==10) {atk+=20 ; st.setScore("wqlx",13)} ; break;//灵力弯刀
                case "minecraft:amethyst_cluster": if(aux==10) {atk=30 ; st.setScore("wqlx",14)} ; break;//碎发枪
                default: st.setScore("wqlx",0); break;
            }
        } catch (e) {
            try{ st.setScore("wqlx",0);}catch(e){}
        }

        try{
            switch(st.getArmor().getItem(1).type) //胸甲
            {
                case "minecraft:leather_chestplate": fy+=3; break;
                case "minecraft:iron_chestplate": fy+=6; break;
                case "minecraft:golden_chestplate": fy+=15; break;
                case "minecraft:diamond_chestplate": fy+=9; break;
                case "minecraft:netherite_chestplate": fy+=11; break;
                default: break;
            }
        } catch(e) {}

        try{
            switch(st.getArmor().getItem(2).type) //护腿
            {
                case "minecraft:leather_leggings": fy+=2; break;
                case "minecraft:iron_leggings": fy+=5; break;
                case "minecraft:golden_leggings": fy+=13; break;
                case "minecraft:diamond_leggings": fy+=7; break;
                case "minecraft:netherite_leggings": fy+=9; break;
                default: break;
            }
        } catch(e) {}

        try{
            switch(st.getArmor().getItem(3).type) //靴子
            {
                case "minecraft:leather_boots": fy+=1; break;
                case "minecraft:iron_boots": fy+=4; break;
                case "minecraft:golden_boots": fy+=10; break;
                case "minecraft:diamond_boots": fy+=5; break;
                case "minecraft:netherite_boots": fy+=6; break;
                default: break;
            }
        } catch(e) {}

        return [atk,fy,ll,bj,bs,mz,zs,sb,shxs,atkjm,xx];
    }

    function modscore(st)
    {
        let atk = mc.getScoreObjective("atk").getScore(st.uniqueId)||0;
        let fy = mc.getScoreObjective("fy").getScore(st.uniqueId)||0;
        let ll = mc.getScoreObjective("ll").getScore(st.uniqueId)||0;
        let bj = mc.getScoreObjective("bj").getScore(st.uniqueId)||0;
        let bs = mc.getScoreObjective("bs").getScore(st.uniqueId)||0;
        let mz = mc.getScoreObjective("mz").getScore(st.uniqueId)||0;
        let zs = mc.getScoreObjective("zs").getScore(st.uniqueId)||0;
        let sb = mc.getScoreObjective("sb").getScore(st.uniqueId)||0;
        return [atk,fy,ll,bj,bs,mz,zs,sb,0,0,0];
    }

const displayDamage = debounce((player,player_, sh, isCrit) => {
    if (player_ && typeof player_.getScore === "function") {
        if (sh === null) {
            player_.setTitle(`Miss`);
        } else if (player && typeof player.getScore === "function") {
            player_.setTitle(`              ${(isCrit) ? "§4" : ""}${player_.getScore("sjshxs")}`);
            player_.setTitle(`            ＨＰ:${player.getScore("hp")}/${player.getScore("hp2")}`, 3);
            
        }else {
            player_.setTitle(`              ${(isCrit) ? "§4" : ""}${player_.getScore("sjshxs")}`);
            player_.setTitle(`            ＨＰ:${mc.getScoreObjective("hp").getScore(player.uniqueId)}/${mc.getScoreObjective("hp2").getScore(player.uniqueId)}`, 3);
        }
        player_.setScore("sjshxs",0);
        player_.setScore("xxxs",0);
    }
            
}, 10);

    const hurtCooldown = {};
    const hurtCooldownTime = 100;

    mc.listen("onMobHurt", (mob,source,damage,cause) => {
        // player = 被攻击者 (mob)，player_ = 攻击者 (source)
        if(!mob) return;
        const hurtId = mob.uniqueId || mob.xuid || mob.uuid || (mob.pos ? `${mob.type || mob.name}:${mob.pos.x},${mob.pos.y},${mob.pos.z}` : mob.name);
        if (hurtId) {
            if (hurtCooldown[hurtId]) return false;
            hurtCooldown[hurtId] = true;
            setTimeout(() => {
                delete hurtCooldown[hurtId];
            }, hurtCooldownTime);
        }
        var sh = null; 
        var player;
        var isCrit = false;
        var atk=0,fy=0,ll=0,bj=0,bs=0,mz=0,zs=0,sb=0,shxs=0,atkjm=0,xx=0;

        if (mob.isPlayer()) {
            player = mob.toPlayer();
            var arr = playerscore(player) || [];
            [atk=0,fy=0,ll=0,bj=0,bs=0,mz=0,zs=0,sb=0,shxs=0,atkjm=0,xx=0] = arr;
        } 
        else 
        {
            player = mob;
            var arr2 = modscore(mob) || [];
            [atk=0,fy=0,ll=0,bj=0,bs=0,mz=0,zs=0,sb=0,shxs=0,atkjm=0,xx=0] = arr2;
        }

        var player_ = null;
        var atk_=0,fy_=0,ll_=0,bj_=0,bs_=0,mz_=0,zs_=0,sb_=0,shxs_=0,atkjm_=0,xx_=0;
        if (!source) {
            return; //未知伤害来源
        }

        if (typeof source.isPlayer === "function" && source.isPlayer()) {
            player_ = source.toPlayer();
            var arr3 = playerscore(player_) || [];
            [atk_=0,fy_=0,ll_=0,bj_=0,bs_=0,mz_=0,zs_=0,sb_=0,shxs_=0,atkjm_=0,xx_=0] = arr3;
        } else {
            player_ = source;
            var arr4 = modscore(source) || [];
            [atk_=0,fy_=0,ll_=0,bj_=0,bs_=0,mz_=0,zs_=0,sb_=0,shxs_=0,atkjm_=0,xx_=0] = arr4;
        }
        // 攻击者武器效果（若为玩家）
            if(player_ && typeof player_.getScore === "function")
            {
                switch(player_.getScore("wqlx")){
                    case 1:player_.addEffect(18,25,100,false);break;//木斧1.25s
                    case 2:player_.addEffect(18,20,100,false);break;//石斧1s
                    case 3:player_.addEffect(18,20,100,false);break;//铁斧1s
                    case 4:player_.addEffect(18,10,100,false);break;//金斧0.5s
                    case 5:player_.addEffect(18,15,100,false);break;//钻石斧0.75s
                    case 6:player_.addEffect(18,12,100,false);break;//下界合金斧0.6s

                    case 7:player_.addEffect(18,10,100,false);break;//木剑0.5s
                    case 8:player_.addEffect(18,8,100,false);break;//石剑0.4s
                    case 9:player_.addEffect(18,6,100,false);break;//铁剑0.3s
                    case 10:player_.addEffect(18,4,100,false);break;//金剑0.2s
                    case 11:player_.addEffect(18,6,100,false);break;//钻石剑0.3s
                    case 12:player_.addEffect(18,6,100,false);break;//下界合金剑0.3s
                    default: break;
                }
            }
        var hitChance = Math.max(0, Math.min(100, 100 - sb + mz_));
        if (Math.random()*100 >= hitChance) {
            // Miss
            sh = null;
        } else {
            // 命中 -> 计算伤害
            const variance = Math.floor(Math.random() * (120 - 80 + 1)) + 80; // [80,120]
            atk_ = Math.floor((atk_ || 0) * variance / 100);
            if (player_&& typeof player_.getScore === "function"&&player_.hasTag("critical_hit"))
            {
                atk_ = Math.floor(atk_ * 1.5);
            }
            if (Math.random()*100 < bj_) {
                atk_ = Math.floor(atk_ * (bs_  + 100) / 100);
                isCrit = true;
            }

            if (fy  - atk_ > 0) {
                sh = zs_;
            } else {
                sh = atk_ - fy;

                // 吸收盾判断
                if (shxs >= sh) {
                    let absorbed = sh;
                    sh = zs_;
                    shxs -= absorbed;
                    if (player && typeof player.setScore === "function") player.setScore("shxs", shxs);
                } else {
                    sh = sh + zs_ - shxs;
                    shxs = 0;
                }
            }

            const lifesteal = Math.floor(sh * (xx_ / 100));// 吸血计算
            if (lifesteal > 0 && player_ && typeof player_.getScore === "function") {
                player_.addScore("xxxs", lifesteal);
                player_.addScore("hp", lifesteal);
            }

            if (sh >= 0) {

                if (player_ && typeof player_.getScore === "function") {
                    player_.addScore("sjshxs", sh);
                }
                // 被攻击者扣血
                if (player && typeof player.getScore === "function") {
                     if(player.getScore("atkjm")>0) sh = Math.floor(sh * (100 - player.getScore("atkjm")) / 100);
                     player.reduceScore("hp", sh);
                     player.setScore("shxs", shxs);

                } else {
                        mc.getScoreObjective("hp").reduceScore(player.uniqueId,sh);        
                }

                        // 玩家死亡处理
                if (player && typeof player.getScore === "function" && player.getScore("hp") <= 0) {
                    let str = "";
                    switch(player.getScore("dj"))
                    {
                        case 1: case 2: case 3: case 4 : str += `§a§l练气修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        case 5: case 6: case 7: case 8 : str += `§7§l筑基修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        case 9: case 10: case 11: case 12 : str += `§g§l金丹修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        case 13: case 14: case 15: case 16 : str += `§e§l元婴修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        case 17: case 18: case 19: case 20 : str += `§6§l化神修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        case 21: case 22: case 23: case 24 : str += `§4§l合道修士§f${player.name},凡修道${player.getScore("day")}载`; break;
                        default: break;
                    }
                    if(player.getScore("dj")>4) str += `以奇物${zjqw(player.getScore("tdqw"))}§l成就道基`
                    if(player.getScore("dj")>8) str += `以${gf(player.getScore("gf"))}§l成就金丹`
                    //if(player.getScore("dj")>12) str += `,夺${zjqw(player.getScore("tdqw3"))}以成元婴`
                    //if(player.getScore("dj")>16) str += `,抽${zjqw(player.getScore("tdqw4"))}以化其神`
                    //if(player.getScore("dj")>20) str += `,祭${zjqw(player.getScore("tdqw5"))}已身合道·
                    //str += `于***之地`
                    if(player_ && typeof player_.getScore === "function") {
                        let weaponName = "空手";
                        try {
                            const weapon = player_.getInventory().getItem(9);
                            if (weapon && weapon.name) weaponName = weapon.name;
                        } catch(e) {}
                        str += `被${player_.name}使用${weaponName}击杀,如今身死道消,还道于天!`
                    }
                    else {
                        const sourceName = player_ && player_.name ? player_.name : "未知伤害";
                        str  += `不慎被${sourceName}所杀,如今身死道消,还道于天!`
                    }
                    switch(player.getScore("dj"))
                    {
                        case 0: break;
                        case 1: case 2: case 3: case 4 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=100] {"rawtext":[{"text":"${str}"}]}`); break;
                        case 5: case 6: case 7: case 8 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=300] {"rawtext":[{"text":"${str}"}]}`); break;
                        case 9: case 10: case 11: case 12 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=500] {"rawtext":[{"text":"${str}"}]}`); break;
                        case 13: case 14: case 15: case 16 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=1000] {"rawtext":[{"text":"${str}"}]}`); break;
                        case 17: case 18: case 19: case 20 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=5000] {"rawtext":[{"text":"${str}"}]}`); break;
                        case 21: case 22: case 23: case 24 : mc.runcmdEx(`execute as "${player.name}" at @s run tellraw @a[r=100000000] {"rawtext":[{"text":"${str}"}]}`); break;
                        default: break;
                    }
                    player.kill();
                    player.setScore("hp",10);
                }
                else if(mc.getScoreObjective("hp").getScore(player.uniqueId)<=0)
                {
                    player.kill();
                }
            }
        }

        displayDamage(player,player_, sh, isCrit);
    });


    mc.listen("onTick", () => {
        let players = mc.getOnlinePlayers();
        for(let i=0;i<players.length;i++){
            let player = players[i];

            const data ={
                            "§c§l生命" : player.getScore("hp"),
                            "§b§l灵力" : player.getScore("ll")  
                        }
            if(player.getScore("kshxt")>0) data[`§a§l恢复${player.getScore("kshx")}`] = -1*player.getScore("kshxt");
            if(player.getScore("kshlt")>0) data[`§3§l回灵${player.getScore("kshl")}`] = -1*player.getScore("kshlt");
            if(player.getScore("ksatkt")>0) data[`§4§l力量${player.getScore("ksatk")}`] = -1*player.getScore("ksatkt");
            if(player.getScore("ksfyt")>0) data[`§e§l防御${player.getScore("ksfy")}`] = -1*player.getScore("ksfyt");
            if(Object.keys(data).length>2) data["§l§k------"] = 0;
            player.setSidebar("----状态栏----",data);
        }
    });

    function getAttrName(name) {
        switch (name) {
            case "hp2": return "§c生命上限";
            case "ll2": return "§9灵力上限";
            case "hl": return "§5回灵";
            case "hx": return "§c回血";
            case "bj": return "§6暴击";
            case "bs": return "§3暴伤";
            case "zs": return "§f真伤";
            case "atk": return "§4攻击力";
            case "sb": return "§e闪避";
            case "fy": return "§f防御";
            default: return name;
        }
    }
let uuidtime = {};
mc.listen("onScoreChanged", (player, num, name, disName) => {
    const pid = player.xuid || player.name;
    if (['hp2','ll2','hl','hx','bj','bs','zs','atk','sb','fy'].includes(name)) {
        
        if (!uuidtime[pid]) {
            uuidtime[pid] = { debounceFuncs: {} };
        }
        
        
        if (!uuidtime[pid].debounceFuncs[name]) {
            uuidtime[pid].debounceFuncs[name] = debounce((player, num, name) => {
                try { 
                    player.tell(`[属性变化] ${getAttrName(name)} 变为${num}`); 
                } catch(e) {}
            }, 100);
        }
        
        
        uuidtime[pid].debounceFuncs[name](player, num, name);
        return; 
    }
    
    // 处理 xqcd 属性
    if (name == "xqcd" && player.hasTag("tpsj") == false) {
        if (num >= 1) player.sendText("", 3);
        if (num == 4) {   
            let stra =
`§f[§c修仙状态§f]§8 -- §f${player.name}§7
§f▁▁▁▁▁▁▁▁▁▁▁▁▁▁
§0▪ §b灵石: §f${player.getScore("ls")}    §0▪§e 耀金: §f${player.getScore("yj")}
§1▪ §3修道: §f${player.getScore("day")} 载
§2▪ §d剧情: §f${player.getScore("jq")}    §2▪§5 任务: §f${player.getScore("rw")}`;

if (player.getScore("tdqw") >= 1) stra += `\n§3▪ §a筑基奇物：  §r ${zjqw(player.getScore("tdqw"))} §r`;
if (player.getScore("gf") >= 1) stra += `\n${gf(player.getScore("gf"))}`;
if (player) player.setTitle(`${stra}`, 4);
        }
        return;
    }
    
    // 处理 gftime 属性
    if (name == "gftime" && num >= 1 && player.getScore("xqcd") == 0) {
        player.setTitle(`--------[领悟功法中]--------\n§0▪ §f时间: §f${player.getScore("gftime")}s\n§3▪ §b灵力: §f${player.getScore("ll")}/${player.getScore("ll2")}${player.getScore("ll")<=10?`\n§4▪ §f当前灵力过低，无法继续领悟功法！`:``}\n${gf(player.getScore("gf"))}`, 4);
        return;
    }
});

}





//丹药系统
function dy() {
    
    // 自身丹药等级，时间      吃的丹药等级，时间  
    function effect(a,atime,b,btime,sx,player) {
        let [lv,lvt]=[0,0];
        if(a==null) a=0;
        if(atime==null) atime=0;
        if(a>=b) {
            lv = a;
            lvt = Number(atime+btime*b/a);
        }
        else{
            lv = b;
            lvt = Number(btime+atime*a/b);
        }
        if(sx=="hx")
        {
            player.setScore("kshx", lv);
            player.setScore("kshxt", lvt);
        }
        else if(sx=="hl")
        {
            player.setScore("kshl", lv);
            player.setScore("kshlt", lvt);
        }
        else if(sx=="atk")
        {
            player.setScore("ksatk", lv);
            player.setScore("ksatkt", lvt);
        }
        else if(sx=="fy")
        {
            player.setScore("ksfy", lv);
            player.setScore("ksfyt", lvt);
        }
        mc.runcmdEx(`execute as "${player.name}" unless entity @s[tag=tpsj] run scriptevent usf:command hotbar 1`);
    }
    mc.listen("onAte", (player, item) => {
        switch (item.type) {
            case "gold:fr_hx":
                player.addScore("hp",100);
                player.tell("你饮食了 §r§f§l[§gE+§f]§c生命§f丹 §r§4♥§f +100 ");
                return;
            case "gold:fr_ys":
                player.addEffect(16, 500*20, 1, false);
                return;
            case "gold:fr_jp":
                player.addEffect(3, 300*20, 1, false);
                return;
            case "gold:fr_sd":
                player.addEffect(1, 400*20, 2, false);
                return;
            case "gold:lq_llllz":
                player.addEffect(16, 500*20, 1, false);
                player.addScore("hp", 500);
                player.addScore("xwa", 20);
                player.tell("你食用了 §r§f§l[§gE++§f]§f玲珑§b琉璃珠 §r§4♥§f +500 ");
                return;
            case "gold:lq_llyr":
                player.addScore("hp", 100);
                player.tell("你食用了 §r§f§l[§gE+§f]§b琉璃鱼肉 §r§4♥§f +100 ");
                return;
            case "gold:lq_lqd":
                mc.runcmdEx(`execute as "${player.name}" if score @s dj matches ..3 if score @s "jy" >= @s "jy2" run tag @s add tpsj `);
                mc.runcmdEx(`execute as "${player.name}" if score @s dj matches ..3 if score @s "jy" >= @s "jy2" run tellraw @s {"rawtext":[{"text":"§a§l[提示] 食用成功"}]}`);
                mc.runcmdEx(`execute as "${player.name}" if score @s dj matches ..3 if score @s "jy" < @s "jy2" run tellraw @s {"rawtext":[{"text":"§4§l[提示] 食用失败，修为不足"}]}`);
                mc.runcmdEx(`execute as "${player.name}" if score @s dj matches 4.. run tellraw @s {"rawtext":[{"text":"§4§l[提示] 食用失败，等级不对"}]}`);
                return;
            case "gold:lq_lld":
                player.tell( "你食用了 §r§f§l[§eD§f]§b琉璃§f丹 ");
                effect(player.getScore("kshx"),player.getScore("kshxt"),5,60,"hx",player);
                effect(player.getScore("kshl"),player.getScore("kshlt"),5,60,"hl",player);
                player.addScore("gftime", -60);
                player.addScore("xwa",40);
                return;
            case "gold:cy_llh":
                player.tell("你食用了 §r§f§l[§eD+§f]§9灵力§f花 ");
                player.addScore("hp", -4);
                player.addScore("ll", 40);
                return;
            case "gold:cy_lwc":
                player.tell("你食用了 §r§f§l[§eD+§f]§9灵雾§f草 ");
                player.addScore("hp", -5);
                player.addScore("ll", -13);
                effect(player.getScore("kshl"),player.getScore("kshlt"),5,60,"hl",player);
                return;
            case "gold:cy_qxc":
                player.tell("你食用了 §r§f§l[§eD+§f]§c气血§f草 ");
                player.addScore("hp", -10);
                effect(player.getScore("kshx"),player.getScore("kshxt"),10,10,"hx",player);
                return;
            case "gold:dy_cxd":
                player.tell("你食用了 §r§f§l[§gD++§f]§4赤血§f丹 ");
                player.addScore("hp", 400);
                return;
            case "gold:dy_gyd":
                player.tell("你食用了 §r§f§l[§gD++§f]§e罡元§f丹 ");
                effect(player.getScore("ksatk"),player.getScore("ksatkt"),30,240,"atk",player);
                effect(player.getScore("ksfy"),player.getScore("ksfyt"),15,240,"fy",player);
                return;
            case "gold:dy_hcd":
                player.tell("你食用了 §r§f§l[§gD++§f]§c回春§f丹 ");
                effect(player.getScore("kshx"),player.getScore("kshxt"),13,100,"hx",player);
                return;
            case "gold:dy_hld":
                player.tell("你食用了 §r§f§l[§gD++§f]§b回灵§f丹 ");
                effect(player.getScore("kshl"),player.getScore("kshlt"),10,75,"hl",player);
                return;
            default:
                break;
        }
    });
}


//查询系统
function cx(){
    
let eventCount = 0;
let startTime = new Date();
const SAMPLE_SIZE = 20;
let lastTps = ' ';

function getElapsedMilliseconds() {
    const now = new Date();
    return now - startTime;
}

function calculateTps() {
    const elapsedMilliseconds = getElapsedMilliseconds();
    if (elapsedMilliseconds > 0) {
        const elapsedSeconds = elapsedMilliseconds / 1000;
        const tps = Math.min(SAMPLE_SIZE / elapsedSeconds, 20).toFixed(2);
        return tps;
    }
    return '20.00';
}

function updateTpsInfo() {
    eventCount++;
    if (eventCount >= SAMPLE_SIZE) {
        lastTps = calculateTps();
        eventCount = 0;
        startTime = new Date();
    }
}

function getTpsInfo() {
    return lastTps;
}

function onTick() {
    updateTpsInfo();
    return false;
}

mc.listen("onTick", onTick);


    function colorPing(ping) {
    if (ping <= 100) return `§a${ping} ms`;  
    if (ping <= 220) return `§e${ping} ms`;  
    return `§4${ping} ms`;                 
}
   function OS(os) {
        const osMap = {
            "Uwp": "电脑Windows（UWP版）",
            "Windows10": "电脑Windows",
            "Win32": "电脑Windows（教育版）",
            "iOS": "手机苹果iOS/平板iPadOS",
            "Google": "手机Android",
            "OSX": "苹果电脑macOS",
            "Amazon": "平板/电视亚马逊FireOS",
            "GearVR": "头显GearVR",
            "Hololens": "头显HoloLens",
            "TVOS": "苹果tvOS",
            "PlayStation": "索尼PlayStation",
            "Nintendo": "Switch",
            "Xbox": "主机微软Xbox",
            "WindowsPhone": "Windows Phone",
            "Unknown": "未知系统"
        };
        return osMap[os] || os;
    }
    function input(mode) {
        switch(mode) {
            case 1: return "鼠标";
            case 2: return "触屏";
            case 3: return "手柄";
            case 4: return "运动控制器";
            default: return "未知";
        }
    }

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bug666", "查看玩家信息", PermType.Any);

        cmd.optional("player", ParamType.Player);

        cmd.overload([]);
        cmd.overload(["player"]);

        cmd.setCallback((_cmd, ori, out, res) => {
            // 工具函数：显示设备信息
            function temp(player) {
                const dv = player.getDevice();
                out.addMessage(                       // 输出信息
`§l§f当前时间: ${system.getTimeStr()}
§l§f玩家: ${player.name}
§4§f你的IP: ${dv.ip} (不要泄露)
§l§f平均延迟: ${colorPing(dv.avgPing)}
§l§f平均丢包率: ${dv.avgPacketLoss}%
§l§f最近延迟: ${colorPing(dv.lastPing)}
§l§f最近丢包率: ${dv.lastPacketLoss}%
§l§f操作系统: ${OS(dv.os)}
§l§f输入模式: ${input(dv.inputMode)}
§l§f服务器ip: ${dv.serverAddress}
§l§f客户端ID: ${dv.clientId}
§l§e当前服务器TPS: §a${getTpsInfo()}\n`
                );
            }

            const target = res.player && res.player.length > 0 ? res.player[0] : null;

            if (target) {
                if (!ori.player || !ori.player.isOP()) {
                    return out.error("你没有权限查看其他玩家的信息！");
                }
                temp(target);
            }
            else if (ori.player) {
                temp(ori.player);
            }
            // 控制台执行
            else {
                out.error("控制台必须指定目标玩家！");
            }
        });

        cmd.setup();
    });



mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bughf", "修复bug，校准属性", PermType.Any);
        cmd.optional("player", ParamType.Player);   //+参数 玩家
        cmd.overload([]);
        cmd.overload(["player"]);  //重载
        cmd.setCallback((_cmd, ori, out, res) => { //ori =命令执行者 out=输出结果 res=玩家输入参数
            let playername = null;
            
            const target = res.player && res.player.length > 0 ? res.player[0] : null;

            if (target) {
                playername = target.name; //指定的玩家
            }
            else if (ori.player) {
                playername = ori.player.name; //执行命令玩家（自己）
            }
            else return out.error("控制台必须指定目标玩家！");
            const ret = mc.runcmdEx(`execute as "${playername}" at @s run function bughf`);
            if (ret && ret.success) 
            {
                out.success("[系统] 已为 " + playername + " 修复bug，校准属性");
            }
            else out.error("[系统] 请检查玩家名是否正确");

        });
        cmd.setup();
     });
}
// ori.type	指令执行主体类型	OriginType
// ori.name	指令执行主体的名称	String
// ori.pos	指令执行主体的坐标	FloatPos
// ori.blockPos	指令执行主体的方块坐标	IntPos
// ori.entity	执行指令的实体（可空）	Entity
// ori.player	执行指令的玩家（可空）	Player


// 命令参数类型 和 数据值类型 的对应关系如下
// ParamType.Bool	Boolean	布尔值
// ParamType.Int	Integer	整数
// ParamType.Float	Float	浮点数
// ParamType.String	String	字符串
// ParamType.Actor	Array<Actor>	实体目标选择器 选中的实体
// ParamType.Player	Array<Player>	玩家目标选择器 选中的实体
// ParamType.BlockPos	IntPos	整数坐标对象
// ParamType.Vec3	FloatPos	浮点数坐标对象
// ParamType.RawText	String	原始字符串(可包含特殊字符，如逗号空格，只能作为最后一个参数使用)
// ParamType.Message	String	消息类型字符串(同 /say 指令参数，会自动展开目标选择器等)
// ParamType.JsonValue	String	JSON字符串
// ParamType.Item	Item	物品类型
// ParamType.Block	Block	方块类型
// ParamType.Effect	String	效果类型字符串
// ParamType.Enum	String	枚举字符串
// ParamType.SoftEnum	String	可变枚举字符串
// ParamType.ActorType	String	实体类型字符串
// ParamType.Command	String	指令名称（仅供测试）


function shuju() {
    function xr(action, player, out) {
        if (action == "save") {
            let data = {
                name: player.name,
                ip: player.getDevice().ip,
                uuid: player.uuid,
                xuid: player.xuid,
                xyz: { x: player.pos.x, y: player.pos.y, z: player.pos.z },
                scores: {
                    dj: player.getScore("dj"),
                    jy: player.getScore("jy"),
                    rw: player.getScore("rw"),
                    rwa: player.getScore("rwa"),
                    ls: player.getScore("ls"),
                    yj: player.getScore("yj"),
                    jq: player.getScore("jq"),
                    jqa: player.getScore("jqa"),
                    tdqw: player.getScore("tdqw"),
                    tdqw2: player.getScore("tdqw2"),
                    tdqw3: player.getScore("tdqw3"),
                    tdqw4: player.getScore("tdqw4"),
                    gf: player.getScore("gf"),
                    day: player.getScore("day"),
                    uuid: player.getScore("uuid"),
                }    
            };

            try {
                File.writeTo("plugins/Gold/playerdata/" + player.name + ".json", JSON.stringify(data, null, 2));
                out.success("已为 " + player.name + " 保存数据");
            } catch (e) {
                out.error("保存数据失败: " + e);
            }
        }
        else if (action == "load") {
          try {
                let jsonstr = File.readFrom("plugins/Gold/playerdata/" + player.name + ".json");
                let data = JSON.parse(jsonstr);
                player.setScore("dj", data.scores.dj);
                player.setScore("jy", data.scores.jy);
                player.setScore("rw", data.scores.rw);
                player.setScore("rwa", data.scores.rwa);
                player.setScore("ls", data.scores.ls);
                player.setScore("yj", data.scores.yj);
                player.setScore("jq", data.scores.jq);
                player.setScore("jqa", data.scores.jqa);
                player.setScore("tdqw", data.scores.tdqw);
                player.setScore("tdqw2", data.scores.tdqw2);
                player.setScore("tdqw3", data.scores.tdqw3);
                player.setScore("tdqw4", data.scores.tdqw4);
                player.setScore("gf", data.scores.gf);
                player.setScore("day", data.scores.day);
                player.setScore("uuid", data.scores.uuid);
                mc.runcmdEx(`tag "${data.name}" add 属性校准`);
                player.sendToast("[系统]","你的数据已加载");
                
            } catch (e) {
                out.error("加载数据失败: " + e);
            }
        }
    }

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bugshuju", "玩家数据保存save和加载load", PermType.Any); //ori =命令执行者 out=输出结果 res=玩家输入参数
        cmd.setEnum("action", ["load", "save"]);
        cmd.mandatory("action", ParamType.Enum, "action", 1);
        cmd.optional("player", ParamType.Player);
        cmd.overload(["action"]);
        cmd.overload(["action","player"]);

        cmd.setCallback((_cmd, ori, out, res) => {
            let target = res.player && res.player.length > 0 ? res.player[0] : ori.player;
            if (!target) return out.error("没有指定玩家");
            if (ori.player && target != ori.player && ori.player.isOP() == false) return out.error("你没有权限操作其他玩家的数据");
            xr(res.action, target, out);
        });

        cmd.setup();
    });
}

    


















dy();
cx();
shuju();
hxxt();
