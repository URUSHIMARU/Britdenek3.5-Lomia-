bossbar remove minecraft:boss15
execute as @e[type=slime,tag=boss15] at @s run data merge entity @s {Size:0}
kill @e[tag=boss15]
kill @e[tag=boss15_attack]


