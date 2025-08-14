execute as @e[tag=enemy,tag=bullet,sort=nearest,distance=..10] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=enemy,tag=bullet,sort=nearest,distance=..10] at @s run kill @s
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.8 1.5

xp add @s -5 levels

