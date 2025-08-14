
scoreboard players add @e[tag=boss9,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 




execute as @e[tag=boss9,tag=left_arm] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss9] ^ ^-2.7 ^2.3 ~ ~22.5


execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss9battle,limit=1,sort=random]
execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ ~10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ ~-10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 ~ ~





execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~10 ~-5
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-2 ~-1.8
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss9,tag=body,scores={motion=20}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss9,tag=body,scores={motion=20}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-1.9 ^4 0.2 0.2 0.2 0.3 30 force
execute if entity @e[tag=boss9,tag=body,scores={motion=20..60}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run particle minecraft:soul_fire_flame ^ ^-1.9 ^4 0.2 0.2 0.2 0 1 force

execute if entity @e[tag=boss9,tag=body,scores={motion=41}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=43}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=45}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=47}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=49}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=51}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=53}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=55}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=57}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=59}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=61}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=63}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=65}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=67}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=69}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=71}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=73}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=75}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=77}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=79}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~0.1 ~

execute if entity @e[tag=boss9,tag=body,scores={motion=35..75}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run function namespace:main/entity_model/boss/boss9/boss9_bullet3
execute if entity @e[tag=boss9,tag=body,scores={motion=35..75}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run function namespace:main/entity_model/boss/boss9/boss9_bullet3
execute if entity @e[tag=boss9,tag=body,scores={motion=35..75}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run function namespace:main/entity_model/boss/boss9/boss9_bullet3
execute if entity @e[tag=boss9,tag=body,scores={motion=35..75}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run function namespace:main/entity_model/boss/boss9/boss9_bullet3


execute if entity @e[tag=boss9,tag=body,scores={motion=41..70}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 2





execute if entity @e[tag=boss9,tag=body,scores={motion=105..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion2 0
execute as @e[tag=boss9,tag=body,scores={motion=105..},limit=1] run function namespace:main/boss/boss9/motion/random1
#execute if entity @e[tag=boss9,tag=body,scores={motion=105..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion 0
