
#蠹蠹虫
execute as @e[family=mob,name="§7§l蠹蠹虫",tag=!ss] run scoreboard players set @s hp 70
execute as @e[family=mob,name="§7§l蠹蠹虫",tag=!ss] run scoreboard players set @s atk 5
execute as @e[family=mob,name="§7§l蠹蠹虫",scores={hp=..0}] at @s if score @s gwrand matches 1..3000 run structure load "1/蠹蠹虫/ddcr" ~ ~0.5 ~
execute as @e[family=mob,name="§7§l蠹蠹虫",scores={hp=..0}] at @s if score @s gwrand matches 2000..5000 run structure load "1/蠹蠹虫/ddcnj" ~ ~0.5 ~
execute as @e[family=mob,name="§r§j百年§7§l蠹蠹虫",tag=!ss] run scoreboard players set @s hp 500
execute as @e[family=mob,name="§r§j百年§7§l蠹蠹虫",tag=!ss] run scoreboard players set @s atk 20
execute as @e[family=mob,name="§r§j百年§7§l蠹蠹虫",scores={hp=..0}] at @s if score @s gwrand matches 1..3000 run structure load "1/蠹蠹虫/bnddcr" ~ ~0.5 ~
execute as @e[family=mob,name="§r§j百年§7§l蠹蠹虫",scores={hp=..0}] at @s if score @s gwrand matches 2500..4000 run structure load "1/蠹蠹虫/bnddcnj" ~ ~0.5 ~
execute as @e[family=mob,name="§r§j百年§7§l蠹蠹虫",scores={hp=..0}] at @s if score @s gwrand matches 1..20 run structure load "1/蠹蠹虫/bnddcys" ~ ~0.5 ~
#村长的弟弟
execute as @e[family=mob,name="村长的弟弟",tag=!ss] run scoreboard players set @s hp 250
execute as @e[family=mob,name="村长的弟弟",tag=!ss] run scoreboard players set @s atk 13
execute as @e[family=mob,name="村长的弟弟",tag=!ss] run scoreboard players set @s fyfy 4
execute as @e[family=mob,name="村长的弟弟",scores={hp=..0}] at @s if score @s gwrand matches 1.. run structure load "1/czdditem" ~ ~0.5 ~
#琉璃鱼
execute as @e[family=mob,name="§3§l琉璃鱼",tag=!ss] run scoreboard players set @s hp 500
execute as @e[family=mob,name="§3§l琉璃鱼",tag=!ss] run scoreboard players set @s hp2 500
execute as @e[family=mob,name="§3§l琉璃鱼",tag=!ss] run scoreboard players set @s atk 10
execute as @e[family=mob,name="§3§l琉璃鱼",tag=!ss] run scoreboard players set @s hx 2
execute as @e[family=mob,name="§3§l琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 1..3000 run structure load "2/lly/llz" ~ ~0.5 ~
execute as @e[family=mob,name="§3§l琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 2000..5500 run structure load "2/lly/llyr" ~ ~0.5 ~
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",tag=!ss] run scoreboard players set @s hp 750
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",tag=!ss] run scoreboard players set @s hp2 750
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",tag=!ss] run scoreboard players set @s fyfy 20
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",tag=!ss] run scoreboard players set @s atk 30
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",tag=!ss] run scoreboard players set @s hx 5
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 1..6000 run structure load "2/lly/llz" ~ ~0.5 ~
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 1..10000 run structure load "2/lly/llyr" ~ ~0.5 ~
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 5000..7000 run structure load "2/lly/llyr" ~ ~0.5 ~
execute as @e[family=mob,name="§l玲珑§3琉璃鱼",scores={hp=..0}] at @s if score @s gwrand matches 1..500 run structure load "2/lly/llllz" ~ ~0.5 ~









execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s hp *= "3" sum 
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s hp /= "2" sum
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s atk *= "3" sum 
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s atk /= "2" sum
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s fy *= "3" sum 
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s fy /= "2" sum
execute as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players random @s gwrand 1 10000
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s gwrand *= "3" sum 
execute if score daytime day matches 13000.. as @e[family=mob,scores={hp=1..},tag=!ss] run scoreboard players operation @s gwrand /= "2" sum
execute as @e[family=mob,scores={hp=-99999..},x=1022,y=0,z=1011,rm=1] run tag @s add ss
kill @e[family=mob,scores={hp=..0}]
kill @e[type=minecraft:xp_orb]