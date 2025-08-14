scoreboard players set @s motion 0
scoreboard players set @s motion2 0

execute as @s at @s run loot spawn ~ ~ ~ loot namespace:random/random7
execute as @s at @s if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 14
execute as @s at @s if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 15
execute as @s at @s if entity @e[nbt={Item:{count:3,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 16
execute as @s at @s if entity @e[nbt={Item:{count:4,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 17
execute as @s at @s if entity @e[nbt={Item:{count:5,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 18
execute as @s at @s if entity @e[nbt={Item:{count:6,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 19
execute as @s at @s if entity @e[nbt={Item:{count:7,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 20

execute as @s at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3]

