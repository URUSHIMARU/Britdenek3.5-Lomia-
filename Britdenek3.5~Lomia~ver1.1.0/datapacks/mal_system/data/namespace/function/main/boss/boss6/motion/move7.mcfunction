#位置情報保存
scoreboard players add @e[tag=boss6,tag=body,scores={motion2=0..},limit=1] motion 1


#常時実行
execute as @e[tag=boss6,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss6] @s
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 
execute as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ 


#モーション
#初期化
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~ ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~ ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ ~180 ~90

execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..60,tag=boss6battle]
execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-15

execute if entity @e[tag=boss6,tag=body,scores={motion=15..59}] as @e[tag=wing,limit=1,tag=boss6] at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss6,tag=body,scores={motion=15..59}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~32 ~
execute if entity @e[tag=boss6,tag=body,scores={motion=15..60}] as @e[tag=wing,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^8 ^1 0.3 0.3 0.3 0.1 30 force


execute if entity @e[tag=boss6,tag=body,scores={motion=45..59}] as @e[tag=wing,limit=1,tag=boss6] at @s run function namespace:main/entity_model/boss/boss6/boss6_bullet1
execute if entity @e[tag=boss6,tag=body,scores={motion=45..59}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @e[tag=boss6_attack1,distance=..1,sort=nearest,limit=1] ^ ^7 ^1 ~ 35


execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~15





#execute if entity @e[tag=boss6,tag=body,scores={motion=90..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion 0

execute if entity @e[tag=boss6,tag=body,scores={motion=90..,HP=150..},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random1
execute if entity @e[tag=boss6,tag=body,scores={motion=90..,HP=..150},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random2

