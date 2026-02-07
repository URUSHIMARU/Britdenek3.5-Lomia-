function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:15,id:1123}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss14,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {offers:{},Tags:["bullet","enemy","boss14_attack","boss14_attack2"]}


