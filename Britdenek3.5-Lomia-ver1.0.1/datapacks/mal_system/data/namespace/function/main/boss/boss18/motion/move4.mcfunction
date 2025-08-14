scoreboard players add @e[tag=boss18,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss18,tag=body,scores={motion=1}] run scoreboard players set @e[tag=boss18,tag=body,limit=1] motion2 0

execute if entity @e[tag=boss18,tag=body,scores={motion=31..169}] run scoreboard players add @e[tag=boss18,tag=body,scores={motion2=0..},limit=1] motion2 1
execute if entity @e[tag=boss18,tag=body,scores={motion=170}] run scoreboard players set @e[tag=boss18,tag=body,scores={motion2=0..},limit=1] motion2 0

#歩行
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body] at @s run playsound minecraft:entity.horse.step master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=1}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~


execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body] at @s run playsound minecraft:entity.horse.step master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion2=34}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~


execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=1..9}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~5 ~

execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..25}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~-5 ~

execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg11,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg12,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg21,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=leg22,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion2=26..34}] as @e[tag=tail,limit=1,tag=boss18] at @s run teleport @s ~ ~ ~ ~5 ~



#腕振り
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..20}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..20}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..20}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss18,tag=body,scores={motion2=10..20}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~-8

execute if entity @e[tag=boss18,tag=body,scores={motion2=39..40}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss18,tag=body,scores={motion2=39..40}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~ ~50
execute if entity @e[tag=boss18,tag=body,scores={motion2=39..40}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss18,tag=body,scores={motion2=39..40}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~ ~50

execute if entity @e[tag=boss18,tag=body,scores={motion2=40}] as @e[tag=boss18,tag=body] at @s positioned ^ ^ ^14 run function namespace:main/entity_model/bomb_template {power:4}
execute if entity @e[tag=boss18,tag=body,scores={motion2=41}] as @e[tag=boss18,tag=body] at @s positioned ^ ^ ^18 run function namespace:main/entity_model/bomb_template {power:4}
execute if entity @e[tag=boss18,tag=body,scores={motion2=42}] as @e[tag=boss18,tag=body] at @s positioned ^ ^ ^22 run function namespace:main/entity_model/bomb_template {power:4}
execute if entity @e[tag=boss18,tag=body,scores={motion2=43}] as @e[tag=boss18,tag=body] at @s positioned ^ ^ ^26 run function namespace:main/entity_model/bomb_template {power:4}
execute if entity @e[tag=boss18,tag=body,scores={motion2=44}] as @e[tag=boss18,tag=body] at @s positioned ^ ^ ^30 run function namespace:main/entity_model/bomb_template {power:4}

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=40}] as @e[tag=boss18,tag=body] at @s positioned ^5 ^ ^14 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=41}] as @e[tag=boss18,tag=body] at @s positioned ^5 ^ ^18 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=42}] as @e[tag=boss18,tag=body] at @s positioned ^5 ^ ^22 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=43}] as @e[tag=boss18,tag=body] at @s positioned ^5 ^ ^26 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=44}] as @e[tag=boss18,tag=body] at @s positioned ^5 ^ ^30 run function namespace:main/entity_model/bomb_template {power:4}

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=40}] as @e[tag=boss18,tag=body] at @s positioned ^-5 ^ ^14 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=41}] as @e[tag=boss18,tag=body] at @s positioned ^-5 ^ ^18 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=42}] as @e[tag=boss18,tag=body] at @s positioned ^-5 ^ ^22 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=43}] as @e[tag=boss18,tag=body] at @s positioned ^-5 ^ ^26 run function namespace:main/entity_model/bomb_template {power:4}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=body,scores={motion2=44}] as @e[tag=boss18,tag=body] at @s positioned ^-5 ^ ^30 run function namespace:main/entity_model/bomb_template {power:4}


scoreboard players set @e[tag=boss18,tag=body,scores={motion2=45..},limit=1] motion2 0
execute if entity @e[tag=boss18,tag=body,scores={motion=31..169,motion2=1..34}] as @e[tag=boss18] at @s run teleport @s ~ ~ ~ ~2 ~ 
execute if entity @e[tag=boss18,tag=body,scores={motion=1}] run scoreboard players add @s motion2 0




execute as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss18] ~ ~0 ~
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss18] ^ ^0.7 ^1.0
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=head1,limit=1,tag=boss18] ^ ^4.5 ^1.4
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head2,limit=1,tag=boss18] ^ ^-0.4 ^1.2
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head3,limit=1,tag=boss18] ^0.5 ^-0.4 ^1.2
execute as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head4,limit=1,tag=boss18] ^-0.5 ^-0.4 ^1.2
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 
execute as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4
execute as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7




execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss18] ~ ~0 ~ ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss18] ^ ^0.7 ^1.0 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=head1,limit=1,tag=boss18] ^ ^4.5 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head2,limit=1,tag=boss18] ^ ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head3,limit=1,tag=boss18] ^0.5 ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=head1] at @s run teleport @e[tag=head4,limit=1,tag=boss18] ^-0.5 ^-0.4 ^1.2 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm11,limit=1,tag=boss18] ^2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss18] ^0.2 ^-2.5 ^-0.4 ~-20 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=arm21,limit=1,tag=boss18] ^-2 ^3.5 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss18] ^-0.2 ^-2.5 ^-0.4 ~20 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg11,limit=1,tag=boss18] ^-2 ^0.6 ^1.4 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg21,limit=1,tag=boss18] ^2 ^0.6 ^1.4 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg12,limit=1,tag=boss18] ^-2 ^0.6 ^-1.8 ~ ~0
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=leg22,limit=1,tag=boss18] ^2 ^0.6 ^-1.8 ~ ~
execute if entity @e[tag=boss18,tag=body,scores={motion=1..2}] as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=tail,limit=1,tag=boss18] ^ ^-0.5 ^-2.7 ~180 ~







#体モーション
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~-3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~-2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~2 ~2
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=21..30}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~2 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=21}] as @e[tag=boss18,tag=head1] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 0.8

execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=head1] at @s run teleport @s ~ ~ ~ ~ ~-1.5
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=head2] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=head3] at @s run teleport @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=head4] at @s run teleport @s ~ ~ ~ ~-3 ~

execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=arm11] at @s run teleport @s ~ ~ ~ ~2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=arm21] at @s run teleport @s ~ ~ ~ ~-2 ~-2
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=arm12] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss18,tag=body,scores={motion=181..190}] as @e[tag=boss18,tag=arm22] at @s run teleport @s ~ ~ ~ ~-2 ~



execute as @e[tag=boss18,tag=body,scores={motion=190..,HP=250..},limit=1] at @s run function namespace:main/boss/boss18/motion/random1
execute as @e[tag=boss18,tag=body,scores={motion=190..,HP=..249},limit=1] at @s run function namespace:main/boss/boss18/motion/random2


#execute if entity @e[tag=boss18,tag=body,scores={motion=190..},limit=1] run scoreboard players set @e[tag=boss18,tag=body] bossmove 3
#execute as @e[tag=boss18,tag=body,scores={motion=190..},limit=1] at @s run function namespace:main/boss/boss18/motion/random1

#execute if entity @e[tag=boss18,tag=body,scores={motion=190..},limit=1] run scoreboard players set @e[tag=boss18,tag=body] motion 0
