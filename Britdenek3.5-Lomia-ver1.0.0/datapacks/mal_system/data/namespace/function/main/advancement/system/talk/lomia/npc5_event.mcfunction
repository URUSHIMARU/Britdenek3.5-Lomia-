



execute if score #lomia_npc5 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc5.event3.1"}
execute if score #lomia_npc5 npc_talk matches 0 run execute as @e[tag=npc5,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy
execute if score #lomia_npc5 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc5.event3.2"}
execute if score #lomia_npc5 npc_talk matches ..0 run scoreboard players add #lomia_npc5 npc_talk 1


