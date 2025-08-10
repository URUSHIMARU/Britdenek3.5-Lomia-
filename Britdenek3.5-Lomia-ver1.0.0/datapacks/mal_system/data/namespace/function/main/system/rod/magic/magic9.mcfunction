execute if entity @s[level=..5] run return 0
execute as @e[tag=enemy,distance=..8] at @s run data merge entity @s {Motion:[0d,-2d,0d]}

particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 5 0.3 5 1 100 force
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0
particle minecraft:explosion ~ ~0.1 ~ 5 0.1 5 1 30 force

execute at @e[tag=enemy,distance=..8] unless block ~ ~-1 ~ #namespace:airs run playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 2 1
execute at @e[tag=enemy,distance=..8] unless block ~ ~-1 ~ #namespace:airs run particle minecraft:explosion ~ ~0.5 ~ 0.5 0.5 0.5 1 5 force

execute at @e[tag=enemy,distance=..8] unless block ~ ~-1 ~ #namespace:airs run scoreboard players operation @e[tag=enemy,distance=..0.1] commandDamage = @s magicAttackBase
execute at @e[tag=enemy,distance=..8] unless block ~ ~-1 ~ #namespace:airs run scoreboard players operation @e[tag=enemy,distance=..0.1] commandDamage /= #2 cal
execute as @e[tag=enemy,distance=..8] at @s unless block ~ ~-1 ~ #namespace:airs run scoreboard players operation @s commandDamage /= #7 cal
execute as @e[tag=enemy,distance=..8] at @s unless block ~ ~-1 ~ #namespace:airs run scoreboard players operation @s[tag=resist] commandDamage /= #3 cal


xp add @s -6 levels

