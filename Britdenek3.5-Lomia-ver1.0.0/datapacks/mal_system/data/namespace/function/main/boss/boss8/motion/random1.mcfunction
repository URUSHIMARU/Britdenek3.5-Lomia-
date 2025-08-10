scoreboard players set @s motion 0
scoreboard players set @s motion2 0

execute as @s at @s run loot spawn ~ ~ ~ loot namespace:random/random5
execute as @s at @s if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 2
execute as @s at @s if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 3
execute as @s at @s if entity @e[nbt={Item:{count:3,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 5
execute as @s at @s if entity @e[nbt={Item:{count:4,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 6
execute as @s at @s if entity @e[nbt={Item:{count:5,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 7

execute as @s at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3]



