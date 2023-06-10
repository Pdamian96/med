
#
execute as @e[type=minecraft:ender_dragon] run execute if score @s health matches ..1000 run tag @s add ph1
execute as @e[tag=ph1] unless entity @s[tag=ph1_c] run execute as @e[type=minecraft:ender_dragon] run execute at @s run function ed:shoot_db
execute as @e[tag=ph1] unless entity @s[tag=ph1_c] run execute as @e[type=minecraft:ender_dragon] run execute at @s run function ed:shoot_db
execute as @e[tag=ph1] unless entity @s[tag=ph1_c] run execute as @e[type=minecraft:ender_dragon] run execute at @s run function ed:shoot_db
execute as @e[tag=ph1] run tag @s add ph1_c
execute as @e[type=minecraft:ender_dragon] if entity @s[tag=ph1_c] run execute if score @s health matches ..100 run tag @s add ph2
