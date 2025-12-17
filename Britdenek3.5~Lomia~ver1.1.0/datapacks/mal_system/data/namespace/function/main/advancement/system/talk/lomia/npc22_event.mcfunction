
execute as @e[tag=npc22,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]

execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.1"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.2"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.3"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches ..1 run scoreboard players add #lomia_npc22 npc_talk 1


execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 3 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.4"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 4 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.5"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 5 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.6"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 6 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.7"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 7 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.8"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 8 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.9"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 9 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.10"}
execute if block -432 94 884 air if block -437 94 917 lantern if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 2..8 run scoreboard players add #lomia_npc22 npc_talk 1

execute if entity @a[distance=..5,nbt={Inventory:[{components:{"minecraft:custom_data":{"star":true}}}]}] if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 9.. run scoreboard players add #lomia_npc22 npc_talk 1
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 10 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.11"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 11 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.12"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 11 run execute as @e[tag=npc22] at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 1 30 force
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 11 run execute as @e[tag=npc22] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 12 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.13"}
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 13 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.14"}
#この3つ一括化
execute if block -432 94 884 air if score #main_storyline event matches 4.. if score #lomia_npc22 npc_talk matches 13 run function namespace:main/advancement/system/talk/lomia/sub/npc22



execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc22 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.15"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc22 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.16"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc22 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event4.17"}
execute unless block -432 94 884 air if score #main_storyline event matches 4..5 if score #lomia_npc22 npc_talk matches ..1 run scoreboard players add #lomia_npc22 npc_talk 1

execute unless block -432 94 884 air if score #main_storyline event matches 6.. if score #lomia_npc22 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event6.1"}
execute unless block -432 94 884 air if score #main_storyline event matches 6.. if score #lomia_npc22 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event6.2"}
execute unless block -432 94 884 air if score #main_storyline event matches 6.. if score #lomia_npc22 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc22.event6.3"}
execute unless block -432 94 884 air if score #main_storyline event matches 6.. if score #lomia_npc22 npc_talk matches ..1 run scoreboard players add #lomia_npc22 npc_talk 1

