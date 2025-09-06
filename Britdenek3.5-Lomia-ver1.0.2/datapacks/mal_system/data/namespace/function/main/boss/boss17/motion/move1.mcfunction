execute as @e[tag=boss17,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss17] ~ ~0.7 ~ ~ ~
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss17] ^ ^0.1 ^2.3 ~ ~
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg1,limit=1,tag=boss17] ^-0.7 ^-0.2 ^2.2 ~ ~
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg2,limit=1,tag=boss17] ^0.7 ^-0.2 ^2.2 ~ ~
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg4,limit=1,tag=boss17] ^-0.8 ^-0.35 ^-0.6 ~ ~
execute as @e[tag=boss17,tag=body1] at @s run teleport @e[tag=leg3,limit=1,tag=boss17] ^0 ^-0.35 ^-0.6 ~ ~






scoreboard players set @e[tag=body,tag=boss17] motion 0


