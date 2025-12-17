particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.05 200 force
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.4 2
execute as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 1011
execute as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run effect give @s minecraft:wither 10 1
