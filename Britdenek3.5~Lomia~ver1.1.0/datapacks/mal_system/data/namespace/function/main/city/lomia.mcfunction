#ロミア闘技場関連
execute if score #battle lomia matches 0 run function namespace:main/city/lomia/mini_game/arena_off
execute if score #battle lomia matches 1 run function namespace:main/city/lomia/mini_game/arena_on

#ロミアカジノ関連
execute if entity @a[x=-417,y=92,z=877,dx=26,dy=15,dz=26] run function namespace:main/city/lomia/mini_game/gambling

