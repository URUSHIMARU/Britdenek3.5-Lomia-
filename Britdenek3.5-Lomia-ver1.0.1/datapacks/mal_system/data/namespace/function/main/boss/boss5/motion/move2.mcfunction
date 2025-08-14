#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss5,tag=body,scores={motion=0..},limit=1] motion 1

execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss5] @s 
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss5] ^ ^0.75 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_arm1,limit=1,tag=boss5] ^0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_arm1,limit=1,tag=boss5] ^-0.3 ^0.65 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss5] ^0.1 ^0.05 ^ ~ ~
execute if entity @e[tag=boss5,tag=body,scores={motion=1..2}] as @e[tag=boss5,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss5] ^-0.1 ^0.05 ^ ~ ~


#ÉÇÅ[ÉVÉáÉì
execute if entity @e[tag=boss5,tag=body,scores={motion=10}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~ ~-90

execute if entity @e[tag=boss5,tag=body,scores={motion=41..70}] as @e[tag=boss5,tag=right_arm1,limit=1] at @s run teleport @s ~ ~ ~ ~3 ~3




execute if entity @e[tag=boss5,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] bossmove 1
#execute if entity @e[tag=boss5,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss5,tag=body] motion 0



