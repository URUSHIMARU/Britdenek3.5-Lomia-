
scoreboard players add @e[tag=boss26_lomia,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1
execute as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1


execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26_lomia] ~ ~0 ~ facing entity @e[tag=!bullet,tag=boss26_lomiabattle,limit=1]
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body,limit=1,tag=boss26_lomia] ~ ~0 ~ ~ 0
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss26_lomia] ~ ~-0.9 ~ ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss26_lomia] ^-0.25 ^0.6 ^0.05 ~-25 ~20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss26_lomia] ^0.25 ^0.6 ^-0.03 ~0 ~-20
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss26_lomia] ^0.11 ^-0.05 ^0.1 ~ ~
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss26_lomia,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss26_lomia] ^-0.11 ^0.05 ^-0.1 ~ ~




#モーション
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss26_lomia] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss26_lomiabattle,tag=!bullet]
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss26_lomia] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=2..25}] as @e[tag=boss26_lomia,tag=body] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.3 1 force
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=2..25}] as @e[tag=boss26_lomia,tag=body] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 3 force

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=25}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=25}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-6 ^ ^-6 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=25}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-6 ^ ^-6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=25}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-6 ^ ^-6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-4 ^ ^-4 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-4 ^ ^-4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-4 ^ ^-4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-2 ^ ^-2 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-2 ^ ^-2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-2 ^ ^-2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=27}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^0 ^ ^0 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^0 ^ ^0 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=26}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^0 ^ ^0 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=27}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^2 ^ ^2 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=27}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^2 ^ ^2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=27}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^2 ^ ^2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=28}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^4 ^ ^4 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=28}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^4 ^ ^4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=28}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^4 ^ ^4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=29}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^6 ^ ^6 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=29}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^6 ^ ^6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=29}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^6 ^ ^6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040





execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=30}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=30}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^6 ^ ^-6 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=30}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^6 ^ ^-6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=30}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^6 ^ ^-6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=31}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^4 ^ ^-4 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=31}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^4 ^ ^-4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=31}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^4 ^ ^-4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=32}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^2 ^ ^-2 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=32}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^2 ^ ^-2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=32}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^2 ^ ^-2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=33}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^0 ^ ^0 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=33}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^0 ^ ^0 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=33}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^0 ^ ^0 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=34}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-2 ^ ^2 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=34}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-2 ^ ^2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=34}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-2 ^ ^2 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=35}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-4 ^ ^4 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=35}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-4 ^ ^4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=35}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-4 ^ ^4 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040

execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=36}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ^-6 ^ ^6 1 1 1 1 50 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss26_lomia,tag=body,scores={motion=36}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-6 ^ ^6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1030
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss26_lomia,tag=body,scores={motion=36}] as @e[tag=boss26_lomia,tag=body] at @s positioned ^ ^1 ^6 positioned ^-6 ^ ^6 run scoreboard players set @e[tag=boss26_lomiabattle,distance=..4] commandDamage 1040




execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=50..},limit=1] run scoreboard players remove @e[tag=body,tag=boss26_lomia] bossskill5 6
execute as @e[tag=boss26_lomia,tag=body,scores={motion=50..},limit=1] at @s run function namespace:main/boss/boss26_lomia/motion/random1
execute if entity @e[tag=boss26_lomia,tag=body,scores={motion=50..},limit=1] run scoreboard players set @e[tag=boss26_lomia,tag=body] motion 0



