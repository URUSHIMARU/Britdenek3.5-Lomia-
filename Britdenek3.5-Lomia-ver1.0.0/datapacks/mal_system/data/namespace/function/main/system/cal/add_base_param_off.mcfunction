execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".attackSpeedBaseOff
scoreboard players operation @s attackSpeedBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".attackBaseOff
scoreboard players operation @s attackBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".attackRangeBaseOff
scoreboard players operation @s attackRangeBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".bowAttackBaseOff
scoreboard players operation @s bowAttackBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".magicAttackBaseOff
scoreboard players operation @s magicAttackBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".guardBaseOff
scoreboard players operation @s guardBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".mpHealBaseOff
scoreboard players operation @s mpHealBase += @s result

execute store result score @s result run data get entity @s equipment.offhand.components."minecraft:custom_data".maxHealthBaseOff
scoreboard players operation @s maxHealthBase += @s result
