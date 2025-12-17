execute as @a[scores={mant4=1..}] at @s run effect give @s resistance 1 5 true
execute as @a[scores={mant4=1..}] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~1 ~ 0.5 0.5 0.5 1 3 force


execute as @a[scores={mant4=1..}] at @s run scoreboard players remove @s mant4 1

execute as @a[scores={mant4=..0}] at @s run function namespace:main/system/resist_damage/magic10

execute if entity @a[scores={mant4=1..}] run schedule function namespace:main/system/rod/magic/magic10_loop 1t replace

