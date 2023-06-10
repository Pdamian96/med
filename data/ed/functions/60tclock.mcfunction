execute if score @e[type=ender_dragon,limit=1] timer_a matches 60.. if data storage bools {ed_a:1} run function ed:attack
scoreboard players set endermites math 0
execute in the_end positioned 0 70 0 as @e[type=minecraft:endermite,x=-120,y=0,z=-120,dx=300,dy=200,dz=300] run scoreboard players add endermites math 1
execute if score endermites math matches 0..30 run execute in the_end positioned 0 70 0 run summon endermite
execute if score endermites math matches 0..30 run execute in the_end positioned 0 70 0 run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal



#Blast Attack

execute as @e[type=ender_dragon] run execute if entity @s[nbt={DragonPhase:5}] run function ed:blast_calc
execute as @e[type=ender_dragon] run execute if entity @s[nbt={DragonPhase:6}] run function ed:blast_calc




schedule function ed:60tclock 60t replace
