


playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2
particle minecraft:flash ~ ~1 ~ 10 10 10 1 1000 force
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 2

scoreboard players operation @e[distance=..30,tag=enemy] commandDamage = @s attackBase
scoreboard players operation @e[distance=..30,tag=enemy] commandDamage /= #5 cal
execute as @e[distance=..30,tag=enemy] at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 0.1 20 force
execute as @e[distance=..30,tag=enemy] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
execute as @e[distance=..30,tag=enemy] at @s run particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 50 force
xp add @s -80 levels


