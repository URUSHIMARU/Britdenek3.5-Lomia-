


execute as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30

execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~30

execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~30


execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40



scoreboard players set @e[tag=body,tag=boss4] motion 0


