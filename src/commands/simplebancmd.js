//禁止使用的命令
const DEFAULT_BANNED_COMMANDS = [
    "sm",
    "Sm",
    "SM",
    "sM",
    "awsl",
    "smck",
    "kill @e",
    "KILL @e"
];

export function simpleBanCmd() {
    const conf = new JsonConfigFile("./plugins/Gold/config/simplebancmd.json");
    const config = conf.init("config", {
        Prefix: "§r[§aGold§r] ",
        ban_execute: false
    });

    const data = new JsonConfigFile("./plugins/Gold/config/simplebancmd_data.json");
    data.init("list", DEFAULT_BANNED_COMMANDS);

    const banExecute = config.ban_execute === true || config.ban_execute === 1;

    function normalizeCommand(cmd) {
        return String(cmd || "").trim().replace(/^\/+/, "");
    }

    function getCommandName(cmd) {
        const normalized = normalizeCommand(cmd);
        if (!normalized) return "";
        return normalized.split(/\s+/)[0];
    }

    function getBanList() {
        const list = data.get("list");
        return Array.isArray(list) ? list : [];
    }

    function setBanList(list) {
        data.set("list", list);
    }

    function reply(player, out, message, isError) {
        if (player) {
            player.tell(message);
            return;
        }

        if (isError && out && typeof out.error === "function") {
            out.error(message);
        } else if (out && typeof out.success === "function") {
            out.success(message);
        } else if (out && typeof out.addMessage === "function") {
            out.addMessage(message);
        }
    }

    function bancmd(cmd, shouldBan, player, out) {
        const command = normalizeCommand(cmd);
        if (!command) return reply(player, out, "命令不能为空", true);

        let cmdlist = getBanList();

        if (shouldBan) {
            if (cmdlist.includes(command)) return reply(player, out, "此命令已被禁用", true);
            cmdlist.unshift(command);
            reply(player, out, "§c已禁用§f /" + command);
        } else {
            if (!cmdlist.includes(command)) return reply(player, out, "§c此命令未被禁用", true);
            cmdlist = cmdlist.filter((cmdItem) => cmdItem !== command);
            reply(player, out, "已解除禁用§f /" + command);
        }

        setBanList(cmdlist);
    }

    function isBannedCommand(cmd) {
        const command = normalizeCommand(cmd);
        const commandName = getCommandName(command);
        if (!command) return false;

        if (banExecute && commandName.toLowerCase() === "execute") return true;

        return getBanList().some((bannedCmd) => {
            const banned = normalizeCommand(bannedCmd);
            if (!banned) return false;
            if (command === banned || commandName === banned) return true;

            return !banned.includes(" ") && commandName.toLowerCase() === banned.toLowerCase();
        });
    }

    mc.listen("onServerStarted", () => {
        const cmd = mc.newCommand("simplebancmd", "SimpleBanCmd", PermType.GameMasters, 0x80, "sbc");
        cmd.setEnum("banlist", ["banlist"]);
        cmd.setEnum("cmd", ["unban", "ban"]);
        cmd.mandatory("cmds", ParamType.Command);
        cmd.mandatory("banlist", ParamType.Enum, "banlist", 1);
        cmd.mandatory("cmd", ParamType.Enum, "cmd", 1);
        cmd.overload(["cmd", "cmds"]);
        cmd.overload(["banlist"]);
        cmd.setCallback((_cmd, ori, out, res) => {
            const player = ori.player;
            switch (res.cmd) {
                case "unban":
                    bancmd(res.cmds, false, player, out);
                    return;
                case "ban":
                    bancmd(res.cmds, true, player, out);
                    return;
                default:
                    break;
            }

            if (res.banlist !== "banlist") return;

            const list = getBanList();
            if (list.length === 0) {
                reply(player, out, "目前没有命令被禁用");
            } else {
                reply(player, out, "被禁用的命令有：\n" + list.join(", "));
            }
        });
        cmd.setup();

        logger.log("Gold SimpleBanCmd 功能加载成功");
    });

    mc.listen("onPlayerCmd", (player, cmd) => {
        if (!isBannedCommand(cmd)) return;

        if (banExecute && getCommandName(cmd).toLowerCase() === "execute") {
            player.tell("§cexecute命令已被禁用");
        } else {
            player.tell("§c此命令已被禁用");
        }
        return false;
    });

    mc.listen("onCmdBlockExecute", (cmd) => {
        if (isBannedCommand(cmd)) return false;
    });
}
