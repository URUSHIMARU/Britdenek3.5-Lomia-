execute if entity @s[tag=skill45,tag=vampire,scores={lightTime=..2}] run function namespace:main/system/damage_dealt/skill45
scoreboard players operation @s damage_dealt2 = @s damage_dealt
scoreboard players set @s damage_dealt 0

