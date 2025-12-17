scoreboard players add @e[tag=boss27,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss27,tag=body,scores={motion2=0..},limit=1] motion2 1



execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~


execute if entity @e[tag=boss27,tag=body,scores={motion=10..13}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~15 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=10..13}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~-15 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=13}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27battle,limit=1,sort=random,distance=..90] run function namespace:main/boss/boss27/motion/move6_sub
execute if entity @e[tag=boss27,tag=body,scores={motion=33}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=33}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=33}] as @e[tag=boss27,tag=body] at @s run particle flash{color:[1.0,1.0,1.0,0]} ^ ^2 ^1 1 1 1 1 30 force


execute if entity @e[tag=boss27,tag=body,scores={motion=35..38}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~30 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=35..38}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~-30 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=38}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27battle,limit=1,sort=random,distance=..90] run function namespace:main/boss/boss27/motion/move6_sub
execute if entity @e[tag=boss27,tag=body,scores={motion=68}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=68}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=68}] as @e[tag=boss27,tag=body] at @s run particle flash{color:[1.0,1.0,1.0,0]} ^ ^2 ^1 1 1 1 1 30 force


execute if entity @e[tag=boss27,tag=body,scores={motion=70..73}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~30 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=70..73}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~-30 ~-2
execute if entity @e[tag=boss27,tag=body,scores={motion=73}] as @e[tag=boss27,tag=arm1] at @s as @e[tag=boss27battle,limit=1,sort=random,distance=..90] run function namespace:main/boss/boss27/motion/move6_sub
execute if entity @e[tag=boss27,tag=body,scores={motion=103}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~-120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=103}] as @e[tag=boss27,tag=arm2] at @s run teleport @s ~ ~ ~ ~120 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=103}] as @e[tag=boss27,tag=body] at @s run particle flash{color:[1.0,1.0,1.0,0]} ^ ^2 ^1 1 1 1 1 30 force


#execute if entity @e[tag=boss27,tag=body,scores={motion=13}] as @e[tag=boss27,tag=arm1] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet3
#execute if entity @e[tag=boss27,tag=body,scores={motion=13..14}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^ ^3 ~ ~45


scoreboard players add @e[tag=boss27_attack2] bossskill1 1
scoreboard players add @e[tag=boss27_attack3] bossskill1 1
execute if entity @e[tag=boss27_attack2,scores={bossskill1=25},distance=..100] as @e[tag=boss27_attack2,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.7}
execute if entity @e[tag=boss27_attack2,scores={bossskill1=26},distance=..100] as @e[tag=boss27_attack2,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.0}
execute if entity @e[tag=boss27_attack2,scores={bossskill1=27},distance=..100] as @e[tag=boss27_attack2,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.4}
execute if entity @e[tag=boss27_attack2,scores={bossskill1=28},distance=..100] as @e[tag=boss27_attack2,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.0}
execute if entity @e[tag=boss27_attack3,scores={bossskill1=25},distance=..100] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.7}
execute if entity @e[tag=boss27_attack3,scores={bossskill1=26},distance=..100] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.0}
execute if entity @e[tag=boss27_attack3,scores={bossskill1=27},distance=..100] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.4}
execute if entity @e[tag=boss27_attack3,scores={bossskill1=28},distance=..100] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.0}
effect give @e[tag=boss27_attack2,scores={bossskill1=1},distance=..100] glowing infinite 1 true
effect give @e[tag=boss27_attack3,scores={bossskill1=1},distance=..100] glowing infinite 1 true

execute as @e[tag=boss27_attack2,scores={bossskill1=30..39},distance=..100] at @s run teleport @s ^ ^ ^1
execute as @e[tag=boss27_attack3,scores={bossskill1=30..39},distance=..100] at @s run teleport @s ^ ^ ^1

execute as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run particle minecraft:explosion ~ ~1 ~ 2 1 2 1 30 force
execute as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run particle minecraft:flame ~ ~1 ~ 2 1 2 1 30 force
execute as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run particle flash{color:[1.0,1.0,1.0,0]} ~ ~1 ~ 2 1 1 1 30 force
execute as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~6 ~ 1.5 1.5
execute if score #difficulty difficulty matches ..1 as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 15
execute if score #difficulty difficulty matches 2.. as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run scoreboard players set @e[tag=boss27battle,distance=..4] commandDamage 1015
execute as @e[tag=boss27_attack2,scores={bossskill1=40},distance=..100] at @s if entity @e[tag=boss27_attack3,distance=..1] run effect give @e[tag=boss27battle,distance=..4] darkness 6 1 false

kill @e[tag=boss27_attack2,scores={bossskill1=45},distance=..100] 
kill @e[tag=boss27_attack3,scores={bossskill1=45},distance=..100] 


execute as @e[tag=boss27,tag=body,scores={motion=120..},limit=1] at @s run function namespace:main/boss/boss27/motion/random1

execute if entity @e[tag=boss27,tag=body,scores={motion=120..},limit=1] run scoreboard players set @e[tag=boss27,tag=body] motion 0
