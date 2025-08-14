particle minecraft:sweep_attack ^ ^1 ^3 0 0 0 1 1 force
particle minecraft:sweep_attack ^1.5 ^1 ^2.60 0 0 0 1 1 force
particle minecraft:sweep_attack ^2.12 ^1 ^2.12 0 0 0 1 1 force
particle minecraft:sweep_attack ^2.60 ^1 ^1.5 0 0 0 1 1 force

particle minecraft:sweep_attack ^3 ^1 ^ 0 0 0 1 1 force
particle minecraft:sweep_attack ^-1.5 ^1 ^2.60 0 0 0 1 1 force
particle minecraft:sweep_attack ^-2.12 ^1 ^2.12 0 0 0 1 1 force
particle minecraft:sweep_attack ^-2.60 ^1 ^1.5 0 0 0 1 1 force

particle minecraft:sweep_attack ^ ^1 ^-3 0 0 0 1 1 force
particle minecraft:sweep_attack ^1.5 ^1 ^-2.60 0 0 0 1 1 force
particle minecraft:sweep_attack ^2.12 ^1 ^-2.12 0 0 0 1 1 force
particle minecraft:sweep_attack ^2.60 ^1 ^-1.5 0 0 0 1 1 force


particle minecraft:sweep_attack ^-3 ^1 ^ 0 0 0 1 1 force
particle minecraft:sweep_attack ^-3 ^1 ^-5.2 0 0 0 1 1 force
particle minecraft:sweep_attack ^-4.24 ^1 ^-4.24 0 0 0 1 1 force
particle minecraft:sweep_attack ^-5.20 ^1 ^-3 0 0 0 1 1 force

particle minecraft:sweep_attack ^ ^1 ^6 0 0 0 1 1 force
particle minecraft:sweep_attack ^3 ^1 ^5.2 0 0 0 1 1 force
particle minecraft:sweep_attack ^4.24 ^1 ^4.24 0 0 0 1 1 force
particle minecraft:sweep_attack ^5.20 ^1 ^3 0 0 0 1 1 force

particle minecraft:sweep_attack ^6 ^1 ^ 0 0 0 1 1 force
particle minecraft:sweep_attack ^-3 ^1 ^5.2 0 0 0 1 1 force
particle minecraft:sweep_attack ^-4.24 ^1 ^4.24 0 0 0 1 1 force
particle minecraft:sweep_attack ^-5.20 ^1 ^3 0 0 0 1 1 force

particle minecraft:sweep_attack ^ ^1 ^-6 0 0 0 1 1 force
particle minecraft:sweep_attack ^3 ^1 ^-5.20 0 0 0 1 1 force
particle minecraft:sweep_attack ^4.24 ^1 ^-4.24 0 0 0 1 1 force
particle minecraft:sweep_attack ^5.20 ^1 ^-3 0 0 0 1 1 force


particle minecraft:sweep_attack ^-6 ^1 ^ 0 0 0 1 1 force
particle minecraft:sweep_attack ^-3 ^1 ^-5.20 0 0 0 1 1 force
particle minecraft:sweep_attack ^-4.24 ^1 ^-4.24 0 0 0 1 1 force
particle minecraft:sweep_attack ^-5.2 ^1 ^-3 0 0 0 1 1 force

playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 0.4 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2

scoreboard players operation @e[distance=..8,tag=enemy] commandDamage = @s attackBase
scoreboard players operation @e[distance=..8,tag=enemy] commandDamage /= #10 cal
execute as @e[distance=..8,tag=enemy] at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 0.1 20 force

xp add @s -15 levels


