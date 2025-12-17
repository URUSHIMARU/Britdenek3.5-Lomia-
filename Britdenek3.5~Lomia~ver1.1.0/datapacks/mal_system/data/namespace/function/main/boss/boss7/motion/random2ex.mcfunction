scoreboard players set @s motion 0
scoreboard players set @s motion2 0

execute as @s at @s run loot spawn ~ ~400 ~ loot namespace:random/random7
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:1b}},type=item,distance=..3] run scoreboard players set @s bossmove 4
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:2b}},type=item,distance=..3] run scoreboard players set @s bossmove 5
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:3b}},type=item,distance=..3] run scoreboard players set @s bossmove 6
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:4b}},type=item,distance=..3] run scoreboard players set @s bossmove 7
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:5b}},type=item,distance=..3] run scoreboard players set @s bossmove 9
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:6b}},type=item,distance=..3] run scoreboard players set @s bossmove 11
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{id:"minecraft:stone",Count:7b}},type=item,distance=..3] run scoreboard players set @s bossmove 12

execute as @s at @s positioned ~ ~400 ~ run kill @e[type=item,distance=..3]


