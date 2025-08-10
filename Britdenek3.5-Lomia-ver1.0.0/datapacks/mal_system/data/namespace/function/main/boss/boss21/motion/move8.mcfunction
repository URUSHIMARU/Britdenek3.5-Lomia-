scoreboard players add @e[tag=boss21,tag=body,scores={motion=0..},limit=1] motion 1

#重力
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss21,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.1 ~

execute as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^
execute as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^

execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss21battle,limit=1,sort=nearest]
execute if entity @e[tag=boss21,tag=body,scores={motion=1}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss21] ~ ~1.2 ~ ~ ~
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss21] ^0.16 ^-0.05 ^ ~ ~90
execute if entity @e[tag=boss21,tag=body,scores={motion=1..2}] as @e[tag=boss21,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss21] ^-0.16 ^-0.05 ^ ~ ~90


execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=4}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1182

execute if entity @e[tag=boss21,tag=body,scores={motion=30}] as @e[tag=boss21,limit=1,tag=body] at @s run particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 8 force
execute if entity @e[tag=boss21,tag=body,scores={motion=30}] as @e[tag=boss21,limit=1,tag=body] at @s run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss21,tag=body,scores={motion=30..31}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~10 ~-20
execute if entity @e[tag=boss21,tag=body,scores={motion=30..31}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-10 ~-20



execute if entity @e[tag=boss21,tag=body,scores={motion=30..36}] as @e[tag=boss21,tag=body] at @s if block ^ ^ ^-0.8 #namespace:airs_for_mob run teleport @s ^ ^ ^-0.8
execute if entity @e[tag=boss21,tag=body,scores={motion=30..36}] as @e[tag=boss21,tag=body] at @s run teleport @s ~ ~1.4 ~


execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if score 難易度 difficulty matches 2.. if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run function namespace:main/entity_model/boss/boss21/boss21_bullet1
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=12,sort=nearest,distance=..0.3] @s
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~5 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~-5 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~15 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~10 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~20 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=3,sort=random,distance=..0.3] ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=5,sort=random,distance=..0.3] ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=5,sort=random,distance=..0.3] ~ ~ ~ ~ ~-15
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=5,sort=random,distance=..0.3] ~ ~ ~ ~ ~-25
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~25 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~-25 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~7 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~30 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~-30 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~35 ~
execute if entity @e[tag=boss21,tag=body,scores={motion=30..35}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @e[tag=boss21_attack1,limit=2,sort=random,distance=..0.3] ~ ~ ~ ~-35 ~






execute if entity @e[tag=boss21,tag=body,scores={motion=40..41}] as @e[tag=arm1,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~-10 ~20
execute if entity @e[tag=boss21,tag=body,scores={motion=40..41}] as @e[tag=arm2,limit=1,tag=boss21] at @s run teleport @s ~ ~ ~ ~10 ~20

execute if entity @e[tag=boss21,tag=body,scores={motion=45}] as @e[tag=boss21,tag=arm1] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1178

execute as @e[tag=boss21,tag=body,scores={motion=50..},limit=1] at @s run function namespace:main/boss/boss21/motion/random1
execute if entity @e[tag=boss21,tag=body,scores={motion=50..},limit=1] run scoreboard players set @e[tag=boss21,tag=body] motion 0

