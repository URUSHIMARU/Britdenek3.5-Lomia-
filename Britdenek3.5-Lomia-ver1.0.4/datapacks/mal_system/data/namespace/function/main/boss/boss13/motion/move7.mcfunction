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

execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss13battle,sort=nearest,limit=1]
execute if entity @e[tag=boss13,tag=body,scores={motion=1..2}] as @e[tag=boss13,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=body2,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~2 ~-11
execute if entity @e[tag=boss13,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-2 ~-11

execute if entity @e[tag=boss13,tag=body,scores={motion=31}] as @e[tag=body,limit=1,tag=boss13] at @s run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 2 0.9

execute if entity @e[tag=boss13,tag=body,scores={motion=40}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.9
execute if entity @e[tag=boss13,tag=body,scores={motion=40}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.9


execute if entity @e[tag=boss13,tag=body,scores={motion=25..80}] as @e[tag=body,limit=1,tag=boss13] at @s run particle minecraft:block{block_state:"minecraft:raw_gold_block"} ^ ^1 ^ 2 2 2 1 30 force
execute if entity @e[tag=boss13,tag=body,scores={motion=25..80}] as @e[tag=body,limit=1,tag=boss13] at @s run particle minecraft:witch ^ ^1 ^ 2 2 2 1 30 force

execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=body,limit=1,tag=boss13] at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 1 100 force

execute if entity @e[tag=boss13,tag=body,scores={motion=40}] as @e[tag=body,limit=1,tag=boss13] at @s positioned ^ ^0.2 ^ run function namespace:main/entity_model/boss/boss13/boss13_bullet3
execute if entity @e[tag=boss13,tag=body,scores={motion=50}] as @e[limit=2,tag=boss13_attack1,sort=random] at @s positioned ^ ^0.1 ^ run function namespace:main/entity_model/boss/boss13/boss13_bullet3


execute as @s at @s positioned ~ ~400 ~ run kill @e[type=item,distance=..3]


execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=right_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~-40 ~90
execute if entity @e[tag=boss13,tag=body,scores={motion=70}] as @e[tag=left_arm,limit=1,tag=boss13] at @s run teleport @s ~ ~ ~ ~40 ~90


execute if entity @e[tag=boss13,tag=body,scores={motion=22}] as @e[tag=head,limit=1,tag=boss13] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8


execute as @e[tag=boss13,tag=body,scores={motion=85..},limit=1] at @s run function namespace:main/boss/boss13/motion/random1


