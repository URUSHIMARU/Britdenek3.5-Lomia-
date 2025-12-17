execute as @e[tag=magic7_bullet] at @s run particle minecraft:explosion ~ ~1 ~ 0.1 0.1 0.1 1 2 force
execute as @e[tag=magic7_bullet] at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.2 3 force


execute as @e[tag=magic7_bullet] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 2
execute as @e[tag=magic7_bullet] at @s run teleport @e[tag=!boss,tag=enemy,distance=..2,sort=random,limit=2] ~ ~1 ~
execute as @e[tag=magic7_bullet] at @s run teleport @s ^ ^ ^1.2 ~ ~0.1
execute as @e[tag=magic7_bullet] at @s unless block ~ ~0.5 ~ #namespace:airs run kill @s


execute if entity @e[tag=magic7_bullet] run schedule function namespace:main/system/rod/magic/magic7_loop 1t replace

