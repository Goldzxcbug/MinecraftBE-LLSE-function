export function gfFbktx() {
    // 法不可同修：按功法(gf)分组统计同修人数，设置 gfrs 并打标签
    function gfrs(excludePlayer) {
        let players = mc.getOnlinePlayers();

        // onLeft 时离开的玩家可能仍在在线列表中，需排除
        if (excludePlayer) {
            const excludeId = excludePlayer.xuid || excludePlayer.name;
            players = players.filter(p => (p.xuid || p.name) !== excludeId);
        }

        // 先清除所有在线玩家的"法不可同修"标签
        for (const p of players) {
            p.removeTag("法不可同修");
        }

        // 按 gf 分组
        const groups = new Map();
        for (const p of players) {
            const gf = p.getScore("gf");
            if (!groups.has(gf)) groups.set(gf, []);
            groups.get(gf).push(p);
        }

        for (const [gf, group] of groups) {
            const count = group.length;
            for (const p of group) {
                if (gf === 0) {
                    // gf=0 表示未学习功法，不参与分组，gfrs 恒为 1
                    p.setScore("gfrs", 1);
                } else {
                    p.setScore("gfrs", count);
                    p.addTag("法不可同修");
                }
            }
        }
    }

    // 玩家进入游戏
    mc.listen("onJoin", () => gfrs());

    // 玩家离开游戏（排除离开者避免多算）
    mc.listen("onLeft", (player) => gfrs(player));

    // 玩家功法变化时重新统计
    mc.listen("onScoreChanged", (player, num, name) => {
        if (name === "gf") gfrs();
    });
}
