


execute as @e[tag=npc2,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if score #main_storyline event matches 0 if score #lomia_npc2 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event0.1"}
execute if score #main_storyline event matches 0 if score #lomia_npc2 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event0.2"}
execute if score #main_storyline event matches 0 if score #lomia_npc2 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event0.3"}
execute if score #main_storyline event matches 0 if score #lomia_npc2 npc_talk matches ..1 run scoreboard players add #lomia_npc2 npc_talk 1

execute if score #main_storyline event matches 1 if score #lomia_npc2 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event1.1"}
execute if score #main_storyline event matches 1 if score #lomia_npc2 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event1.2"}
execute if score #main_storyline event matches 1 if score #lomia_npc2 npc_talk matches ..0 run scoreboard players add #lomia_npc2 npc_talk 1

execute if score #main_storyline event matches 2..5 if score #lomia_npc2 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event2.1"}
execute if score #main_storyline event matches 2..5 if score #lomia_npc2 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event2.2"}
execute if score #main_storyline event matches 2..5 if score #lomia_npc2 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event2.3"}
execute if score #main_storyline event matches 2..5 if score #lomia_npc2 npc_talk matches ..1 run scoreboard players add #lomia_npc2 npc_talk 1

execute if score #main_storyline event matches 6 if score #lomia_npc2 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event6.1"}
execute if score #main_storyline event matches 6 if score #lomia_npc2 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event6.2"}
execute if score #main_storyline event matches 6 if score #lomia_npc2 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc2.event6.3"}
execute if score #main_storyline event matches 6 if score #lomia_npc2 npc_talk matches ..1 run scoreboard players add #lomia_npc2 npc_talk 1
