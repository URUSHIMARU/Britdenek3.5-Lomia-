
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.5 100 force
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.1
function namespace:main/entity_model/other/skill47_bat
tag @s add skill47_bat
gamemode spectator @s
teleport @e[type=bat,limit=1,tag=skill47,sort=nearest,distance=..1] @s
teleport @e[type=bat,limit=1,tag=skill47,sort=nearest,distance=..1] ~ ~0.8 ~ ~ ~-15
teleport @s ~ ~0.8 ~
spectate @e[type=bat,tag=skill47,limit=1,distance=..1,sort=nearest] @s

xp add @s -10 levels
schedule function namespace:main/system/sneak_time_end/skill47_loop 1t replace
