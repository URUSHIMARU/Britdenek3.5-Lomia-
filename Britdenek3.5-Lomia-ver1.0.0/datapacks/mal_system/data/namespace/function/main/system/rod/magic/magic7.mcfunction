execute if entity @s[level=..4] run return 0
function namespace:main/entity_model/other/magic7_bullet
teleport @e[tag=magic7_bullet,limit=1,sort=nearest,distance=..1] ~ ~1 ~ ~ ~
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 1 10 force

xp add @s -5 levels
schedule function namespace:main/system/rod/magic/magic7_loop 1t replace
