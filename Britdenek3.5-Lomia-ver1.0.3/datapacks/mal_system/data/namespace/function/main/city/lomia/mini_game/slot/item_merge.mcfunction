
execute if entity @s[scores={luckBase=..0}] as @e[type=item_frame,limit=1,distance=..1,sort=nearest] run loot replace entity @s container.0 loot namespace:random/gambling/slot_luck0
execute if entity @s[scores={luckBase=1..90}] as @e[type=item_frame,limit=1,distance=..1,sort=nearest] run loot replace entity @s container.0 loot namespace:random/gambling/slot_luck5
execute if entity @s[scores={luckBase=91..190}] as @e[type=item_frame,limit=1,distance=..1,sort=nearest] run loot replace entity @s container.0 loot namespace:random/gambling/slot_luck10
execute if entity @s[scores={luckBase=191..}] as @e[type=item_frame,limit=1,distance=..1,sort=nearest] run loot replace entity @s container.0 loot namespace:random/gambling/slot_luck20

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.08 0
