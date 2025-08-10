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

execute as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ 



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
execute if entity @e[tag=boss15,tag=body,scores={motion=20..29}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss15,tag=body,scores={motion=40..49}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss15,tag=body,scores={motion=50..59}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~9


execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm1,tag=boss15] at @s positioned ~ ~-2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm2,tag=boss15] at @s positioned ~ ~-2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm3,tag=boss15] at @s positioned ~ ~-2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm4,tag=boss15] at @s positioned ~ ~-2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5 
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm5,tag=boss15] at @s positioned ~ ~-2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm1,tag=boss15] at @s positioned ~ ~-2 ~ run teleport @e[tag=boss15_attack5,limit=1,sort=nearest,distance=..1] ^ ^6 ^ ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm2,tag=boss15] at @s positioned ~ ~-2 ~ run teleport @e[tag=boss15_attack5,limit=1,sort=nearest,distance=..1] ^ ^6 ^ ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm3,tag=boss15] at @s positioned ~ ~-2 ~ run teleport @e[tag=boss15_attack5,limit=1,sort=nearest,distance=..1] ^ ^6 ^ ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm4,tag=boss15] at @s positioned ~ ~-2 ~ run teleport @e[tag=boss15_attack5,limit=1,sort=nearest,distance=..1] ^ ^6 ^ ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=arm5,tag=boss15] at @s positioned ~ ~-2 ~ run teleport @e[tag=boss15_attack5,limit=1,sort=nearest,distance=..1] ^ ^6 ^ ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=boss15_attack5] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=70}] as @e[tag=boss15_attack5] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=90}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2.2 ^6 ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2.2 ^6 ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=130}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2.2 ^6 ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0



execute as @e[tag=boss15,tag=body,scores={motion=150..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=150..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2


execute if entity @e[tag=boss15,tag=body,scores={motion=150..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
