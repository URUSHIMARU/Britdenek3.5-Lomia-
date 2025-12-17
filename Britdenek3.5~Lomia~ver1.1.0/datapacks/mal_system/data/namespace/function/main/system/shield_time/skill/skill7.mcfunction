execute positioned ^ ^1 ^2 run scoreboard players operation @e[tag=enemy,distance=..3,limit=5] commandDamage = @s guardBase
execute positioned ^ ^1 ^2 run scoreboard players operation @e[tag=enemy,distance=..4,limit=5] commandDamage /= #10 cal
execute positioned ^ ^1 ^2 run particle minecraft:explosion ~ ~ ~ 1.5 1 1.5 1 8 force
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.8


scoreboard players add @s skill8 1
execute if score @s skill8 matches 40.. run advancement grant @s only namespace:skill/normal/skill8

xp add @s -5 levels
