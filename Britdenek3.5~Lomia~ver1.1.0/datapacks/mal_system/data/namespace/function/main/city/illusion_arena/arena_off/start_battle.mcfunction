
$execute positioned -325 7 922 run function namespace:main/boss/boss$(illusion_arena)/summon {"team":1}
execute as @e[tag=body,tag=boss] at @s run teleport @s ~ ~ ~ 90 ~
#オミクロンのみ動きが特殊なので別途処理
execute positioned -325 7 922 as @e[tag=boss1,type=armor_stand,distance=..5] at @s run teleport @s ~ ~ ~ 90 ~


scoreboard players set #battle arena 1
