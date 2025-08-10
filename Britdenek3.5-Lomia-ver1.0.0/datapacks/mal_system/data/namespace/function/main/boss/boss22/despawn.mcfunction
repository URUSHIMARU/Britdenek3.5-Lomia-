bossbar remove minecraft:boss22
execute as @e[type=slime,tag=boss22] at @s run data merge entity @s {Size:0}
kill @e[tag=boss22]
kill @e[tag=boss22_attack]
kill @e[tag=boss22sub]
kill @e[tag=boss22sub_attack]


