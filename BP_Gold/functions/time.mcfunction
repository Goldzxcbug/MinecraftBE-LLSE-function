effect @e weakness infinite 1 true
effect @e resistance infinite 5 true
effect @e fire_resistance infinite 0 true


# execute as @a unless score @s wqlx matches 1.. run replaceitem entity @s slot.hotbar 0 minecraft:wooden_axe 1 99 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=1}] run replaceitem entity @s slot.hotbar 0 minecraft:wooden_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=2}] run replaceitem entity @s slot.hotbar 0 minecraft:stone_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=3}] run replaceitem entity @s slot.hotbar 0 minecraft:iron_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=4}] run replaceitem entity @s slot.hotbar 0 minecraft:golden_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=5}] run replaceitem entity @s slot.hotbar 0 minecraft:diamond_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=6}] run replaceitem entity @s slot.hotbar 0 minecraft:netherite_axe 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=7}] run replaceitem entity @s slot.hotbar 0 minecraft:wooden_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=8}] run replaceitem entity @s slot.hotbar 0 minecraft:stone_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=9}] run replaceitem entity @s slot.hotbar 0 minecraft:iron_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=10}] run replaceitem entity @s slot.hotbar 0 minecraft:golden_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=11}] run replaceitem entity @s slot.hotbar 0 minecraft:diamond_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=12}] run replaceitem entity @s slot.hotbar 0 minecraft:netherite_sword 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# execute as @a[scores={wqlx=13..14}] run replaceitem entity @s slot.hotbar 0 minecraft:fishing_rod 1 0 {"item_lock":{"mode":"lock_in_slot"}}

execute as @a run scoreboard players operation @s tempa = @s hp2
execute as @a run scoreboard players operation @s tempa += @s hp2a
execute as @a run scoreboard players operation @s hp2hp2 = @s tempa

execute as @a run scoreboard players operation @s tempa = @s ll2
execute as @a run scoreboard players operation @s tempa += @s ll2a
execute as @a run scoreboard players operation @s ll2ll2 = @s tempa
