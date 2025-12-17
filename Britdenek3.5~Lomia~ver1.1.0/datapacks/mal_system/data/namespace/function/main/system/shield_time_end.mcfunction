scoreboard players set @s shield_time 0
execute as @s[tag=skill7,level=5..,scores={sneak=1..},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{"species": "shield"}}}}}] at @s run function namespace:main/system/shield_time/skill/skill7


