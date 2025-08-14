scoreboard players add @e[tag=boss22,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ 
execute as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ 
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 
#スライムボディ
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=sbody1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=sarm11,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm12] at @s run teleport @e[tag=sarm12,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=sarm21,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm22] at @s run teleport @e[tag=sarm22,limit=1,tag=boss22] ^ ^ ^2 ~ ~
#動かない装飾
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg1,limit=1,tag=boss22] ^ ^ ^-1.5 ~ ~-30
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg2,limit=1,tag=boss22] ^-5.5 ^-2 ^ ~-30 ~-20
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg3,limit=1,tag=boss22] ^5.5 ^-2 ^ ~30 ~-20



execute if entity @e[tag=boss22,tag=body,scores={motion=1}] as @e[tag=boss22,tag=body] at @s run teleport @e[tag=boss22,tag=body] ~ ~ ~ facing entity @e[tag=boss22battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss22,tag=body,scores={motion=1}] as @e[tag=boss22,tag=body] at @s run teleport @e[tag=boss22,tag=body] ~ ~ ~ ~ 0

execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ ~ ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^ ~30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^ ~-30 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 ~-20 ~
execute if entity @e[tag=boss22,tag=body,scores={motion=1..2}] as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 ~20 ~







execute if entity @e[tag=boss22,tag=body,scores={motion=11..15}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=16..25}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=26..35}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=36..45}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=46..55}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=56..65}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=66..75}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=76..85}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=86..95}] as @e[tag=boss22,tag=body2] at @s run teleport @s ~ ~ ~ ~4.2 ~3

execute if entity @e[tag=boss22,tag=body,scores={motion=11..15}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=16..25}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=26..35}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=36..45}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=46..55}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=56..65}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=66..75}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~3
execute if entity @e[tag=boss22,tag=body,scores={motion=76..85}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~-3
execute if entity @e[tag=boss22,tag=body,scores={motion=86..95}] as @e[tag=boss22,tag=body3] at @s run teleport @s ~ ~ ~ ~4.2 ~3


execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body2] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 4 0.7

execute if entity @e[tag=boss22,tag=body,scores={motion=26..90}] as @e[tag=boss22,tag=body2] at @s run particle minecraft:dripping_lava ~ ~4 ~ 2 2 2 1 10 force
execute if entity @e[tag=boss22,tag=body,scores={motion=26..90}] as @e[tag=boss22,tag=body3] at @s run particle minecraft:dripping_lava ~ ~4 ~ 2 2 2 1 10 force

execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=11}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=21}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=31}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3


execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=41}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=51}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=61}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=71}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=81}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3

execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3
execute if entity @e[tag=boss22,tag=body,scores={motion=91}] as @e[tag=boss22,tag=body3] at @s run function namespace:main/entity_model/boss/boss22/boss22_bullet3



execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22,tag=body3] at @s run teleport @e[tag=boss22_attack3,tag=boss22_first] ^ ^5 ^6 ~ ~-30
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~-90 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~5 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~15 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~20 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-5 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-25 ~
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~15
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35
execute if entity @e[tag=boss22,tag=body] as @e[tag=boss22_attack3,tag=boss22_first,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35




tag @e[tag=boss22_first] remove boss22_first


execute as @e[tag=boss22,tag=body,scores={motion=100..},limit=1] at @s run function namespace:main/boss/boss22/motion/random1

execute if entity @e[tag=boss22,tag=body,scores={motion=100..},limit=1] run scoreboard players set @e[tag=boss22,tag=body] motion 0
