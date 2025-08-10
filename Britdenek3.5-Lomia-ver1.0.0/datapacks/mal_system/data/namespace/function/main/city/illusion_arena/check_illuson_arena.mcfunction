


#ボス部屋残り人数が0の場合
scoreboard players set #player_num arena 0
execute as @a[x=-356,y=6,z=890,dx=80,dy=60,dz=80] run scoreboard players add #player_num arena 1
execute if score #player_num arena matches 0 run function namespace:main/boss/boss1/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss2/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss3/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss4/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss5/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss6/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss7/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss8/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss9/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss10/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss11/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss12/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss13/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss14/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss15/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss16/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss17/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss18/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss19/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss20despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss21/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss22/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss23/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss24/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss25/despawn
execute if score #player_num arena matches 0 run function namespace:main/boss/boss26/despawn

execute if score #player_num arena matches 0 run function namespace:main/boss/boss1001/death
execute if score #player_num arena matches 0 run function namespace:main/boss/boss1002/death
execute if score #player_num arena matches 0 run function namespace:main/boss/boss1003/death
execute if score #player_num arena matches 0 run function namespace:main/boss/boss1004/death
execute if score #player_num arena matches 0 run function namespace:main/boss/boss1005/death
