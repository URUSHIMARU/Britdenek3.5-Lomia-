scoreboard players add @s bossskill5 1
particle minecraft:flash ~ ~ ~ 0 0 0 1 3 force
particle minecraft:soul ~ ~ ~ 0 0 0 0.2 1 force
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.6 2

execute as @e[tag=boss20battle,distance=..4] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run scoreboard players set @s commandDamage 1026
execute as @e[tag=boss20battle,distance=..4] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run effect give @s minecraft:mining_fatigue 8 10 false
execute as @e[tag=boss20battle,distance=..4] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run xp add @s -20 levels


execute unless entity @e[tag=boss20_bomb,distance=..5] if entity @s[scores={bossskill5=..40}] positioned ^ ^ ^1.7 run function namespace:main/boss/boss20/sub/beam


