execute store result score @s attackSpeedBase run data get entity @s SelectedItem.components."minecraft:custom_data".attackSpeedBase
execute store result score @s attackBase run data get entity @s SelectedItem.components."minecraft:custom_data".attackBase
execute store result score @s attackRangeBase run data get entity @s SelectedItem.components."minecraft:custom_data".attackRangeBase
execute store result score @s bowAttackBase run data get entity @s SelectedItem.components."minecraft:custom_data".bowAttackBase
execute store result score @s magicAttackBase run data get entity @s SelectedItem.components."minecraft:custom_data".magicAttackBase
execute store result score @s guardBase run data get entity @s SelectedItem.components."minecraft:custom_data".guardBase
execute store result score @s mpHealBase run data get entity @s SelectedItem.components."minecraft:custom_data".mpHealBase

execute store result score @s attackSpearCountBase run data get entity @s SelectedItem.components."minecraft:custom_data".attackSpearCountBase
scoreboard players set @s maxHealthBase 200

