#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss4,tag=body,scores={motion=0..},limit=1] motion 1


#èâä˙
execute as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40

#à–ädÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss4,tag=body,scores={motion=1..20}] as @e[tag=boss4,limit=1,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss4,tag=body,scores={motion=1..20}] as @e[tag=boss4,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss4,tag=body,scores={motion=1..30}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~-50
execute if entity @e[tag=boss4,tag=body,scores={motion=1..40}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~-50
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,tag=body1] at @s run playsound minecraft:entity.spider.death master @a ~ ~ ~ 3 0.6
execute if entity @e[tag=boss4,tag=body,scores={motion=34}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=34}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^2 1 1 1 1 30 force
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^2 1 1 1 1 30 force
execute if entity @e[tag=boss4,tag=body,scores={motion=34}] as @e[tag=boss4,tag=arm1] at @s run playsound minecraft:item.trident.throw master @a ^ ^ ^2 2 0.4
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm2] at @s run playsound minecraft:item.trident.throw master @a ^ ^ ^2 2 0.4

execute if entity @e[tag=boss4,tag=body,scores={motion=34}] as @e[tag=boss4,tag=arm1] at @s positioned ^ ^ ^3 as @e[tag=boss4battle,distance=..4] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run scoreboard players set @s commandDamage 9

execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm2] at @s positioned ^ ^ ^3 as @e[tag=boss4battle,distance=..4] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run scoreboard players set @s commandDamage 9


execute if entity @e[tag=boss4,tag=body,scores={motion=51..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] bossmove 3
execute if entity @e[tag=boss4,tag=body,scores={motion=51..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] motion 0




