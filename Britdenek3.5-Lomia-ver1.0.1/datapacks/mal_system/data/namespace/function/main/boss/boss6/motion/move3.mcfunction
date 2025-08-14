#位置情報保存
scoreboard players add @e[tag=boss6,tag=body,scores={motion2=0..},limit=1] motion2 1


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
execute if entity @e[tag=boss6,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss6battle]
execute if entity @e[tag=boss6,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0

#歩行のためのやつ
tag @e[tag=boss6,tag=stop] remove stop
execute as @e[tag=boss6] at @s unless block ^ ^ ^2 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute as @e[tag=boss6] at @s unless block ^ ^ ^3 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute as @e[tag=boss6] at @s unless block ^ ^ ^4 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute as @e[tag=body,tag=boss6,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^0.1


execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~0


execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss6,tag=body,scores={motion2=1}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss6,tag=body,scores={motion2=11}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.8

execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2


execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2




execute if entity @e[tag=boss6,tag=body,scores={motion2=21..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion2 0



