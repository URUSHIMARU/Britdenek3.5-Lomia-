$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".attackSpeedBase
scoreboard players operation @s attackSpeedBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".attackBase
scoreboard players operation @s attackBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".attackRangeBase
scoreboard players operation @s attackRangeBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".bowAttackBase
scoreboard players operation @s bowAttackBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".magicAttackBase
scoreboard players operation @s magicAttackBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".guardBase
scoreboard players operation @s guardBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".mpHealBase
scoreboard players operation @s mpHealBase += @s result

$execute store result score @s result run data get entity @s $(place).components."minecraft:custom_data".maxHealthBase
scoreboard players operation @s maxHealthBase += @s result
