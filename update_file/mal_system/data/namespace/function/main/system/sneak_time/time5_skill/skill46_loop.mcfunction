particle minecraft:dust{color:[0,0,0],scale:2} ~ ~1 ~ 1 1 1 1 3 force
execute if entity @s[scores={skill46_count=1}] run particle minecraft:dust{color:[0,0,0],scale:2} ~ ~1 ~ 1 1 1 1 100 force
execute if entity @s[scores={skill46_count=1}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 0.8
scoreboard players remove @s skill46_count 1

