

scoreboard players set #difficulty difficulty 4
difficulty hard
execute as @a at @s run function namespace:main/system/cal_param

tellraw @a {"translate":"system.difficulty.show.5"}