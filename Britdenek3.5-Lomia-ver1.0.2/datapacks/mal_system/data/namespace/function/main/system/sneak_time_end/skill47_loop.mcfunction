execute as @e[type=bat,tag=skill47] at @s run teleport @s ^ ^ ^0.5 ~ ~1

execute as @a[tag=skill47_bat,scores={sneak_time=1..}] at @s run kill @e[type=bat,tag=skill47,distance=..1,limit=1,sort=nearest]
execute as @a[tag=skill47_bat,scores={sneak_time=1..}] at @s run gamemode adventure @s
execute as @a[tag=skill47_bat,scores={sneak_time=1..}] at @s run tag @s remove skill47_bat


execute as @e[type=bat,tag=skill47] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run gamemode adventure @a[distance=..0.5,limit=1,sort=nearest,tag=skill47_bat]
execute as @e[type=bat,tag=skill47] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run tag @a[distance=..0.5,limit=1,sort=nearest,tag=skill47_bat] remove skill47_bat
execute as @e[type=bat,tag=skill47] at @s unless block ^ ^ ^1 #namespace:airs_for_mob run kill @s

execute as @e[type=bat,tag=skill47] at @s unless block ^ ^-1 ^ #namespace:airs_for_mob run gamemode adventure @a[distance=..0.5,limit=1,sort=nearest,tag=skill47_bat]
execute as @e[type=bat,tag=skill47] at @s unless block ^ ^-1 ^ #namespace:airs_for_mob run tag @a[distance=..0.5,limit=1,sort=nearest,tag=skill47_bat] remove skill47_bat
execute as @e[type=bat,tag=skill47] at @s unless block ^ ^-1 ^ #namespace:airs_for_mob run kill @s


execute as @e[tag=skill47_bat,gamemode=spectator] at @s unless entity @e[type=bat,tag=skill47,distance=..1] run gamemode adventure @s
execute as @e[type=bat,tag=skill47] at @s unless entity @a[tag=skill47_bat,gamemode=spectator,distance=..2] run kill @s
tag @a[tag=skill47_bat,gamemode=!spectator] remove skill47_bat
execute if entity @e[type=bat,tag=skill47] run schedule function namespace:main/system/sneak_time_end/skill47_loop 1t replace
