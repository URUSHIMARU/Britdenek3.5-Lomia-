execute if entity @s[level=..7] run return 0
function namespace:main/entity_model/other/magic3_bullet
teleport @e[tag=magic3_bullet,limit=1,sort=nearest,distance=..1] ~ ~1 ~ ~ ~
particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 10 force
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.6 0.8
xp add @s -8 levels
schedule function namespace:main/system/rod/magic/magic3_loop 1t replace
