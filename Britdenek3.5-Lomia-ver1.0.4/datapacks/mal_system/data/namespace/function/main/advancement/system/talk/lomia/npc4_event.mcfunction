
execute as @e[tag=npc4,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.1"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.2"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.3"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.4"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.5"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.6"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 6 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc4.event3.7"}
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches ..5 run scoreboard players add #lomia_npc4 npc_talk 1
execute if score #main_storyline event matches 3.. if score #lomia_npc4 npc_talk matches 6 run scoreboard players set #lomia_npc4 npc_talk 0
