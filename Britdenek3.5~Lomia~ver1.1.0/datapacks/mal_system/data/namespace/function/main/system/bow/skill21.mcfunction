tag @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] add skill21_arrow
scoreboard players add @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] bowAttackBase 5
particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 1 4 force
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 2
schedule function namespace:main/system/bow/skill21_loop 1t replace
xp add @s -10 levels
