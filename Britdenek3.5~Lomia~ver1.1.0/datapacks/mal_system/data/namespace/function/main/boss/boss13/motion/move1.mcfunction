execute as @e[tag=boss13,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss13] ~ ~1.1 ~ ~ ~
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss13] ^0.5 ^-0.1 ^-0.2 ~-30 ~60
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss13] ^-0.5 ^-0.1 ^-0.2 ~30 ~60
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss13] ^0.3 ^-1.2 ^-0.2 ~ ~
execute as @e[tag=boss13,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss13] ^-0.3 ^-1.2 ^-0.2 ~ ~








scoreboard players set @e[tag=body,tag=boss13] motion 0


