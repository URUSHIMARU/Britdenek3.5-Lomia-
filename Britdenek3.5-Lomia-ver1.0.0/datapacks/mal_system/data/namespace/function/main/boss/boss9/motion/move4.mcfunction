
scoreboard players add @e[tag=boss9,tag=body,scores={motion2=0..},limit=1] motion 1


execute as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.4 ^-1.4 
execute as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 



execute as @e[tag=boss9,tag=left_arm] at @s run teleport @e[tag=left_arm2,limit=1,tag=boss9] ^ ^-2.7 ^2.3 ~ ~22.5


execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss9battle,limit=1,sort=random]
execute if entity @e[tag=boss9,tag=body,scores={motion=1}] as @e[tag=boss9,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss9] ~ ~3 ~ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss9] ^ ^0.7 ^ ~ ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss9] ^-2 ^ ^ ~10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss9] ^2 ^ ^ ~-10 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=1..2}] as @e[tag=boss9,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss9] ^ ^-0.5 ^-1.4 ~ ~





execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=head,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=body1,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~8 ~-6
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-8 ~-6
execute if entity @e[tag=boss9,tag=body,scores={motion=2..10}] as @e[tag=wing,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~3

execute if entity @e[tag=boss9,tag=body,scores={motion=11}] as @e[tag=head,limit=1,tag=boss9] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss9,tag=body,scores={motion=11..30}] as @e[tag=body,tag=boss9] at @s run particle minecraft:end_rod ~ ~4 ~ 1 1 1 0.4 30 force

execute if entity @e[tag=boss9,tag=body,scores={motion=11}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=12}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=13}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=14}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=15}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=16}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=17}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=18}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=19}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=20}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=21}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=22}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=23}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=24}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=25}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=26}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=27}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=28}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=29}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~0.5 ~ 
execute if entity @e[tag=boss9,tag=body,scores={motion=30}] as @e[tag=body,limit=1,tag=boss9] at @s run teleport @s ~ ~-0.5 ~ 

execute if entity @e[tag=boss9,tag=body,scores={motion=28..31}] as @e[tag=body,limit=1,tag=boss9] at @s run particle minecraft:flash ~ ~4 ~ 2 2 2 1 100 force
execute if entity @e[tag=boss9,tag=body,scores={motion=31}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~-40 ~-100
execute if entity @e[tag=boss9,tag=body,scores={motion=31}] as @e[tag=right_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~90 ~80
execute if entity @e[tag=boss9,tag=body,scores={motion=31}] as @e[tag=boss9battle,sort=random,limit=1] at @s run teleport @e[tag=body,tag=boss9] ^ ^30 ^4
execute if entity @e[tag=boss9,tag=body,scores={motion=31}] as @e[tag=body,tag=boss9] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 4 1
execute if entity @e[tag=boss9,tag=body,scores={motion=31..53}] as @e[tag=body,tag=boss9] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss9battle,limit=1,sort=nearest]
execute if entity @e[tag=boss9,tag=body,scores={motion=31..53}] as @e[tag=body,tag=boss9] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss9,tag=body,scores={motion=31..62}] as @e[tag=body,limit=1,tag=boss9] at @s if block ~ ~-1 ~ #namespace:airs_for_mob run teleport @s ~ ~-0.9 ~
execute if entity @e[tag=boss9,tag=body,scores={motion=61}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0
execute if entity @e[tag=boss9,tag=body,scores={motion=61..62}] as @e[tag=left_arm,limit=1,tag=boss9] at @s run teleport @s ~ ~ ~ ~ ~80
execute if entity @e[tag=boss9,tag=body,scores={motion=28..62}] as @e[tag=boss9,tag=left_arm] at @s run particle minecraft:soul ^ ^-2.7 ^2.3 0.3 0.3 0.3 0.4 20 force
execute if entity @e[tag=boss9,tag=body,scores={motion=32..62}] as @e[tag=boss9,tag=left_arm] at @s as @e[tag=boss9battle,distance=..6] unless score @s player = @e[tag=boss9,tag=body,limit=1] player run scoreboard players set @s commandDamage 26
execute if entity @e[tag=boss9,tag=body,scores={motion=52..60}] if score #difficulty difficulty matches 2.. as @e[tag=boss9,tag=left_arm] at @s as @s positioned ^ ^-2.7 ^2.3 run function namespace:main/entity_model/boss/boss9/boss9_bullet1


execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion2 0
execute as @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run function namespace:main/boss/boss9/motion/random1
#execute if entity @e[tag=boss9,tag=body,scores={motion=85..},limit=1] run scoreboard players set @e[tag=boss9,tag=body] motion 0
