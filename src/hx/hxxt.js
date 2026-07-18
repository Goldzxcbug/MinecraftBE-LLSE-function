import { debounce, gf, zjqw } from "../utils.js";

export function hxxt()
{

    function playerscore(st, itema) {
        let atk = st.getScore("atk")||0;//攻击力
        let fy = st.getScore("fy")||0;//防御
        let ll = st.getScore("ll")||0;//灵力
        let bj = st.getScore("bj")||0;//暴击
        let bs = st.getScore("bs")||0;//暴伤
        let mz = st.getScore("mz")||0;//命中
        let shxs = st.getScore("shxs")||0;//伤害吸收
        let atkjm = st.getScore("atkjm")||0;//攻击减免
        let xx = st.getScore("xx")||0;//吸血
        let zs = st.getScore("zs")||0;//真实伤害
        let sb = st.getScore("sb")||0;//闪避
        atk += st.getScore("ksatk")||0;//buff攻击
        fy += st.getScore("ksfy")||0;//buff防御

        // 主手武器判定（做存在性检查以防 null）
        try {
            const it = itema !== undefined ? itema : st.getInventory().getItem(9);
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
                case "minecraft:archer_pottery_sherd": if(aux==10) {atk+=15 ; st.setScore("wqlx",13)} else st.setScore("wqlx",0); break;//灵力枪
                case "minecraft:flow_pottery_sherd": if(aux==10) {atk+=20 ; st.setScore("wqlx",14)} else st.setScore("wqlx",0); break;//灵力弯刀
                case "minecraft:amethyst_cluster": atk=30 ; st.setScore("wqlx",13) ; break;//碎发枪
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
    
    //检查武器切换 
    function isSameItem(oldItem, newItem) { 
        if (!oldItem && !newItem) return true;
        if (!oldItem || !newItem) return false;
        return oldItem.type === newItem.type
            && oldItem.aux === newItem.aux
            && oldItem.name === newItem.name;
    }

    function getWeaponDisplayType(item) {
        if (!item) return null;
        switch(item.type) {
            case "minecraft:wooden_axe":
            case "minecraft:stone_axe":
            case "minecraft:iron_axe":
            case "minecraft:golden_axe":
            case "minecraft:diamond_axe":
            case "minecraft:netherite_axe":
            case "minecraft:wooden_sword":
            case "minecraft:stone_sword":
            case "minecraft:iron_sword":
            case "minecraft:golden_sword":
            case "minecraft:diamond_sword":
            case "minecraft:netherite_sword":
                return item.type;
            // 下面钓鱼杆
            case "minecraft:archer_pottery_sherd":
            case "minecraft:flow_pottery_sherd":
            case "minecraft:amethyst_cluster":
                return "minecraft:fishing_rod";
            default:
                return null;
        }
    }

    function refreshWeaponDisplay(player, item) {
        const displayType = getWeaponDisplayType(item);
        if (!displayType) return;

        mc.runcmdEx(`replaceitem entity "${player.name}" slot.hotbar 0 ${displayType} 1 0 {"item_lock":{"mode":"lock_in_slot"}}`);
        try {
            const displayItem = player.getInventory().getItem(0);
            if (displayItem && item.name) {
                displayItem.setDisplayName(item.name);
                player.refreshItems();
            }
        } catch(e) {}
    }
// 检查是否在手持栏的第一个位置上
    function isHoldingHotbarFirst(player) {
        try {
            return isSameItem(player.getHand(), player.getInventory().getItem(0));
        } catch(e) {
            return true;
        }
    }

    mc.listen("onInventoryChange", (player, slotNum, oldItem, newItem) => {
        if (slotNum !== 9 || isSameItem(oldItem, newItem)) return;

        playerscore(player, newItem);
        refreshWeaponDisplay(player, newItem);
    });

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
                        case 1: case 2: case 3: case 4 : str += `§a§l练气修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        case 5: case 6: case 7: case 8 : str += `§7§l筑基修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        case 9: case 10: case 11: case 12 : str += `§g§l金丹修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        case 13: case 14: case 15: case 16 : str += `§e§l元婴修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        case 17: case 18: case 19: case 20 : str += `§6§l化神修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        case 21: case 22: case 23: case 24 : str += `§4§l合道修士§f ${player.name} ,凡修道 ${player.getScore("day")} 载`; break;
                        default: break;
                    }
                    if(player.getScore("dj")>4) str += `以奇物 ${zjqw(player.getScore("tdqw"))} §l成就道基`
                    if(player.getScore("dj")>8) str += `以 ${gf(player.getScore("gf"))} §l成就金丹`
                    //if(player.getScore("dj")>12) str += `,夺 ${zjqw(player.getScore("tdqw3"))} 以成元婴`
                    //if(player.getScore("dj")>16) str += `,抽 ${zjqw(player.getScore("tdqw4"))} 以化其神`
                    //if(player.getScore("dj")>20) str += `,祭 ${zjqw(player.getScore("tdqw5"))} 已身合道·
                    //str += `于***之地`
                    if(player_ && typeof player_.getScore === "function") {
                        let weaponName = "空手";
                        try {
                            const weapon = player_.getInventory().getItem(9);
                            if (weapon && weapon.name) {
                                weaponName = String(weapon.name).split("\n")[0].replace(/\r$/, "");
                            }
                        } catch(e) {}
                        str += `被 ${player_.name} 使用 ${weaponName}§r§l 击杀,如今身死道消,还道于天!`
                    }
                    else {
                        const sourceName = player_ && player_.name ? player_.name : "未知伤害";
                        str  += `不慎被 ${sourceName}§r§l 所杀,如今身死道消,还道于天!`
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
            let pl = players[i];

            const data ={
                            "§c§l生命" : pl.getScore("hp"),
                            "§b§l灵力" : pl.getScore("ll")  
                        }
            if(pl.getScore("kshxt")>0) data[`§a§l恢复${pl.getScore("kshx")}`] = -1*pl.getScore("kshxt");
            if(pl.getScore("kshlt")>0) data[`§3§l回灵${pl.getScore("kshl")}`] = -1*pl.getScore("kshlt");
            if(pl.getScore("ksatkt")>0) data[`§4§l力量${pl.getScore("ksatk")}`] = -1*pl.getScore("ksatkt");
            if(pl.getScore("ksfyt")>0) data[`§e§l防御${pl.getScore("ksfy")}`] = -1*pl.getScore("ksfyt");
            if(Object.keys(data).length>2) data["§l§k------"] = 0;
            pl.removeSidebar();
            pl.setSidebar("----状态栏----",data);

            if(!isHoldingHotbarFirst(pl))
            {
                pl.addEffect(18,20,100,false);
            }
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
