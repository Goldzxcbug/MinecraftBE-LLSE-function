//丹药系统
export function dy() {
    
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
            ////////////////////////////////////////////草药区/////////////////////////////////////////
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
            case "gold:cy_jjs":
                player.tell("你食用了 §r§f§l[§gD+§f] §f§e金精§f参§f ");
                player.addScore("hp", -500);
                return;
            case "gold:cy_xjr":
                player.tell("你食用了 §r§f§l[§gD+§f] §f§4血蛟§b兰§f ");
                player.addScore("hp", -50);
                effect(player.getScore("ksatk"),player.getScore("ksstt"),30,60,"hx",player);
                effect(player.getScore("ksfy"),player.getScore("ksfyt"),30,60,"fy",player);
                return;
            ////////////////////////////////////////////丹药区/////////////////////////////////////////
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
