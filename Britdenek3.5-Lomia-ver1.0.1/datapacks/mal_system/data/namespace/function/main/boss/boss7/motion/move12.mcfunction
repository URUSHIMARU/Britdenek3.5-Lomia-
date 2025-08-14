
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion 1

execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-2.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 


#モーション
execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss7battle]
execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ ~ ~

execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 ~ ~90
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 ~-90 ~-20






execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=body1,limit=1,tag=boss7] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 2 1.1
execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=body1,limit=1,tag=boss7] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.6



execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if entity @e[tag=boss7,tag=body,scores={motion=2..6}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~5 ~-56
execute if entity @e[tag=boss7,tag=body,scores={motion=2..6}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-5 ~-56
execute if entity @e[tag=boss7,tag=body,scores={motion=2..6}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~0 ~-30
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-2 ~8
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~-10

execute if entity @e[tag=boss7,tag=body,scores={motion=7..20}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^2 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=7..20}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^3 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=7..20}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^4 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=7..20}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^5 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=7..20}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^6 ^1 0.3 0.3 0.3 1 10 force

execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^2 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^3 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^4 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^5 ^1 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2} ^ ^6 ^1 0.3 0.3 0.3 1 10 force

execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~12
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion ^ ^2 ^ 0 0 0 1 3 force
execute if entity @e[tag=boss7,tag=body,scores={motion=40..42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion ^ ^4 ^ 0 0 0 1 3 force

execute if entity @e[tag=boss7,tag=body,scores={motion=48..54}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^2 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=48..54}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^4 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=48..54}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^6 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27



execute if entity @e[tag=boss7,tag=body,scores={motion=40}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^2 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^3 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^3 ^ 1 0.3 1 1 30 force
execute if entity @e[tag=boss7,tag=body,scores={motion=42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^2 ^ 1 0.3 1 1 30 force
execute if entity @e[tag=boss7,tag=body,scores={motion=42}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^4 ^ 1 0.3 1 1 30 force


execute if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^5 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^7 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^9 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^11 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=52}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^13 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss7,tag=body,scores={motion=54}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^15 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27



execute if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^5 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^7 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^9 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^11 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=52}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^13 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=54}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^15 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^5 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^7 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^9 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^11 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=52}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^9 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=54}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^11 2 0.8

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^2 ^5 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^4 ^7 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^6 ^9 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^8 ^11 ^ 1 0 1 1 5 force

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^-2 ^5 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^-4 ^7 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^-6 ^9 ^ 1 0 1 1 5 force
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^-8 ^11 ^ 1 0 1 1 5 force


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^2 ^5 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^4 ^7 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^6 ^9 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^8 ^11 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=44}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^-2 ^5 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=46}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^-4 ^7 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=48}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^-6 ^9 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss7,tag=body,scores={motion=50}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^-8 ^11 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 27

execute as @e[tag=boss7,tag=body,scores={motion=60..},limit=1] run function namespace:main/boss/boss7/motion/random3

#execute if entity @e[tag=boss7,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0
