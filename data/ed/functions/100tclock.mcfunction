

#Blast Attack

execute as @e[type=ender_dragon] run execute if entity @s[nbt={DragonPhase:5}] run function ed:blast_calc
execute as @e[type=ender_dragon] run execute if entity @s[nbt={DragonPhase:6}] run function ed:blast_calc




schedule function ed:100tclock 100t