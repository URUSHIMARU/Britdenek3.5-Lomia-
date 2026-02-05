scoreboard players add @e[tag=boss28,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss28,tag=body,scores={motion2=0..},limit=1] motion2 1




execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute if entity @e[tag=boss28,tag=body,scores={motion=1..2}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss28,tag=body,scores={motion=19..20}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute if entity @e[tag=boss28,tag=body,scores={motion=19..20}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss28,tag=body,scores={motion=20}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.horse.jump master @a ~ ~ ~ 1 1.1
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run particle sweep_attack ~ ~0.1 ~ 1 0.2 1 1 10 force
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~

execute if entity @e[tag=boss28,tag=body,scores={motion=24..25}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute if entity @e[tag=boss28,tag=body,scores={motion=24..25}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss28,tag=body,scores={motion=24}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.horse.jump master @a ~ ~ ~ 1 1.1
execute if entity @e[tag=boss28,tag=body,scores={motion=24..25}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run particle sweep_attack ~ ~0.1 ~ 1 0.2 1 1 10 force
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.5 ~ ~


execute if entity @e[tag=boss28,tag=body,scores={motion=1..49}] as @e[tag=boss28,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss28] ~ ~0.65 ~ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=50..100}] as @e[tag=boss28,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss28] ~ ~0.65 ~
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

execute if entity @e[tag=boss28,tag=body,scores={motion=40}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^1.5 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.5 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.0 ^ 0.2 0.2 0.2 0.02 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40..80}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.5 ^ 0.2 0.2 0.2 0.02 1 force


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~-12 ~3
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~2 ~3
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~20 ~90
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~2 ~-3
execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~-2 ~3


execute if entity @e[tag=boss28,tag=body,scores={motion=8..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.9
execute if entity @e[tag=boss28,tag=body,scores={motion=9..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=10..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=11..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.95
execute if entity @e[tag=boss28,tag=body,scores={motion=12..13}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.8

execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~14
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-14

execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-14
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~14

execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss28] ~ ~0.65 ~ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss28] ^-0.3 ^-0.2 ^-0.1 ~-42 ~38
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss28] ^0.3 ^-0.2 ^-0.1 ~-18 ~38
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss28] ^-0.2 ^-1.2 ^-0.1 ~-3 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss28] ^0.2 ^-1.2 ^-0.1 ~3 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=body1] at @s run teleport @e[tag=parts,limit=1,tag=boss28] ^ ^ ^ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=25..26}] as @e[tag=boss28,tag=arm1] at @s run teleport @e[tag=weapon,limit=1,tag=boss28] ^0.05 ^-0.1 ^0.95 ~20 ~90


execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~14
execute if entity @e[tag=boss28,tag=body,scores={motion=20..21}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-14

execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.25 ~ ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=body] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.25 ~ ~


execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~40 ~

execute if entity @e[tag=boss28,tag=body,scores={motion=50..54}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss28,tag=body,scores={motion=50..54}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=55..64}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss28,tag=body,scores={motion=55..64}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss28,tag=body,scores={motion=65..69}] as @e[tag=boss28,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss28,tag=body,scores={motion=65..69}] as @e[tag=boss28,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2

execute if entity @e[tag=boss28,tag=body,scores={motion=50..55}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.9
execute if entity @e[tag=boss28,tag=body,scores={motion=51..55}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=52..55}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=53..55}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.95
execute if entity @e[tag=boss28,tag=body,scores={motion=54..55}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.8

execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^2.5 ^ 0.2 0.2 0.2 0.2 50 force
execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=body] at @s anchored eyes run particle sweep_attack ^ ^1 ^ 1 1 1 0.2 10 force
execute if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run scoreboard players set @e[tag=boss28battle,distance=..4] commandDamage 15
execute if entity @e[tag=boss28,tag=body,scores={motion=50}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=50}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0.5
execute if entity @e[tag=boss28,tag=body,scores={motion=55}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=55}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0.5
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0.5
execute if entity @e[tag=boss28,tag=body,scores={motion=65}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss28,tag=body,scores={motion=65}] as @e[tag=boss28,tag=body] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0.5
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^5 ^ run scoreboard players set @e[tag=boss28battle,distance=..2.2] commandDamage 15
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^5 ^ 0.2 0.2 0.2 0.2 50 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes positioned ^ ^3.75 ^ run scoreboard players set @e[tag=boss28battle,distance=..2.2] commandDamage 15
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=50..70}] as @e[tag=boss28,tag=weapon] at @s anchored eyes run particle flame ^ ^3.75 ^ 0.2 0.2 0.2 0.2 50 force


execute if entity @e[tag=boss28,tag=body,scores={motion=71..90}] as @e[tag=boss28,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss28,tag=body,scores={motion=71..90}] as @e[tag=boss28,tag=arm1] at @s run teleport @s ~ ~ ~ ~2 ~1
execute if entity @e[tag=boss28,tag=body,scores={motion=71..90}] as @e[tag=boss28,tag=arm2] at @s run teleport @s ~ ~ ~ ~-1 ~1



execute if entity @e[tag=boss28,tag=body,scores={motion=100..},limit=1] run scoreboard players remove @e[tag=boss28,tag=body] bossskill2 250
execute as @e[tag=boss28,tag=body,scores={motion=100..},limit=1] at @s run function namespace:main/boss/boss28/motion/random1

execute if entity @e[tag=boss28,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss28,tag=body] motion 0
