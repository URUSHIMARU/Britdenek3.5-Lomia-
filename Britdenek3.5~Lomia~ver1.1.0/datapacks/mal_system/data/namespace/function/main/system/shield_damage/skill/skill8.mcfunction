scoreboard players operation @e[tag=enemy,distance=..4,limit=5] commandDamage = @s shield_damage
scoreboard players operation @e[tag=enemy,distance=..4,limit=5] commandDamage /= #10 cal
particle minecraft:explosion ~ ~ ~ 3 1 3 1 8 force
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1.5
particle minecraft:wax_off ~ ~ ~ 1 1 1 100 30 force

xp add @s -5 levels
