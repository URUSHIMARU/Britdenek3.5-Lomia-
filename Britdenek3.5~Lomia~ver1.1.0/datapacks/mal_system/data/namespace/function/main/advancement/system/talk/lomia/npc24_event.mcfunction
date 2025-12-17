
execute if block -432 94 884 minecraft:lantern if score #lomia_npc24 npc_talk matches ..1 run scoreboard players add #lomia_npc24 npc_talk 5

execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.1"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.2"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.3"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches ..1 run scoreboard players add #lomia_npc24 npc_talk 1

execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 5 run execute as @e[tag=npc24,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.4"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 6 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.5"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 7 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc24.event6.6"}
execute if score #main_storyline event matches 6.. if score #lomia_npc24 npc_talk matches 5..6 run scoreboard players add #lomia_npc24 npc_talk 1

