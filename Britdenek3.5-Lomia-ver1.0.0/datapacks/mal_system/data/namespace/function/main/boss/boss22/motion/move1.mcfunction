execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss22] ^ ^2.5 ^ ~ ~
execute as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss22] ^ ^5 ^ ~ ~


execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg1,limit=1,tag=boss22] ^ ^ ^-1.5 ~ ~-30
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg2,limit=1,tag=boss22] ^-5.5 ^-2 ^ ~-30 ~-20
execute as @e[tag=boss22,tag=body] at @s run teleport @e[tag=egg3,limit=1,tag=boss22] ^5.5 ^-2 ^ ~30 ~-20


execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm11,limit=1,tag=boss22] ^-3 ^-1 ^ ~30 ~
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=arm21,limit=1,tag=boss22] ^3 ^-1 ^ ~-30 ~
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=arm12,limit=1,tag=boss22] ^ ^ ^6 ~-20 ~
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=arm22,limit=1,tag=boss22] ^ ^ ^6 ~20 ~

execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=sbody1,limit=1,tag=boss22] ~ ~0 ~ ~ ~
execute as @e[tag=boss22,tag=arm11] at @s run teleport @e[tag=sarm11,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm12] at @s run teleport @e[tag=sarm12,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm21] at @s run teleport @e[tag=sarm21,limit=1,tag=boss22] ^ ^ ^2 ~ ~
execute as @e[tag=boss22,tag=arm22] at @s run teleport @e[tag=sarm22,limit=1,tag=boss22] ^ ^ ^2 ~ ~

scoreboard players set @e[tag=body,tag=boss22] motion 0


