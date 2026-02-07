execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:20,id:1162}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"wandering_trader",health:40,id:1162}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss22,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers: {},Tags:["boss22_first","bullet","enemy","boss22_attack","boss22_attack3"]}




