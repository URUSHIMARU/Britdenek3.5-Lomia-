

function namespace:main/entity_model/mob_template {entity:"bat",scale:1.5,health:40,mainhand_id:1000,offhand_id:1000,head_id:1162,legs_id:1000,feet_id:1000,chest_id:1000,mainhand:"white_stained_glass",offhand:"white_stained_glass",head:"white_stained_glass",chest:"golden_chestplate",legs:"golden_leggings",feet:"golden_boots"}
scoreboard players set @e[tag=mob_first,limit=1,sort=nearest,distance=..1] player 0
data merge entity @e[tag=mob_first,limit=1,sort=nearest,distance=..1] {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["skill47","skill47_bat"]}


