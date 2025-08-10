
scoreboard players add @e[tag=boss3,tag=body,scores={motion=0..},limit=1] motion 1


#èâä˙
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10



#ñiÇ¶ÇÈ
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~10
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~-50

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~30
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~30
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~-20

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~30 ~10
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-30 ~10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..22},limit=1] as @e[tag=boss3,tag=body2] at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 1 1.2


#ñﬂÇ∑
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=100..100},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10

execute if entity @e[tag=boss3,tag=body,scores={motion=70},limit=1] at @e[tag=boss3battle,sort=random,limit=3] run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=90},limit=1] at @e[tag=boss3battle,sort=random,limit=3] run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=110},limit=1] at @e[tag=boss3battle,sort=random,limit=3] run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=120},limit=1] at @e[tag=boss3battle,sort=random,limit=3] run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=130},limit=1] at @e[tag=boss3battle,sort=random,limit=3] run function namespace:main/entity_model/boss/boss3/boss3_bullet1


execute if entity @e[tag=boss3,tag=body,scores={motion=140..},limit=1] run scoreboard players set @e[tag=boss3,tag=body] bossmove 3
execute if entity @e[tag=boss3,tag=body,scores={motion=140..},limit=1] run scoreboard players set @e[tag=boss3,tag=body] motion 0

