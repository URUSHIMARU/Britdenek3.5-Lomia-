execute if score #difficulty difficulty matches ..1 run function namespace:main/entity_model/bullet_template {entity:"vindicator",health:20,id:1000}
execute if score #difficulty difficulty matches 2.. run function namespace:main/entity_model/bullet_template {entity:"vindicator",health:35,id:1000}
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @e[tag=boss28,limit=1,tag=body] player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers:{},Tags:["boss28_first","boss28_attack3","boss28_attack","bullet","enemy"]}

