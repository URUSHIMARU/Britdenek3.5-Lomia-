scoreboard players add @e[tag=boss11,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss11,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11] ~ ~0.4 ~
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11] ^ ^1.7 ^0.5
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11] ^ ^1.7 ^0.4
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11] ^1.7 ^1.2 ^0.5 
execute as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11] ^-1.7 ^1.2 ^0.5 
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11] ^1.5 ^ ^0.5
execute as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11] ^-1.5 ^ ^0.5




execute if entity @e[tag=boss11,tag=body,scores={motion=1}] as @e[tag=boss11,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss11battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss11,tag=body,scores={motion=1}] as @e[tag=boss11,tag=body] at @s run teleport @s ~ ~ ~ ~180 0

execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss11] ~ ~0.4 ~ ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=head,limit=1,tag=boss11] ^ ^1.7 ^0.4 ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss11] ^ ^1.7 ^0.5 ~ ~20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss11] ^1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss11] ^-1.7 ^1.2 ^0.5 ~ ~-20
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss11] ^1.5 ^ ^0.5 ~ ~
execute if entity @e[tag=boss11,tag=body,scores={motion=1..2}] as @e[tag=boss11,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss11] ^-1.5 ^ ^0.5 ~ ~





execute if entity @e[tag=boss11,tag=body,scores={motion=12..20}] as @e[tag=body1,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss11,tag=body,scores={motion=12..20}] as @e[tag=body2,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~ ~6

execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] run scoreboard players add @e[tag=boss11,tag=body,scores={motion2=0..},limit=1] motion2 1
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=2..3}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~10 ~50
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=2..3}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~-10 ~50
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=4..5}] as @e[tag=left_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~-10 ~-50
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=4..5}] as @e[tag=right_arm,limit=1,tag=boss11] at @s run teleport @s ~ ~ ~ ~10 ~-50

execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s run summon silverfish ~ ~ ~ {NoAI:1b,Tags:["bullet","enemy","boss11_attack","boss11_attack1"],NoGravity:1b,Health:5,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s run summon silverfish ~ ~ ~ {NoAI:1b,Tags:["bullet","enemy","boss11_attack","boss11_attack1"],NoGravity:1b,Health:5,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s run summon silverfish ~ ~ ~ {NoAI:1b,Tags:["bullet","enemy","boss11_attack","boss11_attack1"],NoGravity:1b,Health:5,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s run teleport @e[tag=boss11_attack1,distance=..2] ~ ~1 ~ ~-180 ~-10
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~12 ~
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~-12 ~
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~22 ~
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~-22 ~
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=5}] as @e[tag=body,limit=1,tag=boss11] at @s as @e[tag=boss11_attack1,distance=..2,limit=2,sort=random] at @s run teleport @s ~ ~ ~ ~ ~-3

execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] run scoreboard players set @e[tag=boss11,tag=body,scores={motion2=5..},limit=1] motion2 1
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] if entity @e[tag=boss11,tag=body,scores={motion2=2}] as @e[tag=body,limit=1,tag=boss11] at @s run playsound minecraft:block.rooted_dirt.place master @a ~ ~ ~ 2 1.4
execute if entity @e[tag=boss11,tag=body,scores={motion=30..80}] as @e[tag=body,limit=1,tag=boss11] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^-1 1.5 1.5 1.5 1 100 force



execute if entity @e[tag=boss11,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11,tag=body] motion2 0
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=150..},limit=1] at @s if entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random11
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=150..},limit=1] at @s unless entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random12
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=..149},limit=1] at @s if entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random21
execute as @e[tag=boss11,tag=body,scores={motion=55..,HP=..149},limit=1] at @s unless entity @e[tag=boss11battle,distance=..7] run function namespace:main/boss/boss11/motion/random22

execute if entity @e[tag=boss11,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss11,tag=body] motion 0
