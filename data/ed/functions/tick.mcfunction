
#NEED TO EDIT TRANSFERED FROM SERVER
# Lightning attack logic tick

execute as @e[type=minecraft:armor_stand,tag=lights] run scoreboard players add @s lights 1
execute at @e[type=minecraft:armor_stand,scores={lights=41..}] run summon minecraft:lightning_bolt
execute as @e[type=minecraft:armor_stand,scores={lights=41..}] run kill @s
execute as @e[type=minecraft:armor_stand,scores={lights=41..}] run kill @s

# Lightning summon process

execute at shosancold run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["lights"]}
# - This still needs to get worked on (tries to spread out the lightning around the player a lot) execute at @e[tag=lights] run spreadplayers 
execute at @e[type=minecraft:armor_stand,tag=lights] run summon area_effect_cloud ~ ~ ~ {Particle:"electric_spark",Radius:5f,RadiusPerTick:-0.1f,Duration:40,Effects:[{Id:2,Amplifier:1b,Duration:1}]}
