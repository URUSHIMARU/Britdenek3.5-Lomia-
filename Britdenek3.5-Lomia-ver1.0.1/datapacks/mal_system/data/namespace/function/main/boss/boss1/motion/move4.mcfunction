execute if entity @e[tag=boss1,tag=body,scores={motion=60..}] run function namespace:main/boss/boss1/motion/random
scoreboard players add @e[tag=boss1,tag=body] motion 1

#�펞�A�}�X�^�Ƀ{�f�B���Œ�
execute as @e[tag=boss1,tag=boss1c,limit=1] at @s run teleport @e[tag=boss1,tag=body,limit=1] ~ ~3 ~ ~ ~


#�펞
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-arm] ^1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-arm] ^-1.1 ^ ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=right-leg] ^0.5 ^-2 ^
execute at @e[tag=boss1,tag=body] run teleport @e[tag=boss1,tag=left-leg] ^-0.5 ^-2 ^

#�I�t�Z�b�g
execute as @e[tag=boss1,tag=body,scores={motion=1}] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=right-arm,limit=1] ^1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=left-arm,limit=1] ^-1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=right-leg,limit=1] ^0.5 ^-2 ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=1}] at @s run teleport @e[tag=boss1,tag=left-leg,limit=1] ^-0.5 ^-2 ^ ~ 0

#�\��
execute as @e[tag=boss1,tag=body,scores={motion=2..15}] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=body] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~18 ~-7
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~-18 ~-7
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @e[tag=boss1,tag=body,scores={motion=2..4}] as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.1

#�J��
execute as @e[tag=boss1,tag=body,scores={motion=30..32}] at @s run teleport @s ~ ~ ~ ~ ~-1
execute if entity @e[tag=boss1,tag=body,scores={motion=20..30}] as @e[tag=boss1,tag=body] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss1,tag=body,scores={motion=20}] as @e[tag=boss1,tag=right-arm] at @s run teleport @s ~ ~ ~ ~-120 ~-60
execute if entity @e[tag=boss1,tag=body,scores={motion=20}] as @e[tag=boss1,tag=left-arm] at @s run teleport @s ~ ~ ~ ~120 ~-60
execute if entity @e[tag=boss1,tag=body,scores={motion=20}] as @e[tag=boss1,tag=right-leg] at @s run teleport @s ~ ~ ~ ~-10 ~
execute if entity @e[tag=boss1,tag=body,scores={motion=20}] as @e[tag=boss1,tag=left-leg] at @s run teleport @s ~ ~ ~ ~10 ~
execute if entity @e[tag=boss1,tag=body,scores={motion=20}] as @e[tag=boss1,tag=boss1c,limit=1] at @s if block ^ ^ ^1 #namespace:airs_for_mob if block ^ ^ ^2 #namespace:airs_for_mob if block ^1 ^ ^1 #namespace:airs_for_mob if block ^-1 ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^0.1
#�U��
execute if entity @e[tag=boss1,tag=body,scores={motion=22}] as @e[tag=boss1,tag=body] at @s run particle minecraft:sweep_attack ^ ^-1 ^3 2.5 1 2.5 1 100 force
execute if entity @e[tag=boss1,tag=body,scores={motion=22}] as @e[tag=boss1,tag=body] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1.5 0.7
execute if entity @e[tag=boss1,tag=body,scores={motion=22}] as @e[tag=boss1,tag=boss1c,limit=1] at @s positioned ^ ^ ^5 as @e[tag=boss1battle,distance=..5] unless score @s player = @e[tag=boss1c,limit=1] player run scoreboard players set @s commandDamage 28

execute as @e[tag=boss1,tag=body,scores={motion=1}] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=41}] at @s run teleport @e[tag=boss1,tag=right-arm,limit=1] ^1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=41}] at @s run teleport @e[tag=boss1,tag=left-arm,limit=1] ^-1.1 ^ ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=41}] at @s run teleport @e[tag=boss1,tag=right-leg,limit=1] ^0.5 ^-2 ^ ~ 0
execute as @e[tag=boss1,tag=body,limit=1,scores={motion=41}] at @s run teleport @e[tag=boss1,tag=left-leg,limit=1] ^-0.5 ^-2 ^ ~ 0




