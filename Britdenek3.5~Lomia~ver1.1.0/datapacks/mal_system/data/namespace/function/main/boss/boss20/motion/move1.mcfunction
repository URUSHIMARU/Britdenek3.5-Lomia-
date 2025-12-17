execute as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ~ ~0 ~ ~ ~


execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~







scoreboard players set @e[tag=body,tag=boss20] motion 0


