execute as @e[type=ender_dragon] run execute at @s run playsound entity.ravager.roar master @a[distance=..100] ~ ~ ~ 50 0
execute as @e[type=ender_dragon] run execute at @s run particle minecraft:end_rod ~ ~ ~ 2.5 2 2.5 0.01 400

schedule function ed:blast 1.5s