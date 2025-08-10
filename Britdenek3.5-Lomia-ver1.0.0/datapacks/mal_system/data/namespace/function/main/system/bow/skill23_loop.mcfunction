
scoreboard players add @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=..6}] result 1

execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.2
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 30 force
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s x run data get entity @s Pos[0] 100
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s y run data get entity @s Pos[1] 100
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s z run data get entity @s Pos[2] 100
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run teleport @s ^ ^ ^ facing entity @e[tag=enemy,distance=..30,limit=1,sort=random]
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run teleport @s ^ ^ ^ ~ ~-2
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run teleport @s ^ ^ ^0.5 ~ ~
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s dx run data get entity @s Pos[0] 100
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s dy run data get entity @s Pos[1] 100
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result score @s dz run data get entity @s Pos[2] 100

execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run scoreboard players operation @s dx -= @s x
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run scoreboard players operation @s dy -= @s y
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] run scoreboard players operation @s dz -= @s z

execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result entity @s Motion[0] double 0.07 run scoreboard players get @s dx
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result entity @s Motion[1] double 0.07 run scoreboard players get @s dy
execute as @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=6}] at @s if entity @e[tag=enemy,distance=..30] store result entity @s Motion[2] double 0.07 run scoreboard players get @s dz


execute if entity @e[type=arrow,limit=1,tag=skill23_arrow,scores={result=..6}] run schedule function namespace:main/system/bow/skill23_loop 1t replace