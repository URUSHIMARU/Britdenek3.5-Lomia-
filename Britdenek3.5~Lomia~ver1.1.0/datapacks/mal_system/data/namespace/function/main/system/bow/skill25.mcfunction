execute as @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] at @s run data modify entity @s item.components."minecraft:potion_contents" set from entity @a[limit=1,sort=nearest,tag=skill25,scores={sneak=1..,bow=1..}] equipment.offhand.components."minecraft:potion_contents"
particle minecraft:witch ~ ~0.5 ~ 0.5 0.5 0.5 1 10 force
xp add @s -10 levels
