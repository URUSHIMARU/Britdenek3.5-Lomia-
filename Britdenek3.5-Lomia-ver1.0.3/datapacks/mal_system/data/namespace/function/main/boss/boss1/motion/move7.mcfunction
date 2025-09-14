scoreboard players add @e[tag=boss1,tag=body] motion 1
execute if entity @e[tag=boss1,tag=body,scores={motion=25..}] run function namespace:main/boss/boss1/motion/random

#常時アマスタにボディを固定
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s run teleport @e[tag=boss1,tag=body,limit=1] ~ ~3 ~ ~ ~

#向いている方向に歩く
#execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^ #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^1


#常時
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-arm] ^1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-arm] ^-1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-leg] ^0.5 ^-2 ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-leg] ^-0.5 ^-2 ^

#歩く時の音
execute at @e[tag=boss1,tag=body,scores={motion=1},limit=1] run playsound minecraft:entity.iron_golem.step master @a
execute at @e[tag=boss1,tag=body,scores={motion=10},limit=1] run playsound minecraft:entity.iron_golem.step master @a


#歩きモーションオフセット
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=right-leg,limit=1] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=left-leg,limit=1] at @s run teleport @s ~ ~ ~ ~ 0

execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~-6

execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~-6
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~6

execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~-6




#モーションを止める
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s positioned ^ ^ ^4 if entity @e[tag=boss1battle,distance=..4] run scoreboard players set @e[tag=boss1] motion 14
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s positioned ^ ^ ^7 if entity @e[tag=boss1battle,distance=..4] run scoreboard players set @e[tag=boss1] motion 14
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] at @s positioned ^ ^ ^10 if entity @e[tag=boss1battle,distance=..4] run scoreboard players set @e[tag=boss1] motion 14


#ターン
execute if entity @e[tag=boss1,tag=body,limit=1,scores={motion=1..14}] as @e[tag=boss1] at @s run teleport @s ~ ~ ~ ~25 ~


