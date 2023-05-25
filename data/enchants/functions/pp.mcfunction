
execute at @s run data modify entity @s ActiveEffects set from entity @a[advancements={enchants:bowhit=true},limit=1,sort=nearest] ActiveEffects

execute as @a[advancements={enchants:bowhit=true},limit=1,sort=nearest] run say test

advancement revoke @s only enchants:bowhit
say hi

say test

