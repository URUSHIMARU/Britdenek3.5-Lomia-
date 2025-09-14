kill @e[type=item_frame,tag=slot]

summon minecraft:item_frame -409.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num1"]}
summon minecraft:item_frame -409.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num2"]}
summon minecraft:item_frame -409.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 93, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num3"]}
summon minecraft:item_frame -408.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num4"]}
summon minecraft:item_frame -408.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num5"]}
summon minecraft:item_frame -408.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num6"]}
summon minecraft:item_frame -407.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num7"]}
summon minecraft:item_frame -407.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num8"]}
summon minecraft:item_frame -407.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot1","slot_num9"]}



summon minecraft:item_frame -414.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num1"]}
summon minecraft:item_frame -414.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num2"]}
summon minecraft:item_frame -414.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -410, 93, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num3"]}
summon minecraft:item_frame -413.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num4"]}
summon minecraft:item_frame -413.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num5"]}
summon minecraft:item_frame -413.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -409, 94, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num6"]}
summon minecraft:item_frame -412.50 95.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num7"]}
summon minecraft:item_frame -412.50 94.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num8"]}
summon minecraft:item_frame -412.50 93.50 881.03 {Silent:1b,Facing: 3b, block_pos: [I; -408, 95, 881], ItemRotation: 0b, Invulnerable: 1b,  Fixed: 1b,Tags:["slot","slot2","slot_num9"]}

execute as @e[tag=slot,type=minecraft:item_frame] at @s run loot replace entity @s container.0 loot namespace:random/gambling/slot_luck0
team join green @e[tag=slot,type=item_frame]