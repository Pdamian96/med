
execute if score @s temp.v matches 1.. run scoreboard players remove @s damage.taken 1
execute if score @s temp.v matches 1.. run damage @s 1 minecraft:out_of_world
execute if score @s temp.v matches 1.. run scoreboard players remove @s temp.v 1



execute if score @s temp.v matches 0 run advancement revoke @s only enchants:hitentity
execute if score @s temp.v matches 0 run tag @s remove vul

execute if score @s temp.v matches 1.. run schedule function enchants:vul_b 0.5s

say vul