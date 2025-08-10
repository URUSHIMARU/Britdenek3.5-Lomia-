kill @e[tag=npc24,tag=lomia]
execute align xyz positioned ~0.5 ~ ~0.5 run function namespace:main/entity_model/mob_template {entity:"villager",scale:1.0,health:20,mainhand_id:23,offhand_id:1000,head_id:0,legs_id:0,feet_id:0,chest_id:0,mainhand:"gray_stained_glass",offhand:"air",head:"air",chest:"air",legs:"air",feet:"air"}
effect give @e[tag=mob_first,limit=1,sort=nearest,distance=..1] minecraft:invisibility infinite 1 true
data merge entity @e[tag=mob_first,limit=1,sort=nearest,distance=..1] {CustomName:{"translate":"system.talk.lomia.npc24.name"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["Immortal","lomia","npc","npc24"]}
scoreboard players set #lomia_npc24 npc_talk 0
