scoreboard players add @e[tag=boss12,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss12] ~ ~0.4 ~
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss12] ^ ^1.7 ^0.5
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss12] ^ ^1.7 ^0.4
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss12] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss12] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss12] ^1.5 ^ ^0.5
execute as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss12] ^-1.5 ^ ^0.5



execute if entity @e[tag=boss12,tag=body,scores={motion=1}] as @e[tag=boss12,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss12battle,limit=1,sort=nearest]
execute if entity @e[tag=boss12,tag=body,scores={motion=1}] as @e[tag=boss12,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss12] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss12] ^ ^1.7 ^0.4 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss12] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss12] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss12] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss12] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss12,tag=body,scores={motion=1..2}] as @e[tag=boss12,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss12] ^-1.5 ^ ^0.5 ~ ~





execute if entity @e[tag=boss12,tag=body,scores={motion=22..30}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss12,tag=body,scores={motion=22..30}] as @e[tag=left_arm,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~7 ~-14
execute if entity @e[tag=boss12,tag=body,scores={motion=22..30}] as @e[tag=right_arm,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~-7 ~-14


execute if entity @e[tag=boss12,tag=body,scores={motion=38..39}] as @e[tag=body2,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss12,tag=body,scores={motion=40..41}] as @e[tag=left_arm,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~-50 ~30
execute if entity @e[tag=boss12,tag=body,scores={motion=40..41}] as @e[tag=right_arm,limit=1,tag=boss12] at @s run teleport @s ~ ~ ~ ~50 ~30

execute if entity @e[tag=boss12,tag=body,scores={motion=40}] as @e[tag=head,limit=1,tag=boss12] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8

execute if entity @e[tag=boss12,tag=body,scores={motion=50..60}] as @e[tag=body1,limit=1,tag=boss12] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s run particle block{block_state:"minecraft:netherrack"} ^ ^2 ^5 3 3 3 1 60 force
execute if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s run particle minecraft:glow_squid_ink ^ ^2 ^5 3 3 3 0.1 10 force
execute if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^2 ^5 3 3 3 0.1 10 force

execute if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s positioned ^ ^1 ^3 as @e[tag=boss12battle,distance=..8] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run scoreboard players set @s commandDamage 7
execute if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s positioned ^ ^1 ^3 as @e[tag=boss12battle,distance=..8] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run effect give @s minecraft:wither 6 2
execute if score “ïˆÕ“x difficulty matches 2.. if entity @e[tag=boss12,tag=body,scores={motion=50..70}] as @e[tag=body1,limit=1,tag=boss12] at @s positioned ^ ^1 ^3 as @e[tag=boss12battle,distance=..8] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run effect give @s minecraft:slowness 6 2


execute if entity @e[tag=boss12,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss12,tag=body] motion2 0
execute as @e[tag=boss12,tag=body,scores={motion=85..,HP=200..},limit=1] at @s if entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random11
execute as @e[tag=boss12,tag=body,scores={motion=85..,HP=200..},limit=1] at @s unless entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random12
execute as @e[tag=boss12,tag=body,scores={motion=85..,HP=..199},limit=1] at @s if entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random21
execute as @e[tag=boss12,tag=body,scores={motion=85..,HP=..199},limit=1] at @s unless entity @e[tag=boss12battle,distance=..7] run function namespace:main/boss/boss12/motion/random22

execute if entity @e[tag=boss12,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss12,tag=body] motion 0
