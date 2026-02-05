#カンナギ専用モード変更


execute as @s at @s if entity @s[scores={HP=251..}] run loot spawn ~ ~200 ~ loot namespace:random/random2
execute as @s at @s if entity @s[scores={HP=..250}] run loot spawn ~ ~200 ~ loot namespace:random/random5



execute as @s at @s positioned ~ ~200 ~ if entity @e[nbt={Item:{count:1,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossskill1 1
execute as @s at @s positioned ~ ~200 ~ if entity @e[nbt={Item:{count:2,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossskill1 2
execute as @s at @s positioned ~ ~200 ~ if entity @e[nbt={Item:{count:3,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossskill1 3
execute as @s at @s positioned ~ ~200 ~ if entity @e[nbt={Item:{count:4,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossskill1 3
execute as @s at @s positioned ~ ~200 ~ if entity @e[nbt={Item:{count:5,components:{"minecraft:custom_data":{random:1}}}},type=item,distance=..0.1] run scoreboard players set @s bossskill1 3
execute if entity @s[tag=boss28_amtrs,scores={HP=..120}] run scoreboard players set @s bossskill1 4
execute if entity @s[tag=boss28_amtrs,scores={HP=..120}] run tag @s remove boss28_amtrs

scoreboard players set @s bossskill2 1000
execute if entity @s[scores={bossskill1=1}] run data modify entity @e[tag=boss28,tag=weapon,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1248
execute if entity @s[scores={bossskill1=2}] run data modify entity @e[tag=boss28,tag=weapon,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1245
execute if entity @s[scores={bossskill1=3}] run data modify entity @e[tag=boss28,tag=weapon,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1248
execute if entity @s[scores={bossskill1=4}] run data modify entity @e[tag=boss28,tag=weapon,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1245

execute if entity @s[scores={bossskill1=1}] run data modify entity @e[tag=boss28,tag=parts,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1000
execute if entity @s[scores={bossskill1=2..3}] run data modify entity @e[tag=boss28,tag=parts,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1247
execute if entity @s[scores={bossskill1=4}] run data modify entity @e[tag=boss28,tag=parts,limit=1] equipment.head.components."minecraft:custom_model_data".floats[] set value 1246
scoreboard players add @s[scores={bossskill1=4}] bossskill2 1500


execute if entity @s[scores={bossskill1=4}] as @e[tag=boss28] at @s run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 11616512
execute if entity @s[scores={bossskill1=4}] as @e[tag=boss28,tag=!weapon] at @s run data merge entity @s {Invulnerable:1b}

execute as @s at @s positioned ~ ~200 ~ run kill @e[type=item,distance=..3]
