

execute if score #event_time event matches 1 run function namespace:main/city/illusion_arena/lomia_event/summon_raco
execute if score #event_time event matches 10 run setblock -424 56 914 air
execute if score #event_time event matches 10 run fill -423 63 921 -423 56 908 air destroy

execute if score #event_time event matches 20 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.1"}
execute if score #event_time event matches 120 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.2"}

execute if score #event_time event matches 120..140 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-0.5 ~-2
execute if score #event_time event matches 120..140 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~0.5 ~-2


execute if score #event_time event matches 220 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.3"}

execute if score #event_time event matches 220..240 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~2 ~-0.5
execute if score #event_time event matches 220..320 run execute as @e[tag=raco,tag=arm1] at @s run particle minecraft:lava ^ ^2 ^15 0.5 0.5 0.5 1 10 force
execute if score #event_time event matches 220 run execute as @e[tag=raco,tag=arm1] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 3 1.2

execute if score #event_time event matches 320 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.4"}

execute if score #event_time event matches 320..340 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-3 ~1
execute if score #event_time event matches 320..330 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~1

execute if score #event_time event matches 420 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.5"}

execute if score #event_time event matches 420..424 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 425..429 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if score #event_time event matches 420..424 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 425..429 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if score #event_time event matches 420..424 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 425..429 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-1


execute if score #event_time event matches 430..434 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 435..439 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if score #event_time event matches 430..434 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 435..439 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if score #event_time event matches 430..434 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 435..439 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-1

execute if score #event_time event matches 440..444 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 445..449 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if score #event_time event matches 440..444 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 445..449 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if score #event_time event matches 440..444 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~1
execute if score #event_time event matches 445..449 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-1


execute if score #event_time event matches 520 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.6"}
execute if score #event_time event matches 620 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.7"}

execute if score #event_time event matches 620..624 run execute as @e[tag=raco,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~-2
execute if score #event_time event matches 620..624 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-1 ~-3
execute if score #event_time event matches 625..629 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~1 ~-3


execute if score #event_time event matches 720 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.8"}

execute if score #event_time event matches 720..730 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-2 ~-3
execute if score #event_time event matches 720..730 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~2 ~-3

execute if score #event_time event matches 820 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.9"}

execute if score #event_time event matches 820..830 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~2 ~5
execute if score #event_time event matches 820..830 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~-2 ~5


execute if score #event_time event matches 920 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.10"}

execute if score #event_time event matches 920..929 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~3 ~-5
execute if score #event_time event matches 930..940 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~6

execute if score #event_time event matches 930 run particle minecraft:flash -426 59 915 0 1 2 1 100 force
execute if score #event_time event matches 930 run playsound minecraft:entity.enderman.teleport master @a -426 59 915 2 0
execute if score #event_time event matches 930 positioned -426 56 914 run function namespace:main/entity_model/boss/racolondo/view

execute if score #event_time event matches 1020 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.11"}
execute if score #event_time event matches 1120 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.12"}
execute if score #event_time event matches 1220 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.13"}
execute if score #event_time event matches 1320 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.14"}

execute if score #event_time event matches 1300..1310 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-7
execute if score #event_time event matches 1300..1310 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-7
execute if score #event_time event matches 1320..1320 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~55
execute if score #event_time event matches 1320..1320 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~55
execute if score #event_time event matches 1320..1320 run execute as @e[tag=raco,tag=arm1] at @s run playsound minecraft:entity.lightning_bolt.impact master @a -425 55 914 2 0.8
execute if score #event_time event matches 1320..1320 run execute as @e[tag=raco,tag=arm1] at @s run particle minecraft:explosion -425 56 910 1 1 1 1 6 force
execute if score #event_time event matches 1320..1320 run execute as @e[tag=raco,tag=arm1] at @s run particle minecraft:explosion -425 56 918 1 1 1 1 6 force


execute if score #event_time event matches 1420 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.15"}

execute if score #event_time event matches 1420..1440 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 1420..1440 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 1440 run kill @e[tag=view]

execute if score #event_time event matches 1520 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.16"}
execute if score #event_time event matches 1520..1525 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~3 ~-7


execute if score #event_time event matches 1620 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.17"}
execute if score #event_time event matches 1620..1640 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-4 ~


execute if score #event_time event matches 1720 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.18"}
execute if score #event_time event matches 1820 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.19"}

execute if score #event_time event matches 1820..1830 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~8 ~

execute if score #event_time event matches 1920 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.20"}

execute if score #event_time event matches 1920..1930 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~-2 ~2

execute if score #event_time event matches 2020 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.21"}
execute if score #event_time event matches 2120 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.22"}
execute if score #event_time event matches 2220 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.23"}

execute if score #event_time event matches 2220..2230 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if score #event_time event matches 2220..2230 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-7


execute if score #event_time event matches 2320 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.24"}

execute if score #event_time event matches 2320..2340 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if score #event_time event matches 2320..2340 run execute as @e[tag=raco,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if score #event_time event matches 2420 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.25"}
execute if score #event_time event matches 2520 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.26"}

execute if score #event_time event matches 2520..2530 run execute as @e[tag=raco,tag=arm1] at @s run teleport @s ~ ~ ~ ~1 ~-3
execute if score #event_time event matches 2520..2820 run execute as @e[tag=raco,tag=arm1] at @s run particle minecraft:witch ^ ^2 ^15 0.5 0.5 0.5 1 10 force
execute if score #event_time event matches 2620 run tellraw @a {"translate":"system.talk.lomia.event.main.1.talk.27"}
execute if score #event_time event matches 2620 run execute as @e[tag=raco,tag=arm1] at @s run execute as @a at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 2 1
execute if score #event_time event matches 2620 run time set 6000
execute if score #event_time event matches 2620 run gamerule doDaylightCycle true

execute if score #event_time event matches 2720 run execute as @a at @s run function namespace:main/init/player_init
execute if score #event_time event matches 2721 run execute as @a at @s run kill @e[tag=raco]

execute if score #event_time event matches 2721 run setblock -415 57 921 minecraft:pale_oak_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"light_blue",has_glowing_text:1b,messages:["",{translate:"system.start"},"",""]},is_waxed:0b}
execute if score #event_time event matches 2721 run setblock -415 56 921 minecraft:oak_button[face=wall,facing=north,powered=false]


execute if score #event_time event matches 2721 run function namespace:main/city/illusion_arena/lomia_event_init/init0

execute if score #event_time event matches 2721.. run scoreboard players set #event_time event 100000