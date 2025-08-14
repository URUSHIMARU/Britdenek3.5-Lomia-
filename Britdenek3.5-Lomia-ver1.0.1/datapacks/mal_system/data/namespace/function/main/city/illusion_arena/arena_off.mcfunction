#回復の泉
effect give @a[x=-397,y=11,z=920,dx=4,dy=1,dz=4] minecraft:instant_health 1 1 true
effect give @a[x=-397,y=11,z=920,dx=4,dy=1,dz=4] minecraft:saturation 1 1 true
xp add @a[x=-397,y=11,z=920,dx=4,dy=1,dz=4,level=..98] 1 levels

#退場処理
execute if score #start_count arena matches 0 run particle minecraft:firework -355 11 923 0 2 1.2 0 5 force
execute if score #start_count arena matches 0 run tp @a[x=-355,y=7,z=920,dx=0,dy=7,dz=6] -381 11 901

#入場処理
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s unless score #boss arena matches 0 if score #start_count arena matches 0 run function namespace:main/city/illusion_arena/arena_off/get_boss_strage
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s unless score #boss arena matches 0 if score #start_count arena matches 0 run function namespace:main/city/illusion_arena/arena_off/check_boss_state with storage minecraft:illusion_arena
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s unless score #boss arena matches 0 if score #start_count arena matches 0 if score #in_battle arena matches 1 run tellraw @s {"translate":"system.system.lomia.arena.announce.20"}
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s unless score #boss arena matches 0 if score #start_count arena matches 0 if score #in_battle arena matches 0 run scoreboard players set #start_count arena 200
execute as @a[x=-379,y=11,z=901,dx=0,dy=3,dz=1] at @s run teleport @s -353 7 924



#アナウンス
execute if score #start_count arena matches 200 as @a at @s run playsound minecraft:block.note_block.hat master @s
execute if score #start_count arena matches 200 run tellraw @a {"translate":"system.system.lomia.arena.announce.8"}
execute if score #start_count arena matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s
execute if score #start_count arena matches 100 run tellraw @a {"translate":"system.system.lomia.arena.announce.9"}
execute if score #start_count arena matches 1 as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.7 1
execute if score #start_count arena matches 1 run tellraw @a {"translate":"system.system.lomia.arena.announce.17"}
execute if score #start_count arena matches 1 run function namespace:main/city/illusion_arena/arena_off/start_battle with storage minecraft:illusion_arena

execute if score #start_count arena matches 1.. run scoreboard players remove #start_count arena 1

#トリガー制御(戦うボスの設定)
scoreboard players enable @a[x=-460,y=6,z=882,dx=190,dy=60,dz=90] illusion_arena_trigger
execute as @a[scores={illusion_arena_trigger=1..}] at @s if score #start_count arena matches 0 run scoreboard players operation #boss arena = @s illusion_arena_trigger
execute as @a[scores={illusion_arena_trigger=1..}] at @s if score #start_count arena matches 0 run execute store result storage illusion_arena illusion_arena int 1.0 run scoreboard players get #boss arena
execute as @a[scores={illusion_arena_trigger=1..}] at @s if score #start_count arena matches 0 run function namespace:main/city/illusion_arena/arena_off/select_boss with storage minecraft:illusion_arena
execute as @a[scores={illusion_arena_trigger=1..}] at @s if score #start_count arena matches 1.. run tellraw @s {"translate":"system.system.lomia.arena.announce.22"}

