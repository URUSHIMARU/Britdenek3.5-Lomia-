
execute if block -432 94 884 minecraft:lantern if score #lomia_npc18 npc_talk matches ..2 run scoreboard players add #lomia_npc18 npc_talk 5

execute if score #main_storyline event matches 3.. if score #lomia_npc18 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event3..1"}
execute if score #main_storyline event matches 3.. if score #lomia_npc18 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event3..2"}
execute if score #main_storyline event matches 3.. if score #lomia_npc18 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event3..3"}
execute if score #main_storyline event matches 3.. if score #lomia_npc18 npc_talk matches ..1 run scoreboard players add #lomia_npc18 npc_talk 1

execute if score #main_storyline event matches 4.. if score #lomia_npc17 npc_talk matches 5.. run execute as @e[tag=npc18,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]
execute if score #main_storyline event matches 4.. if score #lomia_npc18 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event4..1"}
execute if score #main_storyline event matches 4.. if score #lomia_npc18 npc_talk matches 6 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event4..2"}
execute if score #main_storyline event matches 4.. if score #lomia_npc18 npc_talk matches 7 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event4..3"}
execute if score #main_storyline event matches 4.. if score #lomia_npc18 npc_talk matches 8 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc18.event4..4"}
execute if score #main_storyline event matches 4.. if score #lomia_npc18 npc_talk matches 5..7 run scoreboard players add #lomia_npc18 npc_talk 1

