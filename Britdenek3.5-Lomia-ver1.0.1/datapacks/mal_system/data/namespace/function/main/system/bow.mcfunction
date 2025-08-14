
execute positioned ~ ~1.5 ~ run scoreboard players operation @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] bowAttackBase = @s bowAttackBase
#分裂
execute positioned ~ ~1.5 ~ run execute if entity @s[scores={sneak=1..},tag=skill24,level=10..] run function namespace:main/system/bow/skill24
#方向変更付与
execute positioned ~ ~1.5 ~ run execute if entity @s[scores={sneak=1..},tag=skill23,level=10..] run function namespace:main/system/bow/skill23
#貫通付与
execute positioned ~ ~1.5 ~ run execute if entity @s[scores={sneak=1..},tag=skill22,level=10..] run function namespace:main/system/bow/skill22
#威力増強
execute positioned ~ ~1.5 ~ run execute if entity @s[scores={sneak=1..},tag=skill21,level=10..] run function namespace:main/system/bow/skill21
#毒薬付与
execute positioned ~ ~1.5 ~ run execute if entity @s[scores={sneak=1..},tag=skill25,level=10..] run function namespace:main/system/bow/skill25


execute positioned ~ ~1.5 ~ as @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] at @s store result score @s result run data get entity @s damage 1.0
execute positioned ~ ~1.5 ~ as @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] at @s run scoreboard players operation @s bowAttackBase *= @s result
execute positioned ~ ~1.5 ~ as @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] at @s store result entity @s damage double 0.1 run scoreboard players get @s bowAttackBase


scoreboard players set @s bow 0
