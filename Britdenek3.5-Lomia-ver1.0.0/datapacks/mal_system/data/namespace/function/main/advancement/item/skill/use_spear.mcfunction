
scoreboard players operation @s result = @s damage_dealt2
scoreboard players operation @s result /= #10 cal
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spearSpecies:1b}}}}] at @s run function namespace:main/system/skill/spear_species1
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spearSpecies:2b}}}}] at @s run function namespace:main/system/skill/spear_species2

advancement revoke @s only namespace:all/item/skill/use_spear

