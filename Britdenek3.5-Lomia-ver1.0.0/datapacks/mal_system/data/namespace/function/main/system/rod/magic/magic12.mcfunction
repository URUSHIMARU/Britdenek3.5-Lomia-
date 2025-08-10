execute if entity @s[level=..14] run return 0

execute if entity @s[scores={magicAttackBase=0..5}] run effect clear @s
execute if entity @s[scores={magicAttackBase=0..5}] run particle minecraft:glow ~ ~1.5 ~ 0.5 0.5 0.5 1 5 force

execute if entity @s[scores={magicAttackBase=6..8}] run function namespace:main/system/rod/magic/magic12_clear_effect
execute if entity @s[scores={magicAttackBase=6..8}] run particle minecraft:glow ~ ~1.5 ~ 0.5 0.5 0.5 1 10 force

execute if entity @s[scores={magicAttackBase=9..}] at @e[tag=player,distance=..5] as @s run function namespace:main/system/rod/magic/magic12_clear_effect
execute if entity @s[scores={magicAttackBase=9..}] at @e[tag=player,distance=..5] as @s run particle minecraft:glow ~ ~1.5 ~ 0.5 0.5 0.5 1 10 force

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 0


xp add @s -15 levels

