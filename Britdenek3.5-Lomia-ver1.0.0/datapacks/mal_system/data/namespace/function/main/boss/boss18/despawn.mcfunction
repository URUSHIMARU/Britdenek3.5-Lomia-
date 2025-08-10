bossbar remove minecraft:boss18
execute as @e[type=slime,tag=boss18] at @s run data merge entity @s {Size:0}
kill @e[tag=boss18]
kill @e[tag=boss18_attack]


