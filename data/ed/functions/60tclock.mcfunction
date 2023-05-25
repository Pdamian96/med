execute if score @e[type=ender_dragon,limit=1] timer_a matches 60.. if data storage bools {ed_a:1} run function ed:attack

schedule function ed:60tclock 60t replace