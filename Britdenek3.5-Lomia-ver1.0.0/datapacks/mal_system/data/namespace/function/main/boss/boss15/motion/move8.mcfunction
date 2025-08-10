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

execute if entity @e[tag=boss15,tag=body,scores={motion=5}] as @e[tag=boss15,tag=gate] at @s run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 4 0

execute if entity @e[tag=boss15,tag=body,scores={motion=30}] as @e[tag=boss15,tag=gate] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 4 0
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=gate] at @s run teleport @s ~ ~0.5 ~ ~ ~-5

execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run teleport @s ~ ~ ~ ~4 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..135}] as @e[tag=boss15,tag=gate] at @s run particle minecraft:portal ~ ~ ~ 2 2 2 0 5 force
execute if entity @e[tag=boss15,tag=body,scores={motion=45}] as @e[tag=boss15,tag=gate] at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ 1.5 0.8
execute if entity @e[tag=boss15,tag=body,scores={motion=45}] as @e[tag=boss15,tag=gate] at @s run particle minecraft:witch ~ ~ ~ 2 2 2 1 700 force

execute if entity @e[tag=boss15,tag=body,scores={motion=150..159}] as @e[tag=boss15,tag=gate] at @s run teleport @s ~ ~-0.5 ~ ~ ~5


execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet21
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet22
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet23
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet26

execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run teleport @e[tag=boss15_attack2,distance=..0.5] @s
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~10 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~20 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=2] at @s run teleport @s ~ ~ ~ ~ ~-7



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
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2 ^6 ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=91}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2 ^6 ~ 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=130}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet5
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=15..25}] at @s positioned ~ ~ ~ run teleport @e[tag=boss15_attack5,limit=1,scores={bossskill3=1},sort=nearest,distance=..1] ^ ^-2 ^6 ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,sort=nearest,limit=1]
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=131}] as @e[tag=boss15_attack5,scores={bossskill3=1}] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ ~ 0



execute as @e[tag=boss15,tag=body,scores={motion=160..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=160..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2


execute if entity @e[tag=boss15,tag=body,scores={motion=160..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
