
scoreboard players add @e[tag=boss8,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~-0.5 ~ ~ ~
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ 
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^
execute as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ 

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss8battle,limit=1,sort=nearest]
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss8] ~ ~ ~ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss8] ^ ^3.2 ^ ~ ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss8] ^-0.7 ^2.5 ^ ~90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss8] ^0.7 ^2.5 ^ ~-90 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=1..2}] as @e[tag=boss8,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss8] ^ ^ ^ ~ ~




execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-7
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~5 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-5 ~-6
execute if entity @e[tag=boss8,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1

execute if entity @e[tag=boss8,tag=body,scores={motion=11..48}] as @e[tag=head,limit=1,tag=boss8] at @s run playsound minecraft:entity.puffer_fish.hurt master @a ~ ~ ~ 4 1.1
execute if entity @e[tag=boss8,tag=body,scores={motion=11..48}] as @e[tag=head,limit=1,tag=boss8] at @s run particle note ~ ~8 ~ 2 2 2 1 10 force
execute if entity @e[tag=boss8,tag=body,scores={motion=11..48}] as @e[tag=head,limit=1,tag=boss8] at @s run particle minecraft:explosion ~ ~8 ~ 2 2 2 1 4 force

execute if entity @e[tag=boss8,tag=body,scores={motion=11..18}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss8,tag=body,scores={motion=11..18}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=11..18}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=11..18}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=11..18}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=19..26}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss8,tag=body,scores={motion=19..26}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=19..26}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=19..26}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=19..26}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1

execute if entity @e[tag=boss8,tag=body,scores={motion=27..34}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss8,tag=body,scores={motion=27..34}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=27..34}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=27..34}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=27..34}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=35..42}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss8,tag=body,scores={motion=35..42}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=35..42}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=35..42}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=35..42}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1

execute if entity @e[tag=boss8,tag=body,scores={motion=43..50}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~3
execute if entity @e[tag=boss8,tag=body,scores={motion=43..50}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss8,tag=body,scores={motion=43..50}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=43..50}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~2
execute if entity @e[tag=boss8,tag=body,scores={motion=43..50}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=51..58}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-3
execute if entity @e[tag=boss8,tag=body,scores={motion=51..58}] as @e[tag=body1,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss8,tag=body,scores={motion=51..58}] as @e[tag=left_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=51..58}] as @e[tag=right_arm,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~-3 ~-2
execute if entity @e[tag=boss8,tag=body,scores={motion=51..58}] as @e[tag=body2,limit=1,tag=boss8] at @s run teleport @s ~ ~ ~ ~ ~1

execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @e[tag=boss8_attack11] ~ ~5 ~ ~ 0
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~11
execute if entity @e[tag=boss8,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack11,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~17



execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet12
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @e[tag=boss8_attack12] ~ ~5 ~ ~ 0
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~11
execute if entity @e[tag=boss8,tag=body,scores={motion=27}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack12,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~17


execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s positioned ~ 5 ~ run function namespace:main/entity_model/boss/boss8/boss8_bullet13
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run teleport @e[tag=boss8_attack13] ~ ~5 ~ ~ 0
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-23 ~
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~11
execute if entity @e[tag=boss8,tag=body,scores={motion=43}] as @e[tag=head,limit=1,tag=boss8] at @s run execute as @e[tag=boss8_attack13,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~17

execute if entity @e[tag=boss8,tag=body,scores={motion=10}] as @e[tag=body2,limit=1,tag=boss8] at @s run playsound minecraft:entity.puffer_fish.hurt master @a ~ ~ ~ 2 0.7


execute if entity @e[tag=boss8,tag=body,scores={motion=75..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion2 0
execute as @e[tag=boss8,tag=body,scores={motion=75..},limit=1] run function namespace:main/boss/boss8/motion/random1
#execute if entity @e[tag=boss8,tag=body,scores={motion=75..},limit=1] run scoreboard players set @e[tag=boss8,tag=body] motion 0
