scoreboard players add @e[tag=boss27,tag=body,scores={motion=0..},limit=1] motion 1
#scoreboard players add @e[tag=boss27,tag=body,scores={motion2=0..},limit=1] motion2 1



execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,limit=1,sort=nearest]
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss27] ~ ~-0.5 ~ ~ ~10
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss27] ^-0.7 ^0.8 ^0.2 ~10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss27] ^0.7 ^0.8 ^0.2 ~-10 ~-20
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss27] ^0.5 ^-0.7 ^-0.1 ~-10 ~
execute if entity @e[tag=boss27,tag=body,scores={motion=1..2}] as @e[tag=boss27,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss27] ^-0.5 ^-0.7 ^-0.1 ~10 ~


execute if entity @e[tag=boss27,tag=body,scores={motion=10..13}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss27,tag=body,scores={motion=13}] as @e[tag=boss27,tag=arm1] at @s run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute if entity @e[tag=boss27,tag=body,scores={motion=13..14}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^ ^3 ~ ~45

execute if entity @e[tag=boss27,tag=body,scores={motion=35..37}] as @e[tag=boss27,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~30
execute if entity @e[tag=boss27,tag=body,scores={motion=16}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 0.5
execute if entity @e[tag=boss27,tag=body,scores={motion=16}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run effect give @s glowing infinite 1 true

execute if entity @e[tag=boss27,tag=body,scores={motion=16}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.6}
execute if entity @e[tag=boss27,tag=body,scores={motion=17}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.8}
execute if entity @e[tag=boss27,tag=body,scores={motion=18}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.1}
execute if entity @e[tag=boss27,tag=body,scores={motion=19}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":2.5}
execute if entity @e[tag=boss27,tag=body,scores={motion=20}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.0}
execute if entity @e[tag=boss27,tag=body,scores={motion=21}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":3.6}
execute if entity @e[tag=boss27,tag=body,scores={motion=22}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":4.3}
execute if entity @e[tag=boss27,tag=body,scores={motion=23}] as @e[tag=boss27_attack3,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":5.1}

execute if entity @e[tag=boss27,tag=body,scores={motion=35}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^-1 ^4 ~ ~45
execute if entity @e[tag=boss27,tag=body,scores={motion=36}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^-2.5 ^5 ~ ~60
execute if entity @e[tag=boss27,tag=body,scores={motion=37}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^-4 ^6 ~ ~75
execute if entity @e[tag=boss27,tag=body,scores={motion=38}] as @e[tag=boss27,tag=arm1] at @s run teleport @e[tag=boss27_attack3,limit=1] ^ ^-6 ^7 ~ ~90
execute if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s run particle minecraft:explosion ~ ~7 ~ 4 0 4 1 20 force
execute if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s run particle minecraft:flame ~ ~7 ~ 3 0 3 1 30 force
execute if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~6 ~ 2 0
execute if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s run particle cloud ~ ~7 ~ 3 0.1 3 1 70 force
execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s positioned ~ ~7 ~ run scoreboard players set @e[tag=boss27battle,distance=..7] commandDamage 20
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss27,tag=body,scores={motion=40},limit=1] as @e[tag=boss27_attack3] at @s positioned ~ ~7 ~ run scoreboard players set @e[tag=boss27battle,distance=..7] commandDamage 1030


execute if entity @e[tag=boss27,tag=body,scores={motion=70},limit=1] as @e[tag=boss27_attack3] at @s run particle cloud ~ ~7 ~ 3 0.1 3 0.2 70 force
execute if entity @e[tag=boss27,tag=body,scores={motion=70},limit=1] as @e[tag=boss27_attack3] at @s run particle flame ~ ~7 ~ 3 0.1 3 0.2 70 force
execute if entity @e[tag=boss27,tag=body,scores={motion=70},limit=1] run kill @e[tag=boss27_attack3]



execute as @e[tag=boss27,tag=body,scores={motion=80..},limit=1] at @s run function namespace:main/boss/boss27/motion/random1

execute if entity @e[tag=boss27,tag=body,scores={motion=80..},limit=1] run scoreboard players set @e[tag=boss27,tag=body] motion 0
