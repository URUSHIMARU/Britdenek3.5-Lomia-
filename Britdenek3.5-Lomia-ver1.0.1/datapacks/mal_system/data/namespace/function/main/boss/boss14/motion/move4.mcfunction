scoreboard players add @e[tag=boss14,tag=body,scores={motion=0..},limit=1] motion 1


#ボディパーツ転送
execute if entity @e[tag=boss14,tag=body,scores={motion=1}] as @e[tag=body,tag=boss14] at @s positioned ~ ~-20 ~ run tp @e[tag=boss14,tag=!body] ~ ~ ~

#execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss14] ~ ~ ~ 
execute as @e[tag=boss14,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body3] at @s run teleport @e[tag=body4,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head1,limit=1,tag=boss14] ^ ^0.25 ^4
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head2,limit=1,tag=boss14] ^ ^ ^4


execute as @e[tag=boss14,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail2] at @s run teleport @e[tag=tail3,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail3] at @s run teleport @e[tag=tail4,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail4] at @s run teleport @e[tag=tail5,limit=1,tag=boss14] ^ ^ ^2.8

execute as @e[tag=boss14,tag=body] at @s run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~0.2 ~ 2 0.5 2 1 30 force

execute if entity @e[tag=boss14,scores={motion=1}] as @e[tag=boss14,tag=body] at @s positioned ~ ~-10 ~ run function namespace:main/entity_model/boss/boss14/boss14_bullet1

execute if entity @e[tag=boss14,scores={motion=1}] as @e[tag=boss14_attack1] at @s run teleport @s ~ ~10 ~

execute if entity @e[tag=boss14,scores={motion=1}] run scoreboard players operation @e[tag=boss14_attack1,limit=1] player = @e[tag=boss14,tag=body1] player


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=boss14_attack2,limit=3,sort=nearest,distance=..1] ~ ~ ~ ~ ~-60
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~35 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~55 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~-35 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~55 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~25
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=30}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~25

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=boss14_attack2,limit=3,sort=nearest,distance=..1] ~ ~ ~ ~ ~-60
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~10 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~20 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~20 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=60}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~20

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90,HP=..150}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run function namespace:main/entity_model/boss/boss14/boss14_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=boss14_attack2,limit=3,sort=nearest,distance=..1] ~ ~ ~ ~ ~-60
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~20 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~35 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~35 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~15
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,scores={motion=90}] as @e[tag=boss14,tag=body] at @s run execute as @e[tag=boss14_attack2,limit=1,sort=random,distance=..1] at @s run teleport @s ~ ~ ~ ~ ~15






execute as @e[tag=boss14,tag=body] at @s run playsound minecraft:entity.polar_bear.step master @a ~ ~ ~ 2 0

execute if entity @e[tag=boss14,scores={motion=100}] as @e[tag=boss14_attack1] at @s run teleport @s ~ ~-300 ~
execute if entity @e[tag=boss14,scores={motion=100}] run kill @e[tag=boss14_attack1]

execute as @e[tag=boss14,tag=body] at @s run teleport @s @e[tag=boss14_attack1,limit=1]

execute as @e[tag=boss14,tag=body,scores={motion=120..,HP=151..},limit=1] at @s run function namespace:main/boss/boss14/motion/random1
execute as @e[tag=boss14,tag=body,scores={motion=120..,HP=..150},limit=1] at @s run function namespace:main/boss/boss14/motion/random2

execute if entity @e[tag=boss14,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss14,tag=body] motion 0



