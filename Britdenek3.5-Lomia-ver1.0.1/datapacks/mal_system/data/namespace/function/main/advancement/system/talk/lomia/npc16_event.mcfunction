
execute as @e[tag=npc16,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event0.1"}
execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event0.2"}
execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event0.3"}
execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event0.4"}
execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event0.5"}
execute if score #main_storyline event matches 0 if score #lomia_npc16 npc_talk matches ..3 run scoreboard players add #lomia_npc16 npc_talk 1


execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event1.1"}
execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event1.2"}
execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event1.3"}
execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event1.4"}
execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event1.5"}
execute if score #main_storyline event matches 1..3 if score #lomia_npc16 npc_talk matches ..3 run scoreboard players add #lomia_npc16 npc_talk 1

execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.1"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.2"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.3"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.4"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.5"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event4.6"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 5 run scoreboard players set #lomia_npc22 npc_talk 3
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches 5 run setblock -437 94 917 minecraft:lantern
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc16 npc_talk matches ..4 run scoreboard players add #lomia_npc16 npc_talk 1


execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc16 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event6.1"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc16 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event6.2"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc16 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event6.3"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc16 npc_talk matches ..1 run scoreboard players add #lomia_npc16 npc_talk 1


execute unless block -432 94 884 air if score #main_storyline event matches 6 if score #lomia_npc16 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event5.1"}
execute unless block -432 94 884 air if score #main_storyline event matches 6 if score #lomia_npc16 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event5.2"}
execute unless block -432 94 884 air if score #main_storyline event matches 6 if score #lomia_npc16 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc16.event5.3"}
execute unless block -432 94 884 air if score #main_storyline event matches 6 if score #lomia_npc16 npc_talk matches ..1 run scoreboard players add #lomia_npc16 npc_talk 1

