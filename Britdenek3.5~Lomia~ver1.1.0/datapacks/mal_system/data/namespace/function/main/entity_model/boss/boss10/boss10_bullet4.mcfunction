function namespace:main/entity_model/bullet_template {entity:"armor_stand",health:15,id:1088}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss10,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Tags:["enemy","boss10_attack4"]}


