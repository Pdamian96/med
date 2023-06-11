execute if score @e[type=ender_dragon,limit=1] timer_a matches 60.. if data storage bools {ed_a:1} run function ed:attack
scoreboard players set endermites math 0
execute in the_end positioned 0 70 0 as @e[type=minecraft:endermite,x=-120,y=0,z=-120,dx=300,dy=200,dz=300] run scoreboard players add endermites math 1
execute in the_end positioned 0 70 0 if entity @e[type=ender_dragon] if entity @a[distance=..300] if score endermites math matches 0..30 run execute in the_end positioned 0 70 0 run summon endermite
execute in the_end positioned 0 70 0 if entity @e[type=ender_dragon] if entity @a[distance=..300] if score endermites math matches 0..30 run execute in the_end positioned 0 70 0 run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal


#Lightning spawn check
execute in the_end positioned 0 70 0 if entity @e[type=ender_dragon,distance=..500] run function ed:la


schedule function ed:60tclock 60t replace
