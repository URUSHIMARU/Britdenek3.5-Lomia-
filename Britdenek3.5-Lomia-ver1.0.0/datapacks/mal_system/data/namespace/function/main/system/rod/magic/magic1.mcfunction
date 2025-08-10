execute if entity @s[level=..5] run return 0
function namespace:main/entity_model/other/magic1_bullet
teleport @e[tag=magic1_bullet,limit=1,sort=nearest,distance=..1] ~ ~ ~ ~ ~
particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 10 force
xp add @s -6 levels
schedule function namespace:main/system/rod/magic/magic1_loop 1t replace
