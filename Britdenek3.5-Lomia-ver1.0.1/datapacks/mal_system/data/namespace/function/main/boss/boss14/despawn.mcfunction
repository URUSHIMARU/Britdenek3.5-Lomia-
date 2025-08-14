bossbar remove minecraft:boss14
execute as @e[type=slime,tag=boss14] at @s run data merge entity @s {Size:0}
kill @e[tag=boss14]
kill @e[tag=boss14_attack]


