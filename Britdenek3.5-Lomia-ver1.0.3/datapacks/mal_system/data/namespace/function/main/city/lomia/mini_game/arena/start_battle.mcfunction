#1:アイゼン(24)
#2:ハヤテ(26)
#3:ルイーサ(16)
#4:クロークベア(11)
#5:オークの群れ

#チーム1:青 2:赤



execute if score #pattern lomia matches 1 positioned -310 92 921 run function namespace:main/boss/boss24_lomia/summon {"team":1}
execute if score #pattern lomia matches 1 positioned -339 92 923 run function namespace:main/boss/boss26_lomia/summon {"team":2}

execute if score #pattern lomia matches 2 positioned -310 92 921 run function namespace:main/boss/boss24_lomia/summon {"team":1}
execute if score #pattern lomia matches 2 positioned -339 92 923 run function namespace:main/boss/boss16_lomia/summon {"team":2}

execute if score #pattern lomia matches 3 positioned -310 92 921 run function namespace:main/boss/boss24_lomia/summon {"team":1}
execute if score #pattern lomia matches 3 positioned -339 92 923 run function namespace:main/boss/boss11_lomia/summon {"team":2}

execute if score #pattern lomia matches 4 positioned -310 92 921 run function namespace:main/boss/boss24_lomia/summon {"team":1}
execute if score #pattern lomia matches 4 positioned -339 92 923 run function namespace:main/monster/lomia_ogre/summon {"team":2}

execute if score #pattern lomia matches 5 positioned -310 92 921 run function namespace:main/boss/boss26_lomia/summon {"team":1}
execute if score #pattern lomia matches 5 positioned -339 92 923 run function namespace:main/boss/boss16_lomia/summon {"team":2}

execute if score #pattern lomia matches 6 positioned -310 92 921 run function namespace:main/boss/boss26_lomia/summon {"team":1}
execute if score #pattern lomia matches 6 positioned -339 92 923 run function namespace:main/boss/boss11_lomia/summon {"team":2}

execute if score #pattern lomia matches 7 positioned -310 92 921 run function namespace:main/boss/boss26_lomia/summon {"team":1}
execute if score #pattern lomia matches 7 positioned -339 92 923 run function namespace:main/monster/lomia_ogre/summon {"team":2}

execute if score #pattern lomia matches 8 positioned -310 92 921 run function namespace:main/boss/boss16_lomia/summon {"team":1}
execute if score #pattern lomia matches 8 positioned -339 92 923 run function namespace:main/boss/boss11_lomia/summon {"team":2}

execute if score #pattern lomia matches 9 positioned -310 92 921 run function namespace:main/boss/boss16_lomia/summon {"team":1}
execute if score #pattern lomia matches 9 positioned -339 92 923 run function namespace:main/monster/lomia_ogre/summon {"team":2}

execute if score #pattern lomia matches 10 positioned -310 92 921 run function namespace:main/boss/boss11_lomia/summon {"team":1}
execute if score #pattern lomia matches 10 positioned -339 92 923 run function namespace:main/monster/lomia_ogre/summon {"team":2}

execute as @e[tag=body,scores={lomia=1}] at @s run teleport @s ~ ~ ~ 90 0
execute as @e[tag=body,scores={lomia=2}] at @s run teleport @s ~ ~ ~ -90 0

scoreboard players set #battle lomia 1

bossbar add lomia_blue {"translate":"system.system.bar.1","color":"aqua"}
bossbar add lomia_red {"translate":"system.system.bar.2","color":"red"}
bossbar set minecraft:lomia_blue color blue
bossbar set minecraft:lomia_red color red

execute store result bossbar minecraft:lomia_blue max run scoreboard players get @e[scores={lomia=1,HP=1..},tag=body,limit=1] HP
execute store result bossbar minecraft:lomia_red max run scoreboard players get @e[scores={lomia=2,HP=1..},tag=body,limit=1] HP
bossbar set minecraft:lomia_blue players @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110]
bossbar set minecraft:lomia_red players @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110]

