export function debounce(func, delay) {
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


export function zjqw(num)
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
        case 7: return "【§a青藤心露§r】";
        case 8: return "【§c血眼§r】";
        case 9: return "【§4黄苹果§r】";
        case 10: return "【§f奇物4§r】";
        case 11: return "【§f飘零梅§r】";
        case 12: return "【§f烬海遗骨§r】";
        case 13: return "【§f无相天章§r】";
        case 14: return "【§f赤曜古藤§r】";
        case 15: return "【§f听潮玉简§r】";
        case 16: return "【§f山川百脉阵图§r】";
        case 17: return "【§f烈炎羽§r】";
        case 18: return "【§f行云碑§r】";
        case 19: return "【§f灵怒火§r】";
        default: return "错误";
    }
}
export function gf(num){
    switch(num)
    {
        case 0: return "";
        case 1: return "§4▪ §2练气功法：  §r 【§b小衍水决§r】§r";
        case 2: return "§4▪ §2练气功法：  §r 【§b玄黄清心咒§r】§r";
        case 3: return "§4▪ §2练气功法：  §r 【§b玄黄练心决§r】§r";
        case 4: return "§4▪ §2练气功法：  §r 【§b烘炉功§r】§r";
        case 5: return "§4▪ §2练气功法：  §r 【§b云水幻梦功§r】§r";
        case 6: return "§4▪ §2练气功法：  §r 【§b造化烘炉功§r】§r";
        case 7: return "§4▪ §2练气功法：  §r 【§b破阵子§r】§r";
        case 8: return "§4▪ §2练气功法：  §r 【§b铁布衫§r】§r";
        case 9: return "§4▪ §2练气功法：  §r 【§b星尘引气决§r】§r";
        case 10: return "§4▪ §2练气功法：  §r 【§b青木生长决§r】§r";
        case 11: return "§4▪ §2练气功法：  §r 【§b厚土归元功§r】§r";
        case 12: return "§4▪ §2练气功法：  §r 【§b庚金裂石决§r】§r";
        case 13: return "§4▪ §2练气功法：  §r 【§b坐山诀§r】§r";
        case 14: return "§4▪ §2练气功法：  §r 【§b风息步§r】§r";
        case 15: return "§4▪ §2练气功法：  §r 【§b藏剑术§r】§r";
        case 16: return "§4▪ §2练气功法：  §r 【§b五灵感气法§r】§r";
        case 17: return "§4▪ §2练气功法：  §r 【§b大日金乌诀§r】§r";
        case 18: return "§4▪ §2练气功法：  §r 【§b灵植共生法§r】§r";
        case 19: return "§4▪ §2练气功法：  §r 【§b聚灵纳气诀§r】§r";
        case 20: return "§4▪ §2练气功法：  §r 【§b八荒镇海桩§r】§r";
        case 301: return "§4▪ §e元婴功法：  §r 【§e千机玉寰金章§r】§r";
        default: return "错误";

    }

}





