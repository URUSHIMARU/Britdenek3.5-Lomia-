execute if entity @s[level=..7] run return 0
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 0
function namespace:main/entity_model/other/magic4_bullet
teleport @e[tag=magic4_bullet,limit=1,sort=nearest,distance=..1] ~ ~1 ~ ~ ~
particle minecraft:snowflake ~ ~1 ~ 1 1 1 0.5 30 force

xp add @s -8 levels
schedule function namespace:main/system/rod/magic/magic4_loop 1t replace
