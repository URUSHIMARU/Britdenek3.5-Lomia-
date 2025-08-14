scoreboard players add @e[tag=boss11_lomia,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5
execute as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5




execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss11_lomiabattle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11_lomia] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.4 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11_lomia] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11_lomia] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11_lomia] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11_lomia] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=1..2}] as @e[tag=boss11_lomia,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11_lomia] ^-1.5 ^ ^0.5 ~ ~





execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=12..20}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=12..20}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~6

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=40..41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=40..41}] as @e[tag=body2,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=40..41}] as @e[tag=left_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-90
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=40..41}] as @e[tag=right_arm,limit=1,tag=boss11_lomia] at @s run teleport @s ~ ~ ~ ~ ~-90
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=40..41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run particle minecraft:explosion ^ ^-1 ^3 2 0 2 1 40 force
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 0.6
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run function namespace:main/entity_model/boss/boss11_lomia/boss11_lomia_bullet2


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run scoreboard players operation @e[tag=boss11_lomia_attack2] lomia = @s lomia
execute if score #difficulty difficulty matches ..2 if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run teleport @e[tag=boss11_lomia_attack2,limit=4,sort=nearest,distance=..2] ^ ^0.5 ^3 ~ -90
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s run teleport @e[tag=boss11_lomia_attack2,limit=6,sort=nearest,distance=..2] ^ ^0.5 ^3 ~ -90
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~10 ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~-23 ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~23 ~
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=41}] as @e[tag=body1,limit=1,tag=boss11_lomia] at @s positioned ^ ^0.5 ^3 as @e[tag=boss11_lomia_attack2,limit=2,sort=random,distance=..2] at @s run teleport @s ~ ~ ~ ~ ~25


execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion2 0
execute as @e[tag=boss11_lomia,tag=body,scores={motion=55..,HP=150..},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random11
execute as @e[tag=boss11_lomia,tag=body,scores={motion=55..,HP=150..},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random12
execute as @e[tag=boss11_lomia,tag=body,scores={motion=55..,HP=..149},limit=1] at @s if entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random21
execute as @e[tag=boss11_lomia,tag=body,scores={motion=55..,HP=..149},limit=1] at @s unless entity @e[tag=boss11_lomiabattle,distance=..7] run function namespace:main/boss/boss11_lomia/motion/random22

execute if entity @e[tag=boss11_lomia,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11_lomia,tag=body] motion 0
