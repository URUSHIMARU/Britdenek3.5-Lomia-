
execute as @e[tag=summon_mob,tag=magic13] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run data modify entity @s AngryAt set from entity @e[tag=enemy,tag=!bullet,distance=..30,limit=1,sort=nearest] UUID
execute as @e[tag=summon_mob,tag=magic13,nbt={HurtTime:9s}] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run particle minecraft:explosion ~ ~1 ~ 2 1 2 1 7 force
execute as @e[tag=summon_mob,tag=magic13,nbt={HurtTime:9s}] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run particle minecraft:flame ~ ~1 ~ 1 1 1 0.1 30 force
execute as @e[tag=summon_mob,tag=magic13,nbt={HurtTime:9s}] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 1.2
execute as @e[tag=summon_mob,tag=magic13,nbt={HurtTime:9s}] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run scoreboard players operation @e[tag=enemy,distance=..5] commandDamage = @s magicAttackBase
execute as @e[tag=summon_mob,tag=magic13,nbt={HurtTime:9s}] at @s if entity @e[tag=enemy,tag=!bullet,distance=..30] run scoreboard players operation @e[tag=enemy,distance=..5,tag=resist] commandDamage /= #3 cal

execute as @e[tag=summon_mob,tag=magic13] at @s unless entity @e[tag=enemy,tag=!bullet,distance=..30] run data modify entity @s AngryAt set from entity @a[limit=1,sort=nearest] UUID
execute as @e[tag=summon_mob,tag=magic13] at @s unless entity @e[tag=enemy,tag=!bullet,distance=..30] run effect give @s minecraft:weakness 1 1 true
execute as @e[tag=summon_mob,tag=magic13] at @s unless entity @e[tag=enemy,tag=!bullet,distance=..30] if entity @a[limit=1,sort=nearest,distance=..3] run effect give @s slowness 1 15 true
scoreboard players remove @e[tag=summon_mob,tag=magic13] summon_time 1
kill @e[tag=summon_mob,tag=magic13,scores={summon_time=..0}]

execute if entity @e[tag=magic13] run schedule function namespace:main/system/rod/magic/magic13_loop 1t replace

