
execute if score #main_storyline event matches 6.. if score #lomia_npc23 npc_talk matches 0.. run execute as @e[tag=npc23,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if score #main_storyline event matches 6.. if score #lomia_npc23 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc23.event6.1"}
execute if score #main_storyline event matches 6.. if score #lomia_npc23 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc23.event6.2"}
execute if score #main_storyline event matches 6.. if score #lomia_npc23 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc23.event6.3"}
execute if score #main_storyline event matches 6.. if score #lomia_npc23 npc_talk matches ..1 run scoreboard players add #lomia_npc23 npc_talk 1

