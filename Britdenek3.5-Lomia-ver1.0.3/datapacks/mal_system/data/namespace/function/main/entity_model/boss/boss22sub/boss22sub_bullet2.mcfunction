execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:15,id:1106}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:25,id:1106}
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers:{},Tags:["bullet","enemy","boss22sub_attack","boss22sub_attack2"]}


