

execute if score #main_storyline event matches 0 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event0.1"}
execute if score #main_storyline event matches 0 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event0.2"}
execute if score #main_storyline event matches 0 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event0.3"}
execute if score #main_storyline event matches 0 if score #lomia_npc21 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event0.4"}
execute if score #main_storyline event matches 0 if score #lomia_npc21 npc_talk matches ..2 run scoreboard players add #lomia_npc21 npc_talk 1


execute if score #main_storyline event matches 1 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event1.1"}
execute if score #main_storyline event matches 1 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event1.2"}
execute if score #main_storyline event matches 1 if score #lomia_npc21 npc_talk matches 1 run execute as @e[tag=npc21,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 1 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event1.3"}
execute if score #main_storyline event matches 1 if score #lomia_npc21 npc_talk matches ..1 run scoreboard players add #lomia_npc21 npc_talk 1


execute if score #main_storyline event matches 2..3 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event2.1"}
execute if score #main_storyline event matches 2..3 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event2.2"}
execute if score #main_storyline event matches 2..3 if score #lomia_npc21 npc_talk matches 1 run execute as @e[tag=npc21,tag=lomia,limit=1] at @s positioned ~ ~-4 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 2..3 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event2.3"}
execute if score #main_storyline event matches 2..3 if score #lomia_npc21 npc_talk matches ..1 run scoreboard players add #lomia_npc21 npc_talk 1

execute if score #main_storyline event matches 4 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event4.1"}
execute if score #main_storyline event matches 4 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event4.2"}
execute if score #main_storyline event matches 4 if score #lomia_npc21 npc_talk matches 1 run execute as @e[tag=npc21,tag=lomia,limit=1] at @s positioned ~ ~-6 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 4 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event4.3"}
execute if score #main_storyline event matches 4 if score #lomia_npc21 npc_talk matches ..1 run scoreboard players add #lomia_npc21 npc_talk 1

execute if score #main_storyline event matches 5 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event5.1"}
execute if score #main_storyline event matches 5 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event5.2"}
execute if score #main_storyline event matches 5 if score #lomia_npc21 npc_talk matches 1 run execute as @e[tag=npc21,tag=lomia,limit=1] at @s positioned ~ ~-6 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 5 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event5.3"}
execute if score #main_storyline event matches 5 if score #lomia_npc21 npc_talk matches ..1 run scoreboard players add #lomia_npc21 npc_talk 1

execute if score #main_storyline event matches 6 if score #lomia_npc21 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event6.1"}
execute if score #main_storyline event matches 6 if score #lomia_npc21 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event6.2"}
execute if score #main_storyline event matches 6 if score #lomia_npc21 npc_talk matches 1 run execute as @e[tag=npc21,tag=lomia,limit=1] at @s positioned ~ ~-6 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #main_storyline event matches 6 if score #lomia_npc21 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc21.event6.3"}
execute if score #main_storyline event matches 6 if score #lomia_npc21 npc_talk matches ..1 run scoreboard players add #lomia_npc21 npc_talk 1
