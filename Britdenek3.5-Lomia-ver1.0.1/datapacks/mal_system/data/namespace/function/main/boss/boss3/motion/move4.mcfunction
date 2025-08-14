
scoreboard players add @e[tag=boss3,tag=body,scores={motion=0..},limit=1] motion 1




#初期
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~

execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~25 ~

execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute if entity @e[tag=boss3,tag=body,limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10


#バックステップモーション
#踏み込む
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~10
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~10

execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~10

execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~30
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~30
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~-20

execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~ ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~ ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=2..10},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~


#ジャンプ
execute if entity @e[tag=boss3,tag=body,scores={motion=6},limit=1] as @e[tag=boss3,tag=body] at @s positioned ^-5 ^ ^ run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=6},limit=1] as @e[tag=boss3,tag=body] at @s positioned ^ ^ ^3 run function namespace:main/entity_model/boss/boss3/boss3_bullet1
execute if entity @e[tag=boss3,tag=body,scores={motion=6},limit=1] as @e[tag=boss3,tag=body] at @s positioned ^5 ^ ^ run function namespace:main/entity_model/boss/boss3/boss3_bullet1



execute if entity @e[tag=boss3,tag=body,scores={motion=11},limit=1] as @e[tag=boss3,tag=body] at @s run particle minecraft:explosion ~ ~ ~ 1 0 1 1 5 force
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~-35
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~-35

execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~-40
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~-40
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~-20

execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~ ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~ ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=11..20},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~


#向いていとる方向が行き止まりの場合
execute if entity @e[tag=boss3,tag=body,scores={motion=11..13},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,tag=body] ~ ~0.5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=14..15},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,tag=body] ~ ~0.25 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=16..17},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,tag=body] ~ ~-0.25 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=18..},limit=1] as @e[tag=boss3,tag=body] at @s if block ~ ~-0.25 ~ #namespace:airs_for_mob run teleport @e[tag=boss3,tag=body] ~ ~-0.25 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=18..},limit=1] as @e[tag=boss3,tag=body] at @s if block ~ ~-0.25 ~ #namespace:airs_for_mob run teleport @e[tag=boss3,tag=body] ~ ~-0.25 ~

execute if entity @e[tag=boss3,tag=body,scores={motion=11..21},limit=1] as @e[tag=boss3,tag=body] at @s if block ^ ^ ^-2 #namespace:airs_for_mob run teleport @e[tag=boss3,tag=body] ^ ^ ^-1 ~ 0


#初期化
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ 0

execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1] ^ ^ ^3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=23..},limit=1] as @e[tag=boss3,tag=head1] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10


#scoreboard players set @e[tag=body,tag=boss3,scores={motion=21..}] motion 0
scoreboard players set @e[tag=body,tag=boss3,scores={motion=25..}] bossmove 1


