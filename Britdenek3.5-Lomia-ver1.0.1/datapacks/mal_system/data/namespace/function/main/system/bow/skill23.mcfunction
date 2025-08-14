scoreboard players set @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] result 1
tag @e[type=arrow,sort=nearest,distance=..0.5,nbt={inGround:0b}] add skill23_arrow
schedule function namespace:main/system/bow/skill23_loop 1t replace
xp add @s -10 levels
