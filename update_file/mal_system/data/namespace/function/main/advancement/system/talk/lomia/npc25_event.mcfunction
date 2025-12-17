
execute if score #lomia_npc25 npc_talk matches 0 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc25.event1.1"}
execute if score #lomia_npc25 npc_talk matches 1 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc25.event1.2"}
execute if score #lomia_npc25 npc_talk matches 2 run tellraw @a[distance=..8] {"translate":"system.talk.lomia.npc25.event1.3"}

#マルリンクの値
#scoreboard players set #mal_shooter_mal_link mal_link 1
execute if score #lomia_npc25 npc_talk matches 2 run execute as @e[tag=npc25,tag=lomia,limit=1] at @s if score #mal_shooter_mal_link mal_link matches 1 run loot replace block -377 90 894 container.0 loot namespace:mal_link/mal_shooter/paradox_box_sh
execute if score #lomia_npc25 npc_talk matches 2 run execute as @e[tag=npc25,tag=lomia,limit=1] at @s if score #mal_shooter_mal_link mal_link matches 1 run loot replace block -377 89 894 container.0 loot namespace:item/other/emerald
execute if score #lomia_npc25 npc_talk matches 2 run execute as @e[tag=npc25,tag=lomia,limit=1] at @s if score #mal_shooter_mal_link mal_link matches 1 run data modify block -377 89 894 Items[0].count set value 6
execute if score #lomia_npc25 npc_talk matches 2 run execute as @e[tag=npc25,tag=lomia,limit=1] at @s positioned ~ ~-2 ~ run function namespace:main/advancement/system/talk/npc_setting/set_buy





execute if score #lomia_npc25 npc_talk matches 0..1 run scoreboard players add #lomia_npc25 npc_talk 1


#tpさせると交易が消える
#execute as @e[tag=npc1,tag=lomia,limit=1] at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,sort=nearest]



