tag @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] add skill22_arrow
execute as @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] at @s run data merge entity @s {PierceLevel:10b}
scoreboard players remove @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] bowAttackBase 2
particle minecraft:firework ~ ~ ~ 0 0 0 0.3 10 force
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.7
schedule function namespace:main/system/bow/skill22_loop 1t replace
xp add @s -10 levels
