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


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~-8 ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~8 ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~90
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.5 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.5 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=8..60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.5 ^ 0.2 0.2 0.2 0.02 1 force


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.9
execute if entity @e[tag=boss28,tag=body,scores={motion=9..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=10..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=11..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.95
execute if entity @e[tag=boss28,tag=body,scores={motion=12..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.8

execute if entity @e[tag=boss28,tag=body,scores={motion=17..22}] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~-7.5 ~

execute if entity @e[tag=boss28,tag=body,scores={motion=20..22}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=20..22}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=29}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=29..30}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=29..30}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=20..30}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~90



execute if entity @e[tag=boss28,tag=body,scores={motion=32..37}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.7
execute if entity @e[tag=boss28,tag=body,scores={motion=33..37}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.65
execute if entity @e[tag=boss28,tag=body,scores={motion=34..37}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=35..37}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=36..37}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.80

execute if entity @e[tag=boss28,tag=body,scores={motion=29..34}] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~15 ~

execute if entity @e[tag=boss28,tag=body,scores={motion=32..34}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=32..34}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=41}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=41..42}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=41..42}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=32..42}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~90


execute if entity @e[tag=boss28,tag=body,scores={motion=45..50}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.7
execute if entity @e[tag=boss28,tag=body,scores={motion=46..50}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.65
execute if entity @e[tag=boss28,tag=body,scores={motion=47..50}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=48..50}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=49..50}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.80

execute if entity @e[tag=boss28,tag=body,scores={motion=42..47}] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~-7.5 ~

execute if entity @e[tag=boss28,tag=body,scores={motion=45..47}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=45..47}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=59}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=59..60}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=59..60}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~45
execute if entity @e[tag=boss28,tag=body,scores={motion=45..58}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~-30
execute if entity @e[tag=boss28,tag=body,scores={motion=59..60}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~30 ~90

execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.0 ^ 0.2 0.2 0.2 0.3 25 force
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.5 ^ 0.2 0.2 0.2 0.3 25 force
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.0 ^ 0.2 0.2 0.2 0.3 25 force
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.5 ^ 0.2 0.2 0.2 0.3 25 force
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.0 ^ 0.2 0.2 0.2 0.3 25 force
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.5 ^ 0.2 0.2 0.2 0.3 25 force

execute as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^ ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^ ^1.5 ^2 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^ ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^ ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^ ^1.5 ^3.5 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^ ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^ ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^ ^1.5 ^5.0 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^ ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^ ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^ ^1.5 ^6.5 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^ ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^ ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^ ^1.5 ^8 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^ ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^ ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^ ^1.5 ^9.5 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^ ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^ ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^ ^1.5 ^11 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^ ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^ ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^ ^1.5 ^12.5 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^ ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^ ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^ ^1.5 ^14 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.5
execute as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^ ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12



execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^1.5 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^1.5 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^1.5 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^1.5 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^1.5 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^1.5 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^1.5 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^1.5 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^1.5 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^1.5 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^1.5 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^1.5 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^1.5 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^1.5 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^1.5 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^1.5 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^1.5 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^1.5 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^3 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^3 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^3 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^3 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^3 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^3 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^3 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^3 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^3 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^3 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^3 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^3 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^3 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^3 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^3 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^3 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^3 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^3 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^4.5 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^4.5 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^4.5 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^4.5 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^4.5 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^4.5 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^4.5 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^4.5 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^4.5 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^4.5 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^4.5 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^4.5 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^4.5 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^4.5 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^4.5 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^4.5 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^4.5 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^4.5 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12



execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-1.5 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-1.5 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-1.5 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-1.5 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-1.5 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-1.5 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-1.5 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-1.5 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-1.5 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-1.5 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-1.5 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-1.5 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-1.5 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-1.5 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-1.5 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-1.5 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-1.5 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-1.5 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-3 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-3 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-3 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-3 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-3 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-3 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-3 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-3 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-3 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-3 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-3 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-3 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-3 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-3 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-3 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-3 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-3 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-3 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-4.5 ^1.5 ^2 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=61}] at @s positioned ^-4.5 ^1.5 ^2 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-4.5 ^1.5 ^3.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=62}] at @s positioned ^-4.5 ^1.5 ^3.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-4.5 ^1.5 ^5.0 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=63}] at @s positioned ^-4.5 ^1.5 ^5.0 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-4.5 ^1.5 ^6.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=64}] at @s positioned ^-4.5 ^1.5 ^6.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-4.5 ^1.5 ^8 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=65}] at @s positioned ^-4.5 ^1.5 ^8 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-4.5 ^1.5 ^9.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=66}] at @s positioned ^-4.5 ^1.5 ^9.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-4.5 ^1.5 ^11 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=67}] at @s positioned ^-4.5 ^1.5 ^11 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-4.5 ^1.5 ^12.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=68}] at @s positioned ^-4.5 ^1.5 ^12.5 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-4.5 ^1.5 ^14 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.5 20 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28,tag=body,scores={motion=69}] at @s positioned ^-4.5 ^1.5 ^14 run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 12

execute if entity @e[tag=boss28,tag=body,scores={motion=80..},limit=1] run scoreboard players remove @e[tag=boss28,tag=body] bossskill2 150

execute as @e[tag=boss28,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss28/motion/random1

execute if entity @e[tag=boss28,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss28,tag=body] motion 0
