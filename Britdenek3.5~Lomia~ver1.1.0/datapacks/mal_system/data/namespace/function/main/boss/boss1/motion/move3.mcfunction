
execute if entity @e[tag=boss1,tag=body,scores={motion=61..}] run function namespace:main/boss/boss1/motion/random
scoreboard players add @e[tag=boss1,tag=body] motion 1

#常時アマスタにボディを固定
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s run teleport @e[tag=boss1,tag=body,limit=1] ~ ~3 ~ ~ ~

#常時
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-arm] ^1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-arm] ^-1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-leg] ^0.5 ^-2 ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-leg] ^-0.5 ^-2 ^

#オフセット
execute as @e[tag=boss1,tag=body,scores={motion=1}] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=right-arm,limit=1] ^1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=left-arm,limit=1] ^-1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=right-leg,limit=1] ^0.5 ^-2 ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=left-leg,limit=1] ^-0.5 ^-2 ^ ~ 0

#振り上げ
execute as @e[tag=boss1,tag=body,scores={motion=2..15}] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=body] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss1,tag=body,scores={motion=2..15}] as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs if block ^ ^ ^2 #namespace:airs if block ^1 ^ ^1 #namespace:airs if block ^-1 ^ ^1 #namespace:airs run teleport @s ^ ^ ^0.1

#振り下ろし
execute as @e[tag=boss1,tag=body,scores={motion=35..36}] at @s run teleport @s ~ ~ ~ ~ ~6
execute if entity @e[tag=boss1,tag=body,scores={motion=30..31}] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~ ~50
execute if entity @e[tag=boss1,tag=body,scores={motion=30..31}] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss1,tag=body,scores={motion=30..31}] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~-5 ~40
execute if entity @e[tag=boss1,tag=body,scores={motion=30..31}] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~5 ~-10
execute if entity @e[tag=boss1,tag=body,scores={motion=30}] as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs if block ^ ^ ^2 #namespace:airs if block ^1 ^ ^1 #namespace:airs if block ^-1 ^ ^1 #namespace:airs run teleport @s ^ ^ ^0.5
#音
execute if entity @e[tag=boss1,tag=body,scores={motion=33}] as @e[tag=boss1,tag=right-leg] at @s run particle minecraft:explosion ^ ^-2 ^ 0.3 0.3 0.3 1 10 force
execute if entity @e[tag=boss1,tag=body,scores={motion=33}] as @e[tag=boss1,tag=right-leg] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.2
execute if entity @e[tag=boss1,tag=body,scores={motion=33}] as @e[tag=boss1,tag=boss1c] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 4 0 4 1 1000
execute if entity @e[tag=boss1,tag=body,scores={motion=33}] as @e[tag=boss1,tag=boss1c,limit=1] at @s as @e[nbt={OnGround:1b},tag=boss1battle,distance=..7] unless score @s player = @e[tag=boss1c,limit=1] player run scoreboard players set @s commandDamage 26


