#êe execute as @e[tag=boss1,nbt={HurtTime:10s}] at @s run 

#å©ÇΩñ⁄
execute store result score @s custommodeldata run data get entity @s ArmorItems[3].tag.CustomModelData 1.0
scoreboard players add @s custommodeldata 20
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1.0 run scoreboard players get @s custommodeldata


#âπ
playsound minecraft:entity.polar_bear.hurt master @a ~ ~ ~ 2 0.8

#HPåvéZ
execute as @e[tag=boss22sub] store result score @s bossHP run data get entity @s Health 1
execute as @e[tag=boss22sub,limit=1] if score @e[tag=boss22sub,limit=1] bossHP < @s bossHP run scoreboard players operation @s bossHP = @e[tag=boss22sub,limit=1] bossHP


scoreboard players set @s bossdamage 1000
scoreboard players operation @s bossdamage -= @s bossHP
scoreboard players operation @e[tag=boss22sub,tag=body] HP -= @s bossdamage
execute as @e[tag=boss22sub,tag=body] at @s store result bossbar minecraft:boss22sub value run scoreboard players get @s HP

#ëÃóÕëSâÒïú
execute as @e[tag=boss22sub] run data merge entity @s {Health:1000}

