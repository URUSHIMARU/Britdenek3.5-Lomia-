playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
particle minecraft:crit ~ ~1 ~ 1 1 1 1 30 force

function namespace:main/entity_model/other/skill36_bullet
teleport @e[tag=skill36_bullet,tag=bullet,type=minecraft:wandering_trader,limit=1,sort=nearest,distance=..0.1] @s
scoreboard players operation @e[tag=skill36_bullet,tag=bullet,type=minecraft:wandering_trader,limit=1,sort=nearest,distance=..0.1] player = @s player
scoreboard players add @s[scores={skill37=..30}] skill37 1
advancement grant @s[scores={skill37=30},advancements={namespace:skill/normal/skill37=false}] only namespace:skill/normal/skill37
xp add @s -20 levels
schedule function namespace:main/system/sneak_time_end/skill36_loop 1t replace