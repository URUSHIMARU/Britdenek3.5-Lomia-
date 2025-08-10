
playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
particle minecraft:crit ~ ~1 ~ 1 1 1 1 30 force

function namespace:main/entity_model/other/skill37_bullet
function namespace:main/entity_model/other/skill37_bullet
function namespace:main/entity_model/other/skill37_bullet
teleport @e[tag=skill37_bullet,tag=bullet,type=minecraft:wandering_trader,limit=3,sort=nearest,distance=..0.1] @s
teleport @e[tag=skill37_bullet,tag=bullet,type=minecraft:wandering_trader,limit=1,sort=nearest,distance=..0.1] ^ ^ ^0.1 ~-25 ~
teleport @e[tag=skill37_bullet,tag=bullet,type=minecraft:wandering_trader,limit=1,sort=nearest,distance=..0.1] ^ ^ ^0.1 ~25 ~

xp add @s -20 levels
schedule function namespace:main/system/sneak_time_end/skill37_loop 1t replace