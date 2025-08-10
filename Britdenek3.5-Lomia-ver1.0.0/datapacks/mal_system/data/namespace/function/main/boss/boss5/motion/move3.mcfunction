#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] @s 
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.75 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~ ~



#ñÑñvñhé~
tag @e[tag=boss5,tag=lock] remove lock
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5] at @s positioned ~ ~1 ~ unless block ^ ^ ^-1 #namespace:airs_for_mob run tag @e[tag=boss5,tag=body,limit=1] add lock
execute if entity @e[tag=boss5,tag=body,scores={motion=21..100}] as @e[tag=boss5] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 #namespace:airs_for_mob run tag @e[tag=boss5,tag=body,limit=1] add lock



#ÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body] at @s unless entity @s[tag=lock] run teleport @s ^ ^ ^-0.1 facing entity @e[limit=1,tag=boss5battle]
execute if entity @e[tag=boss5,tag=body,scores={motion=1..20}] as @e[tag=boss5,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss5,tag=body,scores={motion=21..100}] as @e[tag=boss5,tag=body] at @s unless entity @s[tag=lock] run teleport @s ^ ^ ^0.9 facing entity @e[limit=1,tag=boss5target1]


execute if entity @e[tag=boss5,tag=body,scores={motion=20}] as @e[tag=boss5battle,limit=1,sort=random] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["boss5target1"],Marker:1b,Invisible:1b}

execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~70 ~90
execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~-70 ~90
execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~-10 ~
execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~10 ~

execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body] at @s if entity @e[tag=boss5target1,type=minecraft:armor_stand,distance=..1] run scoreboard players set @e[tag=boss5,tag=body,limit=1] motion 100
execute if entity @e[tag=boss5,tag=body,scores={motion=5..100}] as @e[tag=boss5,tag=body] at @s run scoreboard players set @e[tag=boss5,tag=body,limit=1,tag=lock] motion 100



execute if entity @e[tag=boss5,tag=body,scores={motion=100..101}] as @e[tag=boss5,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 40 force
execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 run execute if entity @e[tag=boss5battle,distance=..2.5] run scoreboard players add @e[tag=boss5,tag=body,scores={HP=..390}] HP 10
execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 run execute if entity @e[tag=boss5battle,distance=..2.5] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.4 0.4 1 30 force
execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 run execute as @e[tag=boss5,tag=body] at @s store result bossbar minecraft:boss5 value run scoreboard players get @s HP

execute if entity @e[tag=boss5,tag=body,scores={motion=101}] as @e[tag=boss5,tag=body] at @s positioned ^ ^ ^2 as @e[tag=boss5battle,distance=..2.5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run scoreboard players set @s commandDamage 14

execute if entity @e[tag=boss5,tag=body,scores={motion=101..120}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~-110 ~90
execute if entity @e[tag=boss5,tag=body,scores={motion=101..120}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~110 ~90

execute if entity @e[tag=boss5,tag=body,scores={motion=101..},limit=1] run kill @e[tag=boss5target1,type=minecraft:armor_stand] 
#execute if entity @e[tag=boss5,tag=body,scores={motion=141..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0
execute if entity @e[tag=boss5,tag=body,scores={motion=141..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 1



