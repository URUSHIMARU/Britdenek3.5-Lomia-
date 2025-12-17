execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:15,id:1229}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:25,id:1229}

execute as @e[tag=entity_first,limit=1,sort=nearest,distance=..1] at @s run function namespace:main/system/cal/attribute/set_scale {"value":1.5}
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers:{},Tags:["boss27_first","boss27_attack2","boss27_attack","bullet","enemy"]}


