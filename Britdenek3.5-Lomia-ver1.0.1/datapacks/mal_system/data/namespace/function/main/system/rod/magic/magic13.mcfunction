execute if entity @s[level=..69] run return 0
playsound minecraft:block.portal.travel master @a ~ ~ ~ 0.4 2
particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 10 force
particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 0.3 10 force

function namespace:main/entity_model/other/magic13

xp add @s -70 levels
schedule function namespace:main/system/rod/magic/magic13_loop 1t replace
