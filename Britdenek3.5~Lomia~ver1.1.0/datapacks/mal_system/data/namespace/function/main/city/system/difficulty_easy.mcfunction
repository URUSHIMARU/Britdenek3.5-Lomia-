

scoreboard players set #difficulty difficulty 0
difficulty easy
execute as @a at @s run function namespace:main/system/cal_param

tellraw @a {"translate":"system.difficulty.show.1"}

