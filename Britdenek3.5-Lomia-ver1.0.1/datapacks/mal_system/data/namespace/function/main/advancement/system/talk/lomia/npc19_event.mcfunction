
execute if score #main_storyline event matches 2 if score #lomia_npc19 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event2.1"}
execute if score #main_storyline event matches 2 if score #lomia_npc19 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event2.2"}
execute if score #main_storyline event matches 2 if score #lomia_npc19 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event2.3"}
execute if score #main_storyline event matches 2 if score #lomia_npc19 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event2.4"}
execute if score #main_storyline event matches 2 if score #lomia_npc19 npc_talk matches ..2 run scoreboard players add #lomia_npc19 npc_talk 1


execute if score #main_storyline event matches 3.. if score #lomia_npc19 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event3.1"}
execute if score #main_storyline event matches 3.. if score #lomia_npc19 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event3.2"}
execute if score #main_storyline event matches 3.. if score #lomia_npc19 npc_talk matches 1 run execute as @e[tag=npc19,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 3.. if score #lomia_npc19 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc19.event3.3"}
execute if score #main_storyline event matches 3.. if score #lomia_npc19 npc_talk matches ..1 run scoreboard players add #lomia_npc19 npc_talk 1
