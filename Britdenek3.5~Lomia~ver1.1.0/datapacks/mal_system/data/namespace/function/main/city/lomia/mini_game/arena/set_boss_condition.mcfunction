execute as @s at @s run loot spawn ~ ~ ~ loot namespace:random/random10
execute as @s at @s if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players add @s HP 10
execute as @s at @s if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players add @s HP 20
execute as @s at @s if entity @e[nbt={Item:{count:3,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players add @s HP 40
execute as @s at @s if entity @e[nbt={Item:{count:4,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players add @s HP 60
execute as @s at @s if entity @e[nbt={Item:{count:5,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players remove @s HP 10
execute as @s at @s if entity @e[nbt={Item:{count:6,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players remove @s HP 20
execute as @s at @s if entity @e[nbt={Item:{count:7,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players remove @s HP 40
execute as @s at @s if entity @e[nbt={Item:{count:8,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players remove @s HP 60
execute as @s at @s if entity @e[nbt={Item:{count:9,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players remove @s HP 80
execute as @s at @s if entity @e[nbt={Item:{count:10,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players add @s HP 80
execute as @s at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3]

