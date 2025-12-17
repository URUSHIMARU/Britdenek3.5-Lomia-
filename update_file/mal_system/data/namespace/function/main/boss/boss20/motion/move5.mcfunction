scoreboard players add @e[tag=boss20,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=shadow,tag=boss20,limit=1] y 

execute as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ~ ~0 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5




execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss20,tag=body,scores={motion=40}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion=40}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~

execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=40..41}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~



execute if entity @e[tag=boss20,tag=body,scores={motion=40}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion=40}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss20,tag=body,scores={motion=12}] as @e[tag=boss20,tag=arm1] at @s run particle minecraft:witch ^ ^ ^3 1 1 1 1 200 force
execute if entity @e[tag=boss20,tag=body,scores={motion=12}] as @e[tag=boss20,tag=arm1] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 1.3
execute if entity @e[tag=boss20,tag=body,scores={motion=12}] as @e[tag=boss20,tag=arm1] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet10
execute if entity @e[tag=boss20,tag=body,scores={motion=12}] as @e[tag=boss20,tag=arm1] at @s run teleport @e[tag=boss20_rance1,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=12}] as @e[tag=boss20,tag=arm1] at @s run teleport @e[tag=boss20_rance1,sort=nearest,limit=1] ~ ~0.5 ~ ~ 0
execute if entity @e[tag=boss20,tag=body,scores={motion=30..31}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-24
execute if entity @e[tag=boss20,tag=body,scores={motion=40..43}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~12

execute if entity @e[tag=boss20,tag=body,scores={motion=50}] as @e[tag=boss20,tag=arm2] at @s run particle minecraft:witch ^ ^ ^3 1 1 1 1 200 force
execute if entity @e[tag=boss20,tag=body,scores={motion=50}] as @e[tag=boss20,tag=arm2] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 1.3
execute if entity @e[tag=boss20,tag=body,scores={motion=50}] as @e[tag=boss20,tag=arm2] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet20
execute if entity @e[tag=boss20,tag=body,scores={motion=50}] as @e[tag=boss20,tag=arm2] at @s run teleport @e[tag=boss20_rance2,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=50}] as @e[tag=boss20,tag=arm2] at @s run teleport @e[tag=boss20_rance2,sort=nearest,limit=1] ~ ~0.5 ~ ~ 0
execute if entity @e[tag=boss20,tag=body,scores={motion=70..71}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-24
execute if entity @e[tag=boss20,tag=body,scores={motion=80..83}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~12




execute as @e[tag=boss20,tag=body,scores={motion=165..},limit=1] at @s run function namespace:main/boss/boss20/motion/random1
execute if entity @e[tag=boss20,tag=body,scores={motion=165..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion 0

