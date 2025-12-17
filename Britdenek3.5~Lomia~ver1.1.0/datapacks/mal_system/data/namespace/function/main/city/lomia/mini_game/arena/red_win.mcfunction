


execute as @s at @s store result score @s result run clear @s minecraft:dirt[minecraft:custom_data~{lomia_coin:2b}] 0
execute as @s at @s run scoreboard players operation @s result *= #lomia_per lomia
execute as @s at @s run scoreboard players operation @s getMoney = @s result
execute as @s at @s run clear @s minecraft:dirt[minecraft:custom_data~{arena:true}]
