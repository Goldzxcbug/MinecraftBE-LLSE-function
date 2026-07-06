export function shuju() {
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
