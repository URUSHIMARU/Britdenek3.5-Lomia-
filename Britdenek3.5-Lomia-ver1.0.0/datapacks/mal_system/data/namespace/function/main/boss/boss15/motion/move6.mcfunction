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
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet24
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet25
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet26
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run function namespace:main/entity_model/boss/boss15/boss15_bullet27

execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s run teleport @e[tag=boss15_attack2,distance=..0.5] @s
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-7 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~7 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~10 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~20 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~-20 ~
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~7
execute if entity @e[tag=boss15,tag=body,scores={motion=45..134}] as @e[tag=boss15,tag=gate] at @s as @e[tag=boss15_attack2,distance=..0.5,sort=random,limit=3] at @s run teleport @s ~ ~ ~ ~ ~-7



execute as @e[tag=boss15,tag=body,scores={motion=170..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=170..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2

execute if entity @e[tag=boss15,tag=body,scores={motion=170..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
