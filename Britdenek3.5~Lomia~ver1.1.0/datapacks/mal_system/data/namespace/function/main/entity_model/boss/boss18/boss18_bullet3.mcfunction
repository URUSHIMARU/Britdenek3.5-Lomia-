function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:20,id:1162}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss18,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers: {},Tags:["boss18_first","bullet","enemy","boss18_attack","boss18_attack3"]}


