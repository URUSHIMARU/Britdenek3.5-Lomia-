scoreboard players set @e[tag=boss2,scores={motion=200..},limit=1] motion 0

tag @e[tag=boss2,scores={motion=0..},limit=1] remove flap1
tag @e[tag=boss2,scores={motion=0..},limit=1] add flap2

scoreboard players add @e[tag=boss2,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss2,scores={motion=5},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ ~ 0


execute as @e[tag=boss2,scores={motion=6..},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s unless block ^ ^ ^3 #namespace:airs_for_mob run teleport @s ^ ^ ^1 ~75 0
execute as @e[tag=boss2,scores={motion=6..},limit=1] at @s run execute as @e[tag=boss2] at @s run execute as @e[tag=boss2] at @s if block ^ ^ ^3 #namespace:airs_for_mob run teleport @s ^ ^ ^1 ~ 0

execute as @e[tag=boss2,scores={motion=50},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=55},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=60},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=65},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=70},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=75},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=80},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=95},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=100},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=105},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=110},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=115},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=120},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=125},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}
execute as @e[tag=boss2,scores={motion=130},limit=1] at @s run summon item ~ ~ ~ {Silent:1b,Age:-32768,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["boss2egg"],Glowing:1b}


#ハード以上のモーション
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=70},limit=1] at @s positioned ^2 ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=70},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=70},limit=1] at @s positioned ^-2 ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=70},limit=1] at @s run execute as @e[tag=boss2shot,limit=3,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=70},limit=1] at @s run execute as @e[tag=boss2shot,limit=3,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~10

execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=110},limit=1] at @s positioned ^0.2 ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=110},limit=1] at @s positioned ^ ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=110},limit=1] at @s positioned ^-0.2 ^ ^2 run function namespace:main/entity_model/boss/boss2/boss2_bullet1
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=110},limit=1] at @s run execute as @e[tag=boss2shot,limit=3,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss2,limit=1]
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2,scores={motion=110},limit=1] at @s run execute as @e[tag=boss2shot,limit=3,sort=nearest,distance=..4] at @s run teleport @s ~ ~ ~ ~180 ~10


execute as @e[tag=boss2,scores={motion=140},limit=1] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,tag=player]
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run execute as @e[tag=boss2] at @s run teleport @s ~ ~ ~ ~ -50
execute as @e[tag=boss2,scores={motion=180},limit=1] at @s run execute as @e[tag=boss2] at @s run function namespace:main/boss/boss2/motion/random
