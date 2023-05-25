# summon the temporary entity
execute facing entity @p feet run summon marker ^ ^ ^1 {Tags:["direction"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the projectile entity
summon dragon_fireball ~ ~ ~ {Tags:["projectile"]}

# set target to ball

execute as @e[tag=projectile] run scoreboard players operation @s pos = #targetX pos
execute as @e[tag=projectile] run scoreboard players operation @s pos = #targetY pos
execute as @e[tag=projectile] run scoreboard players operation @s pos = #targetZ pos



# apply motion to projectile
execute store result entity @e[type=dragon_fireball,tag=projectile,limit=1] power[0] double 0.0004 run scoreboard players get #targetX pos
execute store result entity @e[type=dragon_fireball,tag=projectile,limit=1] power[1] double 0.0004 run scoreboard players get #targetY pos
execute store result entity @e[type=dragon_fireball,tag=projectile,limit=1] power[2] double 0.0004 run scoreboard players get #targetZ pos

# clean up, ready for the next player
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]