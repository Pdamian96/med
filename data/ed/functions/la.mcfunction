#---------Lightning logic
#RNG
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute in the_end positioned 0 70 0 store result score @a[distance=..300] random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @a[distance=..300] random %= 5 range
kill @e[type=area_effect_cloud,tag=random_uuid]

execute in the_end positioned 0 70 0 as @a[distance=..300] if score @s random = 3 numbers run execute at shosancold run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["lights"]}
# - This still needs to get worked on (tries to spread out the lightning around the player a lot) execute at @e[tag=lights] run spreadplayers 
execute in the_end positioned 0 70 0 as @a[distance=..300] if score @s random = 3 numbers run execute at @e[type=minecraft:armor_stand,tag=lights] run summon area_effect_cloud ~ ~ ~ {Particle:"electric_spark",Radius:5f,RadiusPerTick:-0.1f,Duration:25,Effects:[{Id:2,Amplifier:1b,Duration:1}]}
