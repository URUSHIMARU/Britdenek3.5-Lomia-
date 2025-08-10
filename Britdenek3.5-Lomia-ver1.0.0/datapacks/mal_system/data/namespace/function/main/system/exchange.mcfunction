
loot give @s loot namespace:item/other/emerald
scoreboard players remove @s getMoney 1
execute as @a[scores={getMoney=1..}] at @s run function namespace:main/system/exchange