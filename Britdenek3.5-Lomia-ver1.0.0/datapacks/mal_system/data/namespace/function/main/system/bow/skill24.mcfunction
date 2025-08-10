tag @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] add skill24_arrow
scoreboard players remove @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] bowAttackBase 3

summon arrow ~ ~ ~ {Tags:["skill24_arrow_phantom"]}
summon arrow ~ ~ ~ {Tags:["skill24_arrow_phantom"]}
summon arrow ~ ~ ~ {Tags:["skill24_arrow_phantom"]}
summon arrow ~ ~ ~ {Tags:["skill24_arrow_phantom"]}
summon arrow ~ ~ ~ {Tags:["skill24_arrow_phantom"]}

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] run data modify entity @s Motion set from entity @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] Motion
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] run data modify entity @s item set from entity @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] item
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.3

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players operation @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] bowAttackBase = @s bowAttackBase

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result score @s x run data get entity @s Motion[0] 100
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result score @s y run data get entity @s Motion[1] 100
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result score @s z run data get entity @s Motion[2] 100

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 10
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 10
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 10
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 10
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 10
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 10

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 17
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 17
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 17
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 17
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 17
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 17

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 3
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 3
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 3
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 3
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 3
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 3

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 23
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 23
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players add @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 23
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] x 23
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] y 23
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s run scoreboard players remove @e[tag=skill24_arrow_phantom,limit=3,sort=random,distance=..1] z 23


execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

execute as @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] at @s as @e[tag=skill24_arrow_phantom,distance=..1,limit=5,sort=nearest] run data modify entity @s Tags set from entity @e[type=arrow,tag=skill24_arrow,limit=1,distance=..1] Tags

xp add @s -10 levels
