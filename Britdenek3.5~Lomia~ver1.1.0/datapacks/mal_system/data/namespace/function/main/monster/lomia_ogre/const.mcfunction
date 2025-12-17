scoreboard players set @e[tag=ogre_lomia] HP 0
execute as @e[tag=ogre_lomia] at @s store result score @s bossHP run data get entity @s Health
execute as @e[tag=ogre_lomia] at @s run scoreboard players operation @e[tag=ogre_lomia] HP += @s bossHP


execute as @e[tag=ogre_lomia,scores={lomia=1}] at @s run data modify entity @s AngryAt set from entity @e[limit=1,sort=nearest,scores={lomia=2}] UUID
execute as @e[tag=ogre_lomia,scores={lomia=2}] at @s run data modify entity @s AngryAt set from entity @e[limit=1,sort=nearest,scores={lomia=1}] UUID




