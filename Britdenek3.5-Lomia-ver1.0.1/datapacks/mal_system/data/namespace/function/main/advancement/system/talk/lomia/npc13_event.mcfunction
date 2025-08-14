

execute if score #main_storyline event matches 0 if score #lomia_npc13 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event0.1"}
execute if score #main_storyline event matches 0 if score #lomia_npc13 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event0.2"}
execute if score #main_storyline event matches 0 if score #lomia_npc13 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event0.3"}
execute if score #main_storyline event matches 0 if score #lomia_npc13 npc_talk matches ..1 run scoreboard players add #lomia_npc13 npc_talk 1


execute if score #main_storyline event matches 1 if score #lomia_npc13 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event1.1"}
execute if score #main_storyline event matches 1 if score #lomia_npc13 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event1.2"}
execute if score #main_storyline event matches 1 if score #lomia_npc13 npc_talk matches 1 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 1 if score #lomia_npc13 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event1.3"}
execute if score #main_storyline event matches 1 if score #lomia_npc13 npc_talk matches ..1 run scoreboard players add #lomia_npc13 npc_talk 1


execute if score #main_storyline event matches 2 if score #lomia_npc13 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event2.1"}
execute if score #main_storyline event matches 2 if score #lomia_npc13 npc_talk matches 1 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 2 if score #lomia_npc13 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event2.2"}
execute if score #main_storyline event matches 2 if score #lomia_npc13 npc_talk matches ..0 run scoreboard players add #lomia_npc13 npc_talk 1

execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 0 if block -425 85 899 minecraft:stone_pressure_plate run scoreboard players set #lomia_npc13 npc_talk 4

execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3..1"}
execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3..2"}
execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3..3"}
execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3..4"}
execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 3 run setblock -425 85 899 minecraft:stone_pressure_plate
execute if score #main_storyline event matches 3.. if score #lomia_npc13 npc_talk matches 3 run setblock -432 98 894 minecraft:stone_pressure_plate

execute if score #main_storyline event matches 3 if score #lomia_npc13 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3.2"}
execute if score #main_storyline event matches 3 if score #lomia_npc13 npc_talk matches 5 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 3 if score #lomia_npc13 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event3.3"}
execute if score #main_storyline event matches 3 if score #lomia_npc13 npc_talk matches ..4 run scoreboard players add #lomia_npc13 npc_talk 1

execute if score #main_storyline event matches 4 if score #lomia_npc13 npc_talk matches 4.. if block -432 94 884 minecraft:lantern run scoreboard players set #lomia_npc13 npc_talk 8

execute if score #main_storyline event matches 4.. if score #lomia_npc13 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4..1"}
execute if score #main_storyline event matches 4.. if score #lomia_npc13 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4..2"}
execute if score #main_storyline event matches 4.. if score #lomia_npc13 npc_talk matches 6 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 4.. if score #lomia_npc13 npc_talk matches 6 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4..3"}
execute if score #main_storyline event matches 4.. if score #lomia_npc13 npc_talk matches ..5 unless block -432 94 884 minecraft:lantern run scoreboard players add #lomia_npc13 npc_talk 1

execute if score #main_storyline event matches 4..5 if score #lomia_npc13 npc_talk matches 8 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4.1"}
execute if score #main_storyline event matches 4..5 if score #lomia_npc13 npc_talk matches 9 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4.2"}
execute if score #main_storyline event matches 4..5 if score #lomia_npc13 npc_talk matches 10 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 4..5 if score #lomia_npc13 npc_talk matches 11 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event4.3"}
execute if score #main_storyline event matches 4..5 if score #lomia_npc13 npc_talk matches ..10 if block -432 94 884 minecraft:lantern run scoreboard players add #lomia_npc13 npc_talk 1

execute if score #main_storyline event matches 6 if score #lomia_npc13 npc_talk matches 8 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event6.1"}
execute if score #main_storyline event matches 6 if score #lomia_npc13 npc_talk matches 9 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event6.2"}
execute if score #main_storyline event matches 6 if score #lomia_npc13 npc_talk matches 10 run execute as @e[tag=npc13,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 6 if score #lomia_npc13 npc_talk matches 11 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc13.event6.3"}
execute if score #main_storyline event matches 6 if score #lomia_npc13 npc_talk matches ..10 if block -432 94 884 minecraft:lantern run scoreboard players add #lomia_npc13 npc_talk 1

