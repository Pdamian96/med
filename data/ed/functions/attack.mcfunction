#rng
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @e[type=ender_dragon,limit=1] random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @e[type=ender_dragon,limit=1] random %= 2000 range
kill @e[type=area_effect_cloud,tag=random_uuid]
#get Health
execute store result score @e[type=ender_dragon,limit=1] health run data get entity @e[type=ender_dragon,limit=1] Health 10
# If RNG > Health run function ed:shoot_db
execute as @e[type=ender_dragon,limit=1] run execute if score @s random > @s health run say yay
execute as @e[type=ender_dragon,limit=1] run execute if score @s random > @s health run execute at @s run function ed:shoot_db
execute as @e[type=ender_dragon,limit=1] run execute if score @s random < @s health run say nay

scoreboard players reset @e[type=ender_dragon,limit=1] timer_a

##Clean Up