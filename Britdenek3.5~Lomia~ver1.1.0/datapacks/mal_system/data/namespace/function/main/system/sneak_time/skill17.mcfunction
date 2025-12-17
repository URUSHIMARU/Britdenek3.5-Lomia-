playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.7 1.1
effect give @s minecraft:resistance 5 5 false
scoreboard players set @s skill18_damage 0
scoreboard players set @s skill18_timer 101
tag @s add skill18_act
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.5 30 force
particle minecraft:lava ~ ~ ~ 0 0 0 1 10 force
xp add @s -30 levels
schedule function namespace:main/system/sneak_time/skill18 1t replace
