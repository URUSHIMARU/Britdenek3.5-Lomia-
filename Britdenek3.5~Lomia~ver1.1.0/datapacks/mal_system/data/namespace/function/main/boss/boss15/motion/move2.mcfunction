scoreboard players add @e[tag=boss15,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 

execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 

execute as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ 





execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 ~ ~

execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ ~ ~90


execute if entity @e[tag=boss15,tag=body,scores={motion=20..39}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss15,tag=body,scores={motion=30..49}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss15,tag=body,scores={motion=40..59}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss15,tag=body,scores={motion=50..69}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss15,tag=body,scores={motion=60..79}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss15,tag=body,scores={motion=85}] as @e[tag=boss15,tag=body] at @s run playsound minecraft:entity.allay.death master @a ~ ~ ~ 4 0.4


execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~6



execute as @e[tag=boss15,tag=body,scores={motion=110..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=110..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2


execute if entity @e[tag=boss15,tag=body,scores={motion=110..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
