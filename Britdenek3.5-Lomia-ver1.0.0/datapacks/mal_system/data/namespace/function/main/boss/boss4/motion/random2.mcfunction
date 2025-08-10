scoreboard players set @s motion 0

scoreboard players set @e[tag=boss4,tag=body,limit=1] bossskill2 0

execute as @s at @s run loot spawn ~ ~400 ~ loot namespace:random/random2
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 6
execute as @s at @s positioned ~ ~400 ~ if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossmove 7


execute as @s at @s positioned ~ ~400 ~ run kill @e[type=item,distance=..0.1]



