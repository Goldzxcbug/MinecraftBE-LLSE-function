execute as @s[scores={jq=1..59},hasitem={item=gold:hz_1,quantity=0}] run give @s gold:hz_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={jq=60..},hasitem={item=gold:hz_2,quantity=0}] run give @s gold:hz_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tag @s add 属性校准
scoreboard players set @s xqcd 1
kill @s 