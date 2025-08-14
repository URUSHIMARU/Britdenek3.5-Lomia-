#アリーナアナウンス範囲テンプレート
#tellraw @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] {"translate":"test"}

#アリーナ入場拒否
execute as @a[x=-361,y=92,z=921,dx=2,dy=5,dz=3] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.19","color":"red"}
execute as @a[x=-361,y=92,z=921,dx=2,dy=5,dz=3] at @s run tp @s -363 92 923 90 ~


#アリーナボス操作
execute if entity @e[tag=boss11_lomia] run function namespace:main/boss/boss11_lomia/const
execute if entity @e[tag=boss16_lomia] run function namespace:main/boss/boss16_lomia/const
execute if entity @e[tag=boss24_lomia] run function namespace:main/boss/boss24_lomia/const
execute if entity @e[tag=boss26_lomia] run function namespace:main/boss/boss26_lomia/const
execute if entity @e[tag=ogre_lomia] run function namespace:main/monster/lomia_ogre/const

#体力換算
scoreboard players operation #blue_HP lomia = @e[scores={lomia=1},tag=body,limit=1] HP
scoreboard players operation #red_HP lomia = @e[scores={lomia=2},tag=body,limit=1] HP
execute store result bossbar minecraft:lomia_blue value run scoreboard players get #blue_HP lomia
execute store result bossbar minecraft:lomia_red value run scoreboard players get #red_HP lomia

execute if score #lomia_win lomia matches 0 if entity @e[scores={lomia=1},tag=body] unless entity @e[scores={lomia=2},tag=body] run scoreboard players set #end_count lomia 200
execute if score #lomia_win lomia matches 0 if entity @e[scores={lomia=1},tag=body] unless entity @e[scores={lomia=2},tag=body] run scoreboard players set #lomia_win lomia 1
execute if score #lomia_win lomia matches 0 unless entity @e[scores={lomia=1},tag=body] if entity @e[scores={lomia=2},tag=body] run scoreboard players set #end_count lomia 200
execute if score #lomia_win lomia matches 0 unless entity @e[scores={lomia=1},tag=body] if entity @e[scores={lomia=2},tag=body] run scoreboard players set #lomia_win lomia 2
execute if score #lomia_win lomia matches 0 unless entity @e[scores={lomia=1},tag=body] unless entity @e[scores={lomia=2},tag=body] run scoreboard players set #end_count lomia 200
execute if score #lomia_win lomia matches 0 unless entity @e[scores={lomia=1},tag=body] unless entity @e[scores={lomia=2},tag=body] run scoreboard players set #lomia_win lomia 3


execute if score #end_count lomia matches 200 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 1 run scoreboard players operation #lomia_per lomia = #blue_per lomia
execute if score #end_count lomia matches 200 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 2 run scoreboard players operation #lomia_per lomia = #red_per lomia

execute if score #end_count lomia matches 200 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run playsound minecraft:block.note_block.hat master @s
execute if score #end_count lomia matches 200 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.11"}
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run playsound minecraft:block.note_block.hat master @s
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 1 run tellraw @s [{"translate":"system.system.lomia.arena.announce.12"},{"color":"aqua","translate":"system.system.lomia.arena.announce.13.1"}]
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 2 run tellraw @s [{"translate":"system.system.lomia.arena.announce.12"},{"color":"red","translate":"system.system.lomia.arena.announce.13.2"}]
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 3 run tellraw @s [{"translate":"system.system.lomia.arena.announce.12"},{"color":"red","translate":"system.system.lomia.arena.announce.13.3"}]
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 1 run execute as @a[x=-329,y=100,z=885,dx=26,dy=15,dz=15] at @s run function namespace:main/city/lomia/mini_game/arena/blue_win
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 2 run execute as @a[x=-329,y=100,z=885,dx=26,dy=15,dz=15] at @s run function namespace:main/city/lomia/mini_game/arena/red_win
execute if score #end_count lomia matches 150 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 3 run execute as @a[x=-329,y=100,z=885,dx=26,dy=15,dz=15] at @s run function namespace:main/city/lomia/mini_game/arena/draw
execute if score #end_count lomia matches 100 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run playsound minecraft:block.note_block.hat master @s
execute if score #end_count lomia matches 100 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 1 run tellraw @s {"translate":"system.system.lomia.arena.announce.14.1"}
execute if score #end_count lomia matches 100 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 2 run tellraw @s {"translate":"system.system.lomia.arena.announce.14.2"}
execute if score #end_count lomia matches 100 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s if score #lomia_win lomia matches 3 run tellraw @s {"translate":"system.system.lomia.arena.announce.14.3"}
execute if score #end_count lomia matches 50 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run playsound minecraft:block.note_block.hat master @s
execute if score #end_count lomia matches 50 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.15"}
execute if score #end_count lomia matches 1 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run playsound minecraft:block.note_block.hat master @s
execute if score #end_count lomia matches 1 as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run tellraw @s {"translate":"system.system.lomia.arena.announce.16"}





execute if score #end_count lomia matches 1 run function namespace:main/city/lomia/mini_game/arena/init

execute if score #end_count lomia matches 1.. run scoreboard players remove #end_count lomia 1

