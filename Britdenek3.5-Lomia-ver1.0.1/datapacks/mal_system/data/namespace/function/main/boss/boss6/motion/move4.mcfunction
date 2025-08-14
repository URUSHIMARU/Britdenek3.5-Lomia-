#位置情報保存
scoreboard players add @e[tag=boss6,tag=body,scores={motion2=0..},limit=1] motion 1


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

execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=random,distance=..60,tag=boss6battle]
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

execute if entity @e[tag=boss6,tag=body,scores={motion=50}] run scoreboard players set @e[tag=boss6,tag=body] motion2 0


execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=141..142}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~

#突進用
#モーション
scoreboard players add @e[tag=boss6,tag=body,scores={motion2=0..,motion=70..140},limit=1] motion2 1

#歩行のためのやつ
tag @e[tag=boss6,tag=stop] remove stop
execute if entity @e[tag=boss6,scores={motion=80..140}] as @e[tag=head1] at @s run particle minecraft:explosion ~ ~2 ~ 1 1 1 1 5 force

execute if entity @e[tag=boss6,scores={motion=70..140}] as @e[tag=boss6] at @s unless block ^ ^ ^2 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,scores={motion=70..140}] as @e[tag=boss6] at @s unless block ^ ^ ^3 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,scores={motion=70..140}] as @e[tag=boss6] at @s unless block ^ ^ ^4 #namespace:airs_for_mob run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,scores={motion=70..140}] as @e[tag=boss6,tag=head1] at @s if entity @e[tag=boss6battle,distance=..5] run tag @e[tag=boss6,tag=body,limit=1] add stop
execute if entity @e[tag=boss6,scores={motion=70..140}] as @e[tag=body,tag=boss6,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^1

execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] as @e[tag=boss6,tag=head1] at @s positioned ^ ^ ^2 positioned ~4 ~ ~ run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] as @e[tag=boss6,tag=head1] at @s positioned ^ ^ ^2 positioned ~-4 ~ ~ run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] as @e[tag=boss6,tag=head1] at @s positioned ^ ^ ^2 positioned ~ ~ ~4 run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] as @e[tag=boss6,tag=head1] at @s positioned ^ ^ ^2 positioned ~ ~ ~-4 run function namespace:main/entity_model/bomb_template {"power":4}

execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] as @e[tag=boss6,tag=head1] at @s positioned ^ ^ ^2 positioned ~ ~ ~ run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=body,tag=boss6,limit=1,tag=stop] if entity @e[tag=boss6,tag=body,scores={motion=..140}] run scoreboard players set @e[tag=boss6,tag=body] motion 140
execute if entity @e[tag=boss6,tag=body,scores={motion=140}] as @e[tag=boss6] run data merge entity @s {Invulnerable:1b}
execute if entity @e[tag=boss6,tag=body,scores={motion=150}] as @e[tag=boss6,tag=weak] run data merge entity @s {Invulnerable:0b}



execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~-15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~15 ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion2=1..2,motion=70..140}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~0


execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion2=2..4,motion=70..140}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss6,tag=body,scores={motion2=1,motion=70..140}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss6,tag=body,scores={motion2=7,motion=70..140}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.8

execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss6,tag=body,scores={motion2=5..10,motion=70..140}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=right_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=left_leg1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=right_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=left_leg2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=head1,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss6,tag=body,scores={motion2=11..13,motion=70..140}] as @e[tag=head2,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-2




execute if entity @e[tag=boss6,tag=body,scores={motion2=13..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion2 0
#execute if entity @e[tag=boss6,tag=body,scores={motion=160..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion 0

execute if entity @e[tag=boss6,tag=body,scores={motion=160..,HP=150..},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random1
execute if entity @e[tag=boss6,tag=body,scores={motion=160..,HP=..150},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random2

