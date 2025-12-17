

execute as @s at @s rotated ~ 0 positioned ^ ^ ^-10 run function namespace:main/entity_model/boss/boss27/boss27_bullet3
execute as @s at @s rotated ~ 0 positioned ^ ^ ^10 run function namespace:main/entity_model/boss/boss27/boss27_bullet2
execute as @e[tag=boss27_first] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss27battle,sort=nearest,limit=1]
execute as @e[tag=boss27_first] at @s run teleport @s ~ ~ ~ ~ 0
tag @e[tag=boss27_first] remove boss27_first
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 0.5
