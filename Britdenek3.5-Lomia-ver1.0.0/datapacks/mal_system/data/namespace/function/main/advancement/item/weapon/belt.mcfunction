
effect give @s[level=9..] minecraft:strength 1 0 false
effect give @s[level=9..] minecraft:haste 1 7 false
execute as @s[level=9..] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.3 2
execute as @s[level=9..] run particle minecraft:lava ~ ~1.5 ~ 0.5 0.5 0.5 1 5 force

xp add @s[level=9..] -9 levels


advancement revoke @s only namespace:all/item/weapon/belt

