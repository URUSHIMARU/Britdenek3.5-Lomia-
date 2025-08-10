
scoreboard players add @e[tag=boss3,tag=body,scores={motion=0..},limit=1] motion 1


#初期
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1,tag=boss3] ^ ^ ^3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70

execute if entity @e[tag=boss3,tag=body,scores={motion=0..20},limit=1] as @e[tag=boss3,tag=head1,tag=boss3] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10



#吠える
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~10
execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..25},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~-10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~-30
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~-30
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1,tag=boss3] ^ ^ ^3 ~ ~-20

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~0
execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~0

execute if entity @e[tag=boss3,tag=body,scores={motion=22..40},limit=1] as @e[tag=boss3,tag=head1,tag=boss3] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10

execute if entity @e[tag=boss3,tag=body,scores={motion=22..22},limit=1] as @e[tag=boss3,tag=body2] at @s run playsound minecraft:entity.wolf.growl master @a ~ ~ ~ 2 0.9

#攻撃エフェクト
execute if entity @e[tag=boss3,tag=body,scores={motion=30..120},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^5.5 ^0.1 run particle minecraft:firework ~ ~ ~ 0 0 0 0.3 10 force
execute if entity @e[tag=boss3,tag=body,scores={motion=60..120},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^5.5 ^0.1 run particle minecraft:flash ~ ~ ~ 1 1 1 1 3 force
execute if entity @e[tag=boss3,tag=body,scores={motion=60..120},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run function namespace:main/entity_model/boss/boss3/boss3_bullet2
execute if entity @e[tag=boss3,tag=body,scores={motion=60..120},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run scoreboard players operation @e[tag=boss3_attack] player = @e[tag=boss3,tag=body,limit=1] player
execute if entity @e[tag=boss3,tag=body,scores={motion=60..70},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~30
execute if entity @e[tag=boss3,tag=body,scores={motion=71..75},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~25
execute if entity @e[tag=boss3,tag=body,scores={motion=76..80},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~20
execute if entity @e[tag=boss3,tag=body,scores={motion=81..85},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~15
execute if entity @e[tag=boss3,tag=body,scores={motion=86..90},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~10
execute if entity @e[tag=boss3,tag=body,scores={motion=91..95},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~5
execute if entity @e[tag=boss3,tag=body,scores={motion=96..100},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~0
execute if entity @e[tag=boss3,tag=body,scores={motion=101..105},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss3,tag=body,scores={motion=106..110},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss3,tag=body,scores={motion=111..120},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run teleport @e[tag=boss3_attack,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~-15

execute if entity @e[tag=boss3,tag=body,scores={motion=60..70},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~0
execute if entity @e[tag=boss3,tag=body,scores={motion=60..70},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~0
execute if entity @e[tag=boss3,tag=body,scores={motion=71..75},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-5
execute if entity @e[tag=boss3,tag=body,scores={motion=71..75},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-5
execute if entity @e[tag=boss3,tag=body,scores={motion=76..80},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-10
execute if entity @e[tag=boss3,tag=body,scores={motion=76..80},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-10
execute if entity @e[tag=boss3,tag=body,scores={motion=81..85},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-15
execute if entity @e[tag=boss3,tag=body,scores={motion=81..85},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-15
execute if entity @e[tag=boss3,tag=body,scores={motion=86..90},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-20
execute if entity @e[tag=boss3,tag=body,scores={motion=86..90},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-20
execute if entity @e[tag=boss3,tag=body,scores={motion=91..95},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-25
execute if entity @e[tag=boss3,tag=body,scores={motion=91..95},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-25
execute if entity @e[tag=boss3,tag=body,scores={motion=96..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-30
execute if entity @e[tag=boss3,tag=body,scores={motion=96..100},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-30
execute if entity @e[tag=boss3,tag=body,scores={motion=101..105},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-35
execute if entity @e[tag=boss3,tag=body,scores={motion=101..105},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-35
execute if entity @e[tag=boss3,tag=body,scores={motion=106..110},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-40
execute if entity @e[tag=boss3,tag=body,scores={motion=106..110},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-40
execute if entity @e[tag=boss3,tag=body,scores={motion=111..115},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-45
execute if entity @e[tag=boss3,tag=body,scores={motion=111..115},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-45
execute if entity @e[tag=boss3,tag=body,scores={motion=116..120},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~10 ~-50
execute if entity @e[tag=boss3,tag=body,scores={motion=116..120},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~-10 ~-50

execute if entity @e[tag=boss3,tag=body,scores={motion=60},limit=1] as @e[tag=head1,tag=boss3] at @s positioned ^ ^4.5 ^0.1 run playsound minecraft:item.totem.use master @a ~ ~ ~ 4 0.6

#戻す
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body] at @s run teleport @e[tag=boss3,limit=1,tag=body2] ^ ^0.8 ^ ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg1] ^-1 ^ ^0.3 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=leg2] ^1 ^ ^0.3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body2] at @s run teleport @e[tag=boss3,limit=1,tag=body1] ^ ^ ^1.5 ~ ~
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg3] ^-1.4 ^ ^1.3 ~5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=leg4] ^1.4 ^ ^1.3 ~-5 ~
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=head1,tag=boss3] ^ ^ ^3 ~ ~

execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing1] ^1.3 ^1 ^1.8 ~-10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=body1] at @s run teleport @e[tag=boss3,limit=1,tag=wing2] ^-1.3 ^1 ^1.8 ~10 ~-70
execute if entity @e[tag=boss3,tag=body,scores={motion=150},limit=1] as @e[tag=boss3,tag=head1,tag=boss3] at @s run teleport @e[tag=boss3,limit=1,tag=head2] ^ ^-0.2 ^0.7 ~ ~-10


execute if entity @e[tag=boss3,tag=body,scores={motion=151..},limit=1] run scoreboard players set @e[tag=boss3,tag=body] bossmove 3
execute if entity @e[tag=boss3,tag=body,scores={motion=151..},limit=1] run scoreboard players set @e[tag=boss3,tag=body] motion 0

