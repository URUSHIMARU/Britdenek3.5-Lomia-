function namespace:main/entity_model/bullet_template {entity:"vindicator",health:100,id:1000}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss14,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Invulnerable:1b,NoAI:0b,NoGravity:0b,Tags:["boss14_attack","boss14_attack1"]}


