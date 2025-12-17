scoreboard players set @e[tag=boss2,scores={motion=200..},limit=1] motion 0
scoreboard players add @e[tag=boss2,scores={motion=0..},limit=1] motion 1

execute as @e[tag=boss2,scores={motion=50}] at @s run teleport @s ~ ~ ~ facing entity @e[sort=random,limit=1,tag=boss2battle]
execute as @e[tag=boss2,scores={motion=80}] at @s run tag @s remove flap
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob run teleport @s ^ ^ ^2
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob as @e[tag=boss2battle,distance=..4] unless score @s player = @e[tag=boss2,limit=1] player run scoreboard players set @s commandDamage 8
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob run particle minecraft:crit ~ ~ ~ 1 1 1 1 3 force
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3 1

execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob unless block ^ ^ ^3.5 #namespace:airs_for_mob run effect give @e[tag=boss2shot,distance=..6] minecraft:resistance 1 5 true
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob unless block ^ ^ ^3.5 #namespace:airs_for_mob run effect give @s minecraft:resistance 1 5 true
execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob unless block ^ ^ ^3.5 #namespace:airs_for_mob positioned ~ ~100 ~ run function namespace:main/entity_model/bomb_template {power:4}
#execute as @e[tag=boss2,scores={motion=80..}] at @s if block ^ ^ ^1.5 #namespace:airs_for_mob unless block ^ ^ ^3.5 #namespace:airs_for_mob run execute as @e[tag=boss2bomb] at @s run teleport @s ~ ~-500 ~

execute as @e[tag=boss2,scores={motion=80..}] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run tag @s add flap2
execute as @e[tag=boss2,scores={motion=80..}] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run tag @s remove flap1


execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run tag @s add flap1
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run tag @s remove flap2
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run scoreboard players set @s bossmove 5
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run scoreboard players set @s motion 0
