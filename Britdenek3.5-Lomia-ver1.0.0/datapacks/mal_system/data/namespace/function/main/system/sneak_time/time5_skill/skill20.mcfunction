execute store result score @s result run data get entity @s Health
scoreboard players add @s result 999
scoreboard players operation @s commandDamage = @s result
scoreboard players operation @e[tag=enemy,distance=..7] commandDamage = @s commandDamage 
particle minecraft:explosion ~ ~0.5 ~ 3 0.5 3 1 30 force
particle minecraft:lava ~ ~0.5 ~ 3 0.5 3 1 30 force
particle minecraft:flame ~ ~0.5 ~ 3 0.5 3 0.8 30 force
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.7 0.5
xp set @s 0 levels
scoreboard players remove @s mp 100
