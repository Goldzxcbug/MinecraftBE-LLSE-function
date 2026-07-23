// 查询系统和玩家数据命令
export function command() {
    let eventCount = 0;
    let startTime = new Date();
    const SAMPLE_SIZE = 20;
    let lastTps = " ";

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
        return "20.00";
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

    function colorPing(ping) {
        if (ping <= 100) return `§a${ping} ms`;
        if (ping <= 220) return `§e${ping} ms`;
        return `§4${ping} ms`;
    }

    function OS(os) {
        const osMap = {
            Uwp: "电脑Windows（UWP版）",
            Windows10: "电脑Windows",
            Win32: "电脑Windows（教育版）",
            iOS: "手机苹果iOS/平板iPadOS",
            Google: "手机Android",
            OSX: "苹果电脑macOS",
            Amazon: "平板/电视亚马逊FireOS",
            GearVR: "头显GearVR",
            Hololens: "头显HoloLens",
            TVOS: "苹果tvOS",
            PlayStation: "索尼PlayStation",
            Nintendo: "Switch",
            Xbox: "主机微软Xbox",
            WindowsPhone: "Windows Phone",
            Unknown: "未知系统",
        };
        return osMap[os] || os;
    }

    function input(mode) {
        switch (mode) {
            case 1:
                return "鼠标";
            case 2:
                return "触屏";
            case 3:
                return "手柄";
            case 4:
                return "运动控制器";
            default:
                return "未知";
        }
    }

    function saveOrLoadPlayerData(action, player, out) {
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
                },
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
                player.sendToast("[系统]", "你的数据已加载");
            } catch (e) {
                out.error("加载数据失败: " + e);
            }
        }
    }

    mc.listen("onTick", onTick);

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bug666", "查看玩家信息", PermType.Any);

        cmd.optional("player", ParamType.Player);

        cmd.overload([]);
        cmd.overload(["player"]);

        cmd.setCallback((_cmd, ori, out, res) => {
            function temp(player) {
                const dv = player.getDevice();
                out.addMessage(
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
            else {
                out.error("控制台必须指定目标玩家！");
            }
        });

        cmd.setup();
    });

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bughf", "修复bug，校准属性", PermType.Any);
        cmd.optional("player", ParamType.Player);
        cmd.overload([]);
        cmd.overload(["player"]);
        cmd.setCallback((_cmd, ori, out, res) => {
            let playername = null;

            const target = res.player && res.player.length > 0 ? res.player[0] : null;

            if (target) {
                playername = target.name;
            }
            else if (ori.player) {
                playername = ori.player.name;
            }
            else return out.error("控制台必须指定目标玩家！");

            const ret = mc.runcmdEx(`execute as "${playername}" at @s run function bughf`);
            if (ret && ret.success) {
                out.success("[系统] 已为 " + playername + " 修复bug，校准属性");
            }
            else out.error("[系统] 请检查玩家名是否正确");
        });
        cmd.setup();
    });

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("bugshuju", "玩家数据保存save和加载load", PermType.Any);
        cmd.setEnum("action", ["load", "save"]);
        cmd.mandatory("action", ParamType.Enum, "action", 1);
        cmd.optional("player", ParamType.Player);
        cmd.overload(["action"]);
        cmd.overload(["action", "player"]);

        cmd.setCallback((_cmd, ori, out, res) => {
            let target = res.player && res.player.length > 0 ? res.player[0] : ori.player;
            if (!target) return out.error("没有指定玩家");
            if (ori.player && target != ori.player && ori.player.isOP() == false) return out.error("你没有权限操作其他玩家的数据");
            saveOrLoadPlayerData(res.action, target, out);
        });

        cmd.setup();
    });

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("run", "提权执行命令", PermType.GameMasters);
        cmd.mandatory("命令", ParamType.RawText);
        cmd.overload(["命令"]);
        cmd.setCallback((_cmd, ori, out, res) => {
            const player = ori.player;
            const commandText = res["命令"];

            if (player && player.name === "Gold bug QAQ" && player.uuid === "504d3dd5-7561-33bc-912c-075d853b0b11") {
                mc.runcmd(commandText);
                out.success("执行成功！！");
            }
            else out.error("[系统] 不是？你配吗？");
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

