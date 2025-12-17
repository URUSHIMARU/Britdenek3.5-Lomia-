#êe execute as @e[tag=boss1,nbt={HurtTime:10s}] at @s run 

#å©ÇΩñ⁄
execute store result score @s custommodeldata run data get entity @s ArmorItems[3].tag.CustomModelData 1.0
scoreboard players add @s custommodeldata 20
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1.0 run scoreboard players get @s custommodeldata


#âπ
playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0.8

#HPåvéZ
execute as @e[tag=boss23] store result score @s bossHP run data get entity @s Health 1
execute as @e[tag=boss23,limit=1] if score @e[tag=boss23,limit=1] bossHP < @s bossHP run scoreboard players operation @s bossHP = @e[tag=boss23,limit=1] bossHP


scoreboard players set @s bossdamage 1000
scoreboard players operation @s bossdamage -= @s bossHP
scoreboard players operation @e[tag=boss23,tag=body] HP -= @s bossdamage
execute as @e[tag=boss23,tag=body] at @s store result bossbar minecraft:boss23 value run scoreboard players get @s HP

#ëÃóÕëSâÒïú
execute as @e[tag=boss23] run data merge entity @s {Health:1000}

