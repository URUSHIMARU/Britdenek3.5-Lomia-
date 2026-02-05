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

execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=!weapon] at @s run data merge entity @s {Invulnerable:1b}
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^1 ^ ^ #namespace:airs_for_mob if block ^1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^1 ^ ^ #namespace:airs_for_mob if block ^1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^1 ^ ^ #namespace:airs_for_mob if block ^1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^1 ^ ^ #namespace:airs_for_mob if block ^1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^1 ^ ^ #namespace:airs_for_mob if block ^1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^-1 ^ ^ #namespace:airs_for_mob if block ^-1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^-1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^-1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^-1 ^ ^ #namespace:airs_for_mob if block ^-1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^-1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^-1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^-1 ^ ^ #namespace:airs_for_mob if block ^-1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^-1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^-1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^-1 ^ ^ #namespace:airs_for_mob if block ^-1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^-1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^-1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^-1 ^ ^ #namespace:airs_for_mob if block ^-1 ^1 ^ #namespace:airs_for_mob as @e[tag=boss28] if block ^-1 ^2 ^ #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^-1 ^ ^
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=60}] as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..4] if block ^ ^ ^-1 #namespace:airs_for_mob if block ^ ^1 ^-1 #namespace:airs_for_mob as @e[tag=boss28] if block ^ ^2 ^-1 #namespace:airs_for_mob as @e[tag=boss28] as @e[tag=boss28] at @s run teleport @s ^ ^ ^-1
execute if entity @e[tag=boss28,tag=body,scores={motion=61}] as @e[tag=boss28,tag=!weapon] at @s run data merge entity @s {Invulnerable:0b}


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

execute if entity @e[tag=boss28,tag=body,scores={motion=17..22}] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~-7.5 ~



execute if entity @e[tag=boss28,tag=body,scores={motion=20..25}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.7
execute if entity @e[tag=boss28,tag=body,scores={motion=21..25}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.65
execute if entity @e[tag=boss28,tag=body,scores={motion=22..25}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.75
execute if entity @e[tag=boss28,tag=body,scores={motion=23..25}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.85
execute if entity @e[tag=boss28,tag=body,scores={motion=24..25}] as @e[tag=boss28,tag=weapon] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 2 1.80

execute if entity @e[tag=boss28,tag=body,scores={motion=20..60},tag=!boss28Stop] as @e[tag=boss28] at @s run teleport @s ~ ~ ~ ~23 ~

execute if entity @e[tag=boss28,tag=body,scores={motion=40..60}] at @e[tag=boss28] run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 1 force
execute if entity @e[tag=boss28,tag=body,scores={motion=50..60}] at @e[tag=boss28] run particle sweep_attack ~ ~0.25 ~ 1 1 1 1 2 force
execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle sweep_attack ~ ~0.5 ~ 1.5 1.5 1.5 1 4 force
execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle sweep_attack ~ ~1 ~ 1.7 1.5 1.7 1 4 force
execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle sweep_attack ~ ~2 ~ 1.7 1.5 1.7 1 4 force
execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle sweep_attack ~ ~3 ~ 1.7 1.5 1.7 1 6 force
execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle sweep_attack ~ ~4 ~ 1.7 1.5 1.7 1 8 force
execute if entity @e[tag=boss28,tag=body,scores={motion=54..58}] at @e[tag=boss28,tag=body] run function namespace:main/entity_model/boss/boss28/boss28_bullet3
execute if entity @e[tag=boss28,tag=body,scores={motion=54}] at @e[tag=boss28,tag=body] run teleport @e[tag=boss28_first,tag=boss28_attack3,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss28,tag=body,scores={motion=55}] at @e[tag=boss28,tag=body] run teleport @e[tag=boss28_first,tag=boss28_attack3,limit=1] ~ ~ ~ ~72 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=56}] at @e[tag=boss28,tag=body] run teleport @e[tag=boss28_first,tag=boss28_attack3,limit=1] ~ ~ ~ ~144 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=57}] at @e[tag=boss28,tag=body] run teleport @e[tag=boss28_first,tag=boss28_attack3,limit=1] ~ ~ ~ ~216 ~
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss28,tag=body,scores={motion=58}] at @e[tag=boss28,tag=body] run teleport @e[tag=boss28_first,tag=boss28_attack3,limit=1] ~ ~ ~ ~288 ~
execute if entity @e[tag=boss28,tag=body,scores={motion=54..58}] at @e[tag=boss28,tag=body] run tag @e[tag=boss28_first,tag=boss28_attack3,limit=1] remove boss28_first

execute if entity @e[tag=boss28,tag=body,scores={motion=55..60}] at @e[tag=boss28] run particle flame ~ ~4 ~ 0.5 0.5 0.5 0.3 4 force
execute if entity @e[tag=boss28,tag=body,scores={motion=58..62}] at @e[tag=boss28] run particle minecraft:flash{color:[1.0,1.0,0.9,0]} ~ ~1 ~ 0.5 1 0.5 1 300 force
execute if entity @e[tag=boss28,tag=body,scores={motion=40}] at @e[tag=boss28] run playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 2 0.5

execute if entity @e[tag=boss28,tag=body,scores={motion=40..60}] as @e[tag=boss28,tag=body] at @s positioned ^-70 ^ ^25 if entity @e[tag=boss28battle,distance=..75] at @s positioned ^70 ^ ^25 if entity @e[tag=boss28battle,distance=..75] run tag @e[tag=boss28,tag=body] add boss28Stop
execute if entity @e[tag=boss28,tag=body,scores={motion=61}] run tag @e[tag=boss28,tag=body] remove boss28Stop

#execute as @e[tag=boss28,tag=body,scores={motion=70..},limit=1] at @s run function namespace:main/boss/boss28/motion/random1

execute if entity @e[tag=boss28,tag=body,scores={motion=70..},limit=1] run scoreboard players set @e[tag=boss28,tag=body] bossmove 51
execute if entity @e[tag=boss28,tag=body,scores={motion=70..},limit=1] run scoreboard players set @e[tag=boss28,tag=body] motion 0
