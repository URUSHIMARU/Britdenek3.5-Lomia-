
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion 1

execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-2.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 


#ÉÇÅ[ÉVÉáÉì
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

#execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-180
#execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-90


execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-5 ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~5 ~-36
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~3 ~-33
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-2 ~8
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~-10
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=body1,limit=1,tag=boss7] at @s run particle minecraft:sweep_attack ~ ~-2.1 ~ 1 0.2 1 1 30 force

execute if entity @e[tag=boss7,tag=body,scores={motion=8..10}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~2 ~12
execute if entity @e[tag=boss7,tag=body,scores={motion=8..10}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss7,tag=body,scores={motion=8..10}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss7,tag=body,scores={motion=8..10}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion ^ ^2 ^ 0 0 0 1 3 force
execute if entity @e[tag=boss7,tag=body,scores={motion=8..10}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion ^ ^4 ^ 0 0 0 1 3 force

execute if entity @e[tag=boss7,tag=body,scores={motion=8..12}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^2 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 16
execute if entity @e[tag=boss7,tag=body,scores={motion=8..12}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^4 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 16
execute if entity @e[tag=boss7,tag=body,scores={motion=8..12}] as @e[tag=sword,limit=1,tag=boss7] at @s positioned ^ ^6 ^ as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 16


execute if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=sword,limit=1,tag=boss7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^2 2 0.8
execute if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:explosion_emitter ^ ^3 ^ 1 0 1 1 5 force
execute if entity @e[tag=boss7,tag=body,scores={motion=10}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^3 ^ 1 0.3 1 1 30 force
execute if entity @e[tag=boss7,tag=body,scores={motion=12}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^2 ^ 1 0.3 1 1 30 force
execute if entity @e[tag=boss7,tag=body,scores={motion=12}] as @e[tag=sword,limit=1,tag=boss7] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^4 ^ 1 0.3 1 1 30 force

execute as @e[tag=boss7,tag=body,scores={motion=60..},limit=1] run function namespace:main/boss/boss7/motion/random3

#execute if entity @e[tag=boss7,tag=body,scores={motion=60..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0
