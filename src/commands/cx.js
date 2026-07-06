//查询系统
export function cx(){
    
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

