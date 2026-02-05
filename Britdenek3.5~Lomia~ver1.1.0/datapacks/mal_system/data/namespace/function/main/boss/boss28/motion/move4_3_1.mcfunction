scoreboard players add @e[tag=boss28,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss28,tag=body,scores={motion2=0..},limit=1] motion2 1


execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss28] ~ ~0.65 ~ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss28] ^-0.3 ^-0.2 ^-0.1
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss28] ^0.3 ^-0.2 ^-0.1
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss28] ^-0.2 ^-1.2 ^-0.1
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss28] ^0.2 ^-1.2 ^-0.1
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=parts,limit=1,tag=boss28] ^ ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=1..}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95


execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss28] ~ ~0.65 ~ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss28] ^-0.3 ^-0.2 ^-0.1 ~30 ~20
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss28] ^0.3 ^-0.2 ^-0.1 ~-30 ~20
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss28] ^-0.2 ^-1.2 ^-0.1 ~-3 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss28] ^0.2 ^-1.2 ^-0.1 ~3 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=parts,limit=1,tag=boss28] ^ ^ ^ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~ ~


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~6 ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~-6 ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~90


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.9
execute if entity @e[tag=boss28,tag=body,scores={motion=9..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=10..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=11..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.95
execute if entity @e[tag=boss28,tag=body,scores={motion=12..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.8

execute if entity @e[tag=boss28,tag=body,scores={motion=20..25}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~10 ~1
execute if entity @e[tag=boss28,tag=body,scores={motion=20..25}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~12 ~-8
execute if entity @e[tag=boss28,tag=body,scores={motion=20..70}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~200 ~50

execute if entity @e[tag=boss28,tag=body,scores={motion=70}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss28,tag=body,scores={motion=70}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~-200 ~-50

execute if entity @e[tag=boss28,tag=body,scores={motion=8..25}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^2 ^ run particle minecraft:glow ^ ^ ^ 0.1 0.1 0.1 1 3 force
#execute if entity @e[tag=boss28,tag=body,scores={motion=8..25}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^2 ^ run particle minecraft:flash{color:[1.0,1.0,1.0,0]} ^ ^ ^ 0.1 0.1 0.1 1 3 force

execute if entity @e[tag=boss28,tag=body,scores={motion=25..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run particle minecraft:glow ^ ^ ^ 0.1 0.1 0.1 1 3 force
#execute if entity @e[tag=boss28,tag=body,scores={motion=25..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run particle minecraft:flash{color:[1.0,1.0,1.0,0]} ^ ^ ^ 0.1 0.1 0.1 1 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^3.00 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^2.75 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^2.50 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^2.25 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^2.00 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^1.75 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^1.5 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^1.25 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^1 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^0.75 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^0.5 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^0.25 ^ 0.01 0.01 0.01 0 3 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..45}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle end_rod ^ ^0.0 ^ 0.01 0.01 0.01 0 3 force

execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.3 100 force
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run function namespace:main/entity_model/boss/boss28/boss28_bullet1
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run function namespace:main/entity_model/boss/boss28/boss28_bullet1
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run function namespace:main/entity_model/boss/boss28/boss28_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run function namespace:main/entity_model/boss/boss28/boss28_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run function namespace:main/entity_model/boss/boss28/boss28_bullet1
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run teleport @e[tag=boss28_attack1,distance=..1,limit=5] ~ ~ ~ ~ ~-90
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~-12 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~12 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~-25 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~12
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss28,tag=body,scores={motion=69}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ as @e[tag=boss28_attack1,distance=..1,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-25




execute if entity @e[tag=boss28,tag=body,scores={motion=70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.25 ^ run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 2 1.6


execute if entity @e[tag=boss28,tag=body,scores={motion=80..},limit=1] run scoreboard players remove @e[tag=boss28,tag=body] bossskill2 400

execute as @e[tag=boss28,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss28/motion/random1

execute if entity @e[tag=boss28,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss28,tag=body] motion 0
