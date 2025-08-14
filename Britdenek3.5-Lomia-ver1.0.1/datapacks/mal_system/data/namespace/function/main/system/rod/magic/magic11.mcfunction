execute if entity @s[level=..14] run return 0

execute if entity @s[scores={magicAttackBase=0..2},tag=!undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={magicAttackBase=0..2},tag=undead] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[scores={magicAttackBase=0..2}] run particle minecraft:heart ~ ~1.5 ~ 0 0 0 1 1

execute if entity @s[scores={magicAttackBase=3..5},tag=!undead] run effect give @s minecraft:instant_health 1 1 true
execute if entity @s[scores={magicAttackBase=3..5},tag=undead] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[scores={magicAttackBase=3..5}] run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 1 3


execute if entity @s[scores={magicAttackBase=6..8},tag=!undead] run effect give @s minecraft:instant_health 1 2 true
execute if entity @s[scores={magicAttackBase=6..8},tag=undead] run effect give @s minecraft:instant_damage 1 2 true
execute if entity @s[scores={magicAttackBase=6..8}] run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 1 5

execute if entity @s[scores={magicAttackBase=9..}] at @e[tag=player,distance=..5,tag=!undead] as @s run effect give @s minecraft:instant_health 1 3 true
execute if entity @s[scores={magicAttackBase=9..}] at @e[tag=player,distance=..5,tag=undead] as @s run effect give @s minecraft:instant_damage 1 3 true
execute if entity @s[scores={magicAttackBase=9..}] at @e[tag=player,distance=..5] as @s run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 1 5

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 2


xp add @s -15 levels

