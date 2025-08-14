#苦肉のリミッター
execute as @e[tag=boss2,x=-361,y=35,z=886,dx=80,dy=50,dz=80] at @s run teleport @s ~ ~-1 ~
execute as @e[tag=boss14,x=-361,y=35,z=886,dx=80,dy=50,dz=80] at @s run teleport @s ~ ~-1 ~


#ボス常時実行
function namespace:main/city/illusion_arena/check_illuson_arena
function namespace:main/city/illusion_arena/arena_on/boss_const with storage minecraft:illusion_arena
#戦闘終了検知
function namespace:main/city/illusion_arena/arena_on/check_boss with storage minecraft:illusion_arena
 #入場拒否
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.19"}
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s run tp @s -381 11 901 90 ~

#ボス選択通知
execute as @a[scores={illusion_arena_trigger=1..}] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.22"}