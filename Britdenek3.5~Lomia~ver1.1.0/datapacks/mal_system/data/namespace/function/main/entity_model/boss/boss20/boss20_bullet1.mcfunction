function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:50,id:1176}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss20,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers: {},Tags:["boss20_first","boss20_shadow1","boss20_attack"]}


