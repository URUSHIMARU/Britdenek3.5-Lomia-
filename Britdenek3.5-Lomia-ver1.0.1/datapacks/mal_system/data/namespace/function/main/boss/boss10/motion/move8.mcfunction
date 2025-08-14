
scoreboard players add @e[tag=boss10,tag=body,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ 
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^
execute as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8
execute as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 

execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss10battle,sort=random,limit=1]
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss10] ~ ~ ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss10] ~ ~1.1 ~ ~ ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=right_arm,limit=1,tag=boss10] ^-1 ^1.6 ^ ~10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body2] at @s run teleport @e[tag=left_arm,limit=1,tag=boss10] ^1 ^1.6 ^ ~-10 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss10] ^-1 ^-1.3 ^0.8 ~45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss10] ^1 ^-1.3 ^0.8 ~-45 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss10] ^-1 ^-1.3 ^-0.8 ~135 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=1..2}] as @e[tag=boss10,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss10] ^1 ^-1.3 ^-0.8 ~-135 ~




execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~-2 ~-1
execute if entity @e[tag=boss10,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~2 ~-1

execute if entity @e[tag=boss10,tag=body,scores={motion=12..60}] as @e[tag=body1,limit=1,tag=boss10] at @s run particle minecraft:block{block_state:"minecraft:oak_leaves"} ~ ~8 ~ 1.7 1 1.7 1 20 force

execute if entity @e[tag=boss10,tag=body,scores={motion=15}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:block.grass.break master @a ~ ~8 ~ 2 0.7
execute if entity @e[tag=boss10,tag=body,scores={motion=25}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:block.grass.break master @a ~ ~8 ~ 2 0.7
execute if entity @e[tag=boss10,tag=body,scores={motion=35}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:block.grass.break master @a ~ ~8 ~ 2 0.7
execute if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:block.grass.break master @a ~ ~8 ~ 2 0.7
execute if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=body1,limit=1,tag=boss10] at @s run playsound minecraft:block.grass.break master @a ~ ~8 ~ 2 0.7

execute if entity @e[tag=boss10,tag=body,scores={motion=12..15}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=12..15}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=12..15}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=16..19}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=16..19}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=16..19}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=22..25}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=22..25}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=22..25}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=26..29}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=26..29}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=26..29}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=32..35}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=36..39}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=36..39}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=36..39}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=42..45}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=42..45}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=42..45}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=46..49}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=46..49}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=46..49}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=52..55}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=52..55}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=52..55}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=56..59}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=56..59}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=56..59}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=62..65}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=62..65}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=62..65}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=66..69}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=66..69}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=66..69}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss10,tag=body,scores={motion=72..75}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=72..75}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss10,tag=body,scores={motion=72..75}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss10,tag=body,scores={motion=76..79}] as @e[tag=left_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=76..79}] as @e[tag=right_arm,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-8
execute if entity @e[tag=boss10,tag=body,scores={motion=76..79}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~-10




execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=boss10,tag=body1] at @s positioned ^ ^8 ^ run teleport @e[tag=boss10_attack22,limit=5,sort=nearest] ~ ~ ~ ~ ~-50
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-35
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-25
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-25 ~

execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] as @e[tag=boss10,tag=body1] at @s positioned ^ ^8 ^ run teleport @e[tag=boss10_attack22,limit=5,sort=nearest] ~ ~ ~ ~180 ~-50
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-35
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-25
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=63}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-25 ~

execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] as @e[tag=boss10,tag=body1] at @s positioned ^ ^8 ^ run teleport @e[tag=boss10_attack22,limit=5,sort=nearest] ~ ~ ~ ~90 ~-50
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-35
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-25
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=53}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-25 ~


execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack6","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=body2,limit=1,tag=boss10] at @s run summon endermite ^ ^8 ^ {Glowing:1b,NoAI:1b,Tags:["bullet","enemy","boss10_attack5","boss10_attack22"],NoGravity:1b,Health:8,Invulnerable:1b,DeathLootTable:"namespace:item/other/none",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],DeathTime:19,Silent:1b}
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] as @e[tag=boss10,tag=body1] at @s positioned ^ ^8 ^ run teleport @e[tag=boss10_attack22,limit=5,sort=nearest] ~ ~ ~ ~270 ~-50
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~35
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-35
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-15 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~25
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-25
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~25 ~
execute if entity @e[tag=boss10,tag=body,scores={motion=73}] at @e[tag=boss10,tag=body] positioned ^ ^8 ^ as @e[distance=..3,tag=boss10_attack22,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-25 ~



execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~-4 ~-10 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=40}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=45}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=50}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=55}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=60}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss10,tag=body,scores={motion=65}] as @e[tag=boss10battle,tag=!bullet,nbt={OnGround:1b},sort=random,limit=2] at @s positioned ~ ~-10 ~-4 run function namespace:main/entity_model/boss/boss10/boss10_bullet4





execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss10,tag=body,scores={motion=43}] as @e[tag=body2,limit=1,tag=boss10] at @s run teleport @s ~ ~ ~ ~ ~6



#
#execute if entity @e[tag=boss10,tag=body] as @e[tag=body1,limit=1,tag=boss10] at @s run particle minecraft:flame ^2.4 ^8 ^0.7 0 0 0 0 3 force
#execute if entity @e[tag=boss10,tag=body] as @e[tag=body1,limit=1,tag=boss10] at @s run particle minecraft:flame ^ ^8 ^ 0 0 0 0 3 force


execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=351..},limit=1] run function namespace:main/boss/boss10/motion/random1
execute as @e[tag=boss10,tag=body,scores={motion=85..,HP=..350},limit=1] run function namespace:main/boss/boss10/motion/random2


#execute if entity @e[tag=boss10,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss10,tag=body] motion 0
