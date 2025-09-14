
scoreboard players remove @a[scores={skill18_timer=1..}] skill18_timer 1
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 1 40 force
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run particle minecraft:lava ~ ~1 ~ 2 1 2 1 30 force
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.7 100 force
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run scoreboard players operation @e[tag=enemy,distance=..7] commandDamage = @s skill18_damage
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run scoreboard players operation @e[tag=enemy,distance=..7] commandDamage /= #10 cal
execute as @a[tag=skill18,scores={skill18_timer=1,skill18_damage=1..},level=30..] at @s run xp add @s -30 levels
execute if entity @a[tag=skill18,scores={skill18_timer=1..}] run schedule function namespace:main/system/sneak_time/skill18 1t replace