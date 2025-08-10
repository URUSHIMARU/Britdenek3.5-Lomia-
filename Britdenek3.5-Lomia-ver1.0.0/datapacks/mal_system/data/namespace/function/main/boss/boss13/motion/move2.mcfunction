scoreboard players add @e[tag=boss13,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 






execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.3 ~ ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 ~-30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 ~30 ~60
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.4 ^-0.2 ~ ~
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.4 ^-0.2 ~ ~




execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=body2,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-2.5 ~-9
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~2.5 ~-9
execute if entity @e[tag=boss13,tag=body,scores={motion=31}] as @e[tag=body,limit=1,tag=boss13] at @s run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 2 0.9


execute if entity @e[tag=boss13,tag=body,scores={motion=62..70}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~2.5 ~9
execute if entity @e[tag=boss13,tag=body,scores={motion=62..70}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-2.5 ~9


execute if entity @e[tag=boss13,tag=body,scores={motion=22}] as @e[tag=head,limit=1,tag=boss13] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8


execute as @e[tag=boss13,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss13/motion/random1

execute if entity @e[tag=boss13,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss13,tag=body] motion 0
#execute as @e[tag=boss13,tag=body,scores={motion=85..,HP=150..},limit=1] at @s if entity @e[tag=boss13battle,distance=..7] run function namespace:main/boss/boss13/motion/random11
#execute as @e[tag=boss13,tag=body,scores={motion=85..,HP=150..},limit=1] at @s unless entity @e[tag=boss13battle,distance=..7] run function namespace:main/boss/boss13/motion/random12
#execute as @e[tag=boss13,tag=body,scores={motion=85..,HP=..149},limit=1] at @s if entity @e[tag=boss13battle,distance=..7] run function namespace:main/boss/boss13/motion/random21
#execute as @e[tag=boss13,tag=body,scores={motion=85..,HP=..149},limit=1] at @s unless entity @e[tag=boss13battle,distance=..7] run function namespace:main/boss/boss13/motion/random22

#execute if entity @e[tag=boss13,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss13,tag=body] motion 0
