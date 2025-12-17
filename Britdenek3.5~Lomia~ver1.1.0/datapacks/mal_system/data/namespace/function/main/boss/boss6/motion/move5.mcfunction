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
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ ~180 ~90

execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..60,tag=boss6battle]
execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-8 ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~8 ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-15

execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~ ~15 ~ 0 -1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~4 ~15 ~ -0.2 -1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~-4 ~15 ~ 0.2 -1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~4 ~15 ~4 -0.2 -1 -0.2 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~-4 ~15 ~-4 0.2 -1 0.2 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~ ~15 ~ 0 -1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~-4 ~15 ~4 0.2 -1 -0.2 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=11..40}] as @e[tag=boss6,tag=wing] at @s run particle minecraft:flame ~4 ~15 ~-4 -0.2 -1 0.2 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=5}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss6,tag=body,scores={motion=5}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss6,tag=body,scores={motion=5}] as @e[tag=head1,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~8 ~12
execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-8 ~12
execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~15


execute if entity @e[tag=boss6,tag=body,scores={motion=80..82}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..82}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~25 ~

execute if entity @e[tag=boss6,tag=body,scores={motion=83..133}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss6,tag=body,scores={motion=83..133}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-3 ~


execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^2 0.1 0.1 0.1 0.1 20 force
execute if entity @e[tag=boss6,tag=body,scores={motion=83..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 1.2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^1.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^3 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^4.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^6 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^7.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^9 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^10.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^12 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^13.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^15 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^16.5 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^18 0.1 0.1 0.1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^2 ^19.5 0.1 0.1 0.1 0.1 5 force

execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^1.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^3 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^4.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^6 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^7.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^9 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^10.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^12 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^13.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^15 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^16.5 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^18 1 1 1 0.1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s run particle minecraft:smoke ^ ^2 ^19.5 1 1 1 0.1 5 force


execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^1.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^3.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^4.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^6.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^7.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^9.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^10.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^12.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^13.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^15.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^16.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^18.0 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute if entity @e[tag=boss6,tag=body,scores={motion=80..130}] as @e[tag=head1,limit=1,tag=boss6] at @s positioned ^ ^ ^19.5 as @e[tag=boss6battle,distance=..3] unless score @s player = @e[tag=boss6,tag=body,limit=1] player run scoreboard players set @s commandDamage 14


execute if entity @e[tag=boss6,tag=body,scores={motion=145}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss6,tag=body,scores={motion=145}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-10


execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~



execute if entity @e[tag=boss6,tag=body,scores={motion=80}] as @e[tag=body,tag=boss6] at @s run scoreboard players set @s motion2 1
execute if entity @e[tag=boss6,tag=body,scores={motion=80..}] as @e[tag=body,tag=boss6] at @s run scoreboard players add @s motion2 1
#モーション
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss6,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss6battle]
execute if score #difficulty difficulty matches 2.. run execute if entity @e[tag=boss6,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0

#歩行のためのやつ
tag @e[tag=boss6,tag=stop] remove stop
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] as @e[tag=boss6] at @s unless block ^ ^ ^-2 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] as @e[tag=boss6] at @s unless block ^ ^ ^-3 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] as @e[tag=boss6] at @s unless block ^ ^ ^-4 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] as @e[tag=body,tag=boss6,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^-0.15


execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~0

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=2..6}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=7..16}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=17..21}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=22..26}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=27..36}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion=80..140}] if entity @e[tag=boss6,tag=body,scores={motion2=37..41}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2


execute if entity @e[tag=boss6,tag=body,scores={motion2=42..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion2 0



#execute if entity @e[tag=boss6,tag=body,scores={motion=150..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion 0

execute if entity @e[tag=boss6,tag=body,scores={motion=150..,HP=150..},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random1
execute if entity @e[tag=boss6,tag=body,scores={motion=150..,HP=..150},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random2


