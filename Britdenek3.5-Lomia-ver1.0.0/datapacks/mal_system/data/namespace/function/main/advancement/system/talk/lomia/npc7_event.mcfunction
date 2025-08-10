
execute if score #lomia_npc7 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc7.event0.1"}
execute if score #lomia_npc7 npc_talk matches 0 run execute as @e[tag=npc7,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy

execute if score #lomia_npc7 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc7.event0.2"}

execute if score #lomia_npc7 npc_talk matches 0 run scoreboard players add #lomia_npc7 npc_talk 1


#tpさせると交易が消える
#execute as @e[tag=npc1,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]



