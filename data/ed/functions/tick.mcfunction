
#NEED TO EDIT TRANSFERED FROM SERVER
# Lightning attack logic tick

execute as @e[type=minecraft:armor_stand,tag=lights] run scoreboard players add @s lights 1
execute at @e[type=minecraft:armor_stand,scores={lights=21..}] run summon minecraft:lightning_bolt
execute as @e[type=minecraft:armor_stand,scores={lights=21..}] run kill @s

# Lightning summon process

