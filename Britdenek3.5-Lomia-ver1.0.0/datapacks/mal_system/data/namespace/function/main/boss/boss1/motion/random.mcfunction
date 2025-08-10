scoreboard players set @e[tag=boss1,tag=body,limit=1] motion 0
scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 1

execute as @e[tag=boss1c,limit=1] at @s run loot spawn ~ ~ ~ loot namespace:random/random5
execute as @e[tag=boss1c,limit=1] at @s if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 2
execute as @e[tag=boss1c,limit=1] at @s if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 3
execute as @e[tag=boss1c,limit=1] at @s if entity @e[nbt={Item:{count:3,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 5
execute as @e[tag=boss1c,limit=1] at @s if entity @e[nbt={Item:{count:4,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 6
execute as @e[tag=boss1c,limit=1] at @s if entity @e[nbt={Item:{count:5,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @e[tag=boss1,tag=body,limit=1] bossmove 7
execute as @e[tag=boss1c,limit=1] at @s run kill @e[type=item,distance=..0.1]


