execute as @e[tag=npc11,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event2.1"}
execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event2.2"}
execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event2.3"}
execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event2.4"}
execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event2.5"}
execute if score #main_storyline event matches 2 if score #lomia_npc11 npc_talk matches ..3 run scoreboard players add #lomia_npc11 npc_talk 1


execute if score #main_storyline event matches 3 if score #lomia_npc11 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event3.1"}
execute if score #main_storyline event matches 3 if score #lomia_npc11 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event3.2"}
execute if score #main_storyline event matches 3 if score #lomia_npc11 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event3.3"}
execute if score #main_storyline event matches 3 if score #lomia_npc11 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event3.4"}
execute if score #main_storyline event matches 3 if score #lomia_npc11 npc_talk matches ..2 run scoreboard players add #lomia_npc11 npc_talk 1

execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc11 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event4.1"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc11 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event4.2"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc11 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event4.3"}
execute unless block -432 94 884 minecraft:lantern if score #main_storyline event matches 4.. if score #lomia_npc11 npc_talk matches ..1 run scoreboard players add #lomia_npc11 npc_talk 1

execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event5.1"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event5.2"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event5.3"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event5.4"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event5.5"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 4..5 if score #lomia_npc11 npc_talk matches ..3 run scoreboard players add #lomia_npc11 npc_talk 1

execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event6.1"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event6.2"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event6.3"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event6.4"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc11.event6.5"}
execute if block -432 94 884 minecraft:lantern if score #main_storyline event matches 6 if score #lomia_npc11 npc_talk matches ..3 run scoreboard players add #lomia_npc11 npc_talk 1
