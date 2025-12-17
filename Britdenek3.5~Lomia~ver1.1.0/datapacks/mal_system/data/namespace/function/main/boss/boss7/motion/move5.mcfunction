
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion 1

execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-2.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 


execute if entity @e[tag=boss7,tag=body,scores={motion=1}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ ~ ~

execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 ~ ~90
execute if entity @e[tag=boss7,tag=body,scores={motion=1..2}] as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.5 ^0.5 ~-90 ~-20



#ï‡çsÇÃÇΩÇﬂÇÃÇ‚Ç¬
tag @e[tag=boss7,tag=stop] remove stop
execute if entity @e[tag=boss7,tag=body,scores={motion=2..}] as @e[tag=boss7,tag=!weapon] at @s unless block ^-1 ^ ^ #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop
execute if entity @e[tag=boss7,tag=body,scores={motion=2..}] as @e[tag=boss7,tag=!weapon] at @s unless block ^-2 ^ ^ #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop

execute if entity @e[tag=boss7,tag=body,scores={motion=2..18}] as @e[tag=body,tag=boss7,limit=1,tag=!stop] at @s run teleport @s ^-0.5 ^ ^
execute if entity @e[tag=boss7,tag=body,scores={motion=2..11}] as @e[tag=body,tag=boss7,limit=1] at @s run teleport @s ^ ^1.1 ^



execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=body1,limit=1,tag=boss7] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 2 1.1
execute if entity @e[tag=boss7,tag=body,scores={motion=2}] as @e[tag=body1,limit=1,tag=boss7] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.6

execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=body1,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-4 ~-2
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-5 ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~5 ~-6
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=sword,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~3 ~-3
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-8 ~8
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~-6 ~-10
execute if entity @e[tag=boss7,tag=body,scores={motion=2..5}] as @e[tag=body1,limit=1,tag=boss7] at @s run particle minecraft:sweep_attack ~ ~-2.1 ~ 1 0.2 1 1 30 force



execute as @e[tag=boss7,tag=body,scores={motion=24..},limit=1] run function namespace:main/boss/boss7/motion/random3

#execute if entity @e[tag=boss7,tag=body,scores={motion=24..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0
