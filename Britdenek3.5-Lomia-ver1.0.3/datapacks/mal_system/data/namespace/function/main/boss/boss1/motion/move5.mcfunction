
scoreboard players add @e[tag=boss1,tag=body] motion 1

#常時アマスタにボディを固定
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s run teleport @e[tag=boss1,tag=body,limit=1] ~ ~3 ~ ~ ~
#ターン
execute if entity @e[tag=boss1,tag=boss1c,limit=1] as @e[tag=boss1] at @s run teleport @s ~ ~ ~ ~25 ~



#常時
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-arm] ^1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-arm] ^-1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-leg] ^0.5 ^-2 ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-leg] ^-0.5 ^-2 ^

#歩く時の音
execute at @e[tag=boss1,tag=body,scores={motion=1},limit=1] run playsound minecraft:entity.iron_golem.step master @a
execute at @e[tag=boss1,tag=body,scores={motion=10},limit=1] run playsound minecraft:entity.iron_golem.step master @a


#歩きモーションオフセット
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=right-arm,limit=1] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=left-arm,limit=1] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=right-leg,limit=1] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=1},limit=1] as @e[tag=boss1,tag=left-leg,limit=1] at @s run teleport @s ~ ~ ~ ~ 0

execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~ ~-6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=2..6},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~-6

execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~ ~-6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~-6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=7..16},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~6

execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~ ~-6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~6
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob if entity @e[tag=boss1,tag=body,scores={motion=17..21},limit=1] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~-6

#モーションを止める
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s positioned ^ ^ ^5 if entity @e[tag=boss1battle,distance=..5] run scoreboard players set @e[tag=boss1] motion 0
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s positioned ^ ^ ^5 if entity @e[tag=boss1battle,distance=..5] run scoreboard players set @e[tag=boss1] bossmove 4
#敵発見できず攻撃
execute as @e[tag=boss1,tag=body,scores={motion=14}] at @s run scoreboard players set @e[tag=boss1,tag=body] bossmove 4
execute as @e[tag=boss1,tag=body,scores={motion=14}] at @s run scoreboard players set @e[tag=boss1,tag=body] motion 0

