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
        default: return "错误";
    }
}
export function gf(num){
    switch(num)
    {
        case 0: return "";
        case 1: return "§4▪ §2练气功法：  §r 【§b小衍水决§r】§r";
        case 301: return "§4▪ §e元婴功法：  §r 【§e千机玉寰金章§r】§r";
        default: return "错误";

    }

}





