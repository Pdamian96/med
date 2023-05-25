scoreboard players operation @s temp.v = @s damage.taken
scoreboard players operation @s temp.v /= 10 numbers
scoreboard players operation @s temp.v *= 100 numbers
scoreboard players operation @s temp.v /= 400 numbers
scoreboard players reset @s damage.taken
say test
tag @s add vul
execute as @s run schedule function enchants:vul_b 0.7s