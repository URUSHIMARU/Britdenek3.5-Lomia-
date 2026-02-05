scoreboard players add @e[tag=boss27,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss27,tag=body,scores={motion2=0..},limit=1] motion2 1



execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~


execute if entity @e[tag=boss27,tag=body,scores={motion=10..13}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss27,tag=body,scores={motion=10..13}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss27,tag=body,scores={motion=20}] as @e[tag=boss27,tag=body] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 0.5

execute if entity @e[tag=boss27,tag=body,scores={motion=20}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=20}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=22}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=22}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=24}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=24}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=26}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=26}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=28}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=28}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=30}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=30}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=32}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=32}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=34}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=34}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=36}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=36}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~-0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=38}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss27,tag=body,scores={motion=38}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~0.2 ~ ~ ~

execute if entity @e[tag=boss27,tag=body,scores={motion=20..40}] as @e[tag=boss27,tag=body] at @s run particle flame ~ ~1 ~ 1 1 1 0.5 10 force

execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^ ^1 ^2 run function namespace:main/entity_model/boss/boss27/boss27_bullet2
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^ ^1 ^-2 run function namespace:main/entity_model/boss/boss27/boss27_bullet2
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^2 ^1 ^ run function namespace:main/entity_model/boss/boss27/boss27_bullet2
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^-2 ^1 ^ run function namespace:main/entity_model/boss/boss27/boss27_bullet2
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s as @e[tag=boss27_attack2,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27,tag=body,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s as @e[tag=boss27_attack2,distance=..10] at @s run teleport @s ~ ~ ~ ~180 0

execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^2 ^1 ^2 run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^2 ^1 ^-2 run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^-2 ^1 ^2 run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s positioned ^-2 ^1 ^-2 run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s as @e[tag=boss27_attack3,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27,tag=body,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27,tag=body] at @s as @e[tag=boss27_attack3,distance=..10] at @s run teleport @s ~ ~ ~ ~180 0


execute if entity @e[tag=boss27,tag=body,scores={motion=41}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-45 ~-15
execute if entity @e[tag=boss27,tag=body,scores={motion=41}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~45 ~-15


execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27_attack2] run effect give @s glowing infinite 1 true
execute if entity @e[tag=boss27,tag=body,scores={motion=40}] as @e[tag=boss27_attack3] run effect give @s glowing infinite 1 true
execute if entity @e[tag=boss27,tag=body,scores={motion=45},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.7}
execute if entity @e[tag=boss27,tag=body,scores={motion=46},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.0}
execute if entity @e[tag=boss27,tag=body,scores={motion=47},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.3}
execute if entity @e[tag=boss27,tag=body,scores={motion=48},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.6}
execute if entity @e[tag=boss27,tag=body,scores={motion=49},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.9}
execute if entity @e[tag=boss27,tag=body,scores={motion=50},distance=..100] as @e[tag=boss27_attack2,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.2}

execute if entity @e[tag=boss27,tag=body,scores={motion=45},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.7}
execute if entity @e[tag=boss27,tag=body,scores={motion=46},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.0}
execute if entity @e[tag=boss27,tag=body,scores={motion=47},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.3}
execute if entity @e[tag=boss27,tag=body,scores={motion=48},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.6}
execute if entity @e[tag=boss27,tag=body,scores={motion=49},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.9}
execute if entity @e[tag=boss27,tag=body,scores={motion=50},distance=..100] as @e[tag=boss27_attack3,limit=4,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.2}


execute if entity @e[tag=boss27,tag=body,scores={motion=80..82}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~35 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=80..82}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~-35 ~

execute if entity @e[tag=boss27,tag=body,scores={motion=83}] as @e[tag=boss27,tag=arm1] at @s run particle explosion ~ ~1 ~ 1 1 1 1 30 force
execute if entity @e[tag=boss27,tag=body,scores={motion=83}] as @e[tag=boss27,tag=arm1] at @s run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 1.5
execute if entity @e[tag=boss27,tag=body,scores={motion=83}] as @e[tag=boss27,tag=arm1] at @s run particle flash{color:[1.0,1.0,1.0,0]} ^ ^ ^1.5 0 0 0 1 3 force
execute if entity @e[tag=boss27,tag=body,scores={motion=83}] as @e[tag=boss27,tag=arm2] at @s run particle flash{color:[1.0,1.0,1.0,0]} ^ ^ ^1.5 0 0 0 1 3 force


execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 15 force
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 15 force
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~1 ~ 1.5 0.5
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run scoreboard players set @e[tag=boss27battle,distance=..5] commandDamage 20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run scoreboard players set @e[tag=boss27battle,distance=..5] commandDamage 1025
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run kill @s
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s run teleport @s ^ ^ ^1
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack2] at @s run teleport @e[tag=boss27battle,distance=..3] ~ ~ ~

execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 15 force
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 15 force
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~1 ~ 1.5 0.5
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 1025
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run kill @s
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s run teleport @s ^ ^ ^1
execute if entity @e[tag=boss27,tag=body,scores={motion=84..}] as @e[tag=boss27_attack3] at @s run teleport @e[tag=boss27battle,distance=..3] ~ ~ ~




execute if entity @e[tag=boss27,tag=body,scores={motion=130..},limit=1] run kill @e[tag=boss27_attack2]
execute if entity @e[tag=boss27,tag=body,scores={motion=130..},limit=1] run kill @e[tag=boss27_attack3]

execute as @e[tag=boss27,tag=body,scores={motion=130..},limit=1] at @s run function namespace:main/boss/boss27/motion/random1

execute if entity @e[tag=boss27,tag=body,scores={motion=130..},limit=1] run scoreboard players set @e[tag=boss27,tag=body] motion 0
