#親 execute as @e[tag=boss1,nbt={HurtTime:10s}] at @s run 

#見た目
#data modify entity @s equipment.head.components."minecraft:dyed_color".rgb set value 14370384
data modify entity @s equipment.head.components."minecraft:dyed_color" set value 14370384


#音
#$playsound $(sound) master @a ~ ~ ~ 1.5 1
$playsound minecraft:$(sound) master @a ~ ~ ~ $(volume) $(pitch)

#HP計算
$execute as @e[tag=$(bossNumber)] store result score @s bossHP run data get entity @s Health 1
$execute as @e[tag=$(bossNumber),limit=1] if score @e[tag=$(bossNumber),limit=1] bossHP < @s bossHP run scoreboard players operation @s bossHP = @e[tag=$(bossNumber),limit=1] bossHP


scoreboard players set @s bossdamage 1000
scoreboard players operation @s bossdamage -= @s bossHP
$scoreboard players operation @e[tag=$(bossNumber),tag=body] HP -= @s bossdamage
$execute as @e[tag=$(bossNumber),tag=body] at @s store result bossbar minecraft:$(bossNumber) value run scoreboard players get @s HP

#体力全回復
$execute as @e[tag=$(bossNumber)] run data merge entity @s {Health:1000}

