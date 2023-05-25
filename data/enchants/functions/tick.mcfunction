

#Attack Timer Tick
execute as @e[type=ender_dragon] run scoreboard players add @s timer_a 1

#Attack oppo 
execute if score @e[type=ender_dragon,limit=1] timer_a matches 60.. if data storage bools {ed_a:1} run function ed:attack

#store Health (factor of 20)
#execute as @e run execute store result score @s health run data get entity @s Health 10
#execute as @e[type=dragon_fireball] run execute store result entity @s Motion[0] double 0.004 run scoreboard players get @s pos
#execute as @e[type=dragon_fireball] run execute store result entity @s Motion[1] double 0.004 run scoreboard players get @s pos
##execute as @e[type=dragon_fireball] run execute store result entity @s Motion[2] double 0.004 run scoreboard players get @s pos

