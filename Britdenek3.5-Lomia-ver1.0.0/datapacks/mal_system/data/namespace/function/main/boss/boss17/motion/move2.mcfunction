scoreboard players add @e[tag=boss17,tag=body,scores={motion=0..},limit=1] motion 1



execute as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ 
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6






execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ 0
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=1..2}] as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~






execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=21..23}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~



execute if entity @e[tag=boss17,tag=body,scores={motion=21..47}] as @e[tag=boss17,tag=leg3] at @s run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @e[tag=boss17,tag=body,scores={motion=21..47}] as @e[tag=boss17,tag=leg4] at @s run teleport @s ~ ~0.3 ~ ~ ~


execute if entity @e[tag=boss17,tag=body,scores={motion=23}] as @e[tag=boss17,tag=body1] at @s run playsound minecraft:entity.zombie_horse.death master @a ~ ~ ~ 2 1.1


execute if entity @e[tag=boss17,tag=body,scores={motion=24..25}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=24..25}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=26..27}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=26..27}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=28..29}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=28..29}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=30..31}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=30..31}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=32..33}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=32..33}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=34..35}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=34..35}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=36..37}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=36..37}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=38..39}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=38..39}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss17,tag=body,scores={motion=40..41}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss17,tag=body,scores={motion=40..41}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=42..43}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if entity @e[tag=boss17,tag=body,scores={motion=42..43}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~2


execute if entity @e[tag=boss17,tag=body,scores={motion=45..47}] as @e[tag=boss17,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss17,tag=body,scores={motion=45..47}] as @e[tag=boss17,tag=leg1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss17,tag=body,scores={motion=45..47}] as @e[tag=boss17,tag=leg2] at @s run teleport @s ~ ~ ~ ~ ~20


#execute if entity @e[tag=boss17,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] bossmove 3
execute as @e[tag=boss17,tag=body,scores={motion=55..},limit=1] at @s run function namespace:main/boss/boss17/motion/random1

execute if entity @e[tag=boss17,tag=body,scores={motion=55..},limit=1] run scoreboard players set @e[tag=boss17,tag=body] motion 0
