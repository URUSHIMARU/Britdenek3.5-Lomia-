scoreboard players add @e[tag=boss22,tag=body,scores={motion2=0..},limit=1] motion2 1







execute as @e[tag=boss22,tag=body,scores={motion2=110..},limit=1] at @s run function namespace:main/boss/boss22/motion/random2

execute if entity @e[tag=boss22,tag=body,scores={motion=110..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion 0


