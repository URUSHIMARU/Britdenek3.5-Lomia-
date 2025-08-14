#位置情報保存
scoreboard players add @e[tag=boss6,tag=body,scores={motion=0..},limit=1] motion 1


#常時実行
execute as @e[tag=boss6,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss6] @s
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~0
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ ~180 ~90


#モーション
#初期化
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~

execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..60,tag=boss6battle]
execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss6,tag=body,scores={motion=2..6}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss6,tag=body,scores={motion=6..21}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss6,tag=body,scores={motion=10..21}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^-3 ^ 0.3 0 0.3 0.1 30 force
execute if entity @e[tag=boss6,tag=body,scores={motion=10}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss6,tag=body,scores={motion=50..52}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-10


execute if entity @e[tag=boss6,tag=body,scores={motion=26..30}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-8 ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=26..30}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~8 ~-12

execute if entity @e[tag=boss6,tag=body,scores={motion=53..55}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~16 ~24
execute if entity @e[tag=boss6,tag=body,scores={motion=53..55}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-16 ~24

execute if entity @e[tag=boss6,tag=body,scores={motion=26..50}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss6,tag=body,scores={motion=26..50}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss6,tag=body,scores={motion=26}] as @e[tag=head1,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2 0.8

#execute if entity @e[tag=boss6,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion 0
execute if entity @e[tag=boss6,tag=body,scores={motion=60..,HP=150..},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random1
execute if entity @e[tag=boss6,tag=body,scores={motion=60..,HP=..150},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random2



