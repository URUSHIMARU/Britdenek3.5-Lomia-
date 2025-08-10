scoreboard players add @e[tag=boss15,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 

execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 

#execute as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ 



#execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,tag=!bullet,limit=1,sort=nearest]
#execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 ~ ~

execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ ~ ~90


execute if entity @e[tag=boss15,tag=body,scores={motion=20}] as @e[tag=boss15,tag=body] at @s run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss15,tag=body,scores={motion=20..29}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=25..34}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=35..44}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=40..49}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=55}] as @e[tag=boss15,tag=body] at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=55}] as @e[tag=boss15] at @s run particle minecraft:witch ~ ~2 ~ 3 3 3 1 300 force

execute if entity @e[tag=boss15,tag=body,scores={motion=65..109}] as @e[tag=boss15] at @s run teleport @s ~ ~ ~ ~9 ~

execute if entity @e[tag=boss15,tag=body,scores={motion=65..104}] as @e[tag=boss15,tag=body] at @s positioned ^ ^ ^16 run function namespace:main/entity_model/boss/boss15/boss15_bullet6
execute if entity @e[tag=boss15,tag=body,scores={motion=65..104}] as @e[tag=boss15,tag=body] at @s positioned ^ ^ ^24 run function namespace:main/entity_model/boss/boss15/boss15_bullet6
execute if entity @e[tag=boss15,tag=body,scores={motion=65..104}] as @e[tag=boss15,tag=body] at @s positioned ^ ^ ^32 run function namespace:main/entity_model/boss/boss15/boss15_bullet6
execute if entity @e[tag=boss15,tag=body,scores={motion=65..104}] as @e[tag=boss15,tag=body] at @s positioned ^ ^ ^40 run function namespace:main/entity_model/boss/boss15/boss15_bullet6

execute if entity @e[tag=boss15,tag=body,scores={motion=105}] run kill @e[tag=boss15_attack6,limit=110,sort=random]


execute if score #difficulty difficulty matches ..1 if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15_attack6] at @s run function namespace:main/entity_model/bomb_template {power:3}
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15_attack6] at @s run function namespace:main/entity_model/bomb_template {power:4}


execute if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=160}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60

execute as @e[tag=boss15,tag=body,scores={motion=170..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=170..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2

execute if entity @e[tag=boss15,tag=body,scores={motion=170..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
