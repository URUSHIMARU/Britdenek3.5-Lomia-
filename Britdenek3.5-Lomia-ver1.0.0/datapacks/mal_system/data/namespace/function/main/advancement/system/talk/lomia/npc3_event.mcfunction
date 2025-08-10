

execute if score #main_storyline event matches 3 if score #lomia_npc3 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event3.1"}
execute if score #main_storyline event matches 3 if score #lomia_npc3 npc_talk matches 0 run execute as @e[tag=npc3,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 3 if score #lomia_npc3 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event3.2"}
execute if score #main_storyline event matches 3 if score #lomia_npc3 npc_talk matches ..1 run scoreboard players add #lomia_npc3 npc_talk 1


execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event4.1"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event4.2"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 1 run execute as @e[tag=npc3,tag=lomia,limit=1] at @s positioned ~ ~-4 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event4.3"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches ..1 run scoreboard players add #lomia_npc3 npc_talk 1


execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event5.1"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event5.2"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 1 run execute as @e[tag=npc3,tag=lomia,limit=1] at @s positioned ~ ~-6 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc3.event5.3"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc3 npc_talk matches ..1 run scoreboard players add #lomia_npc3 npc_talk 1


