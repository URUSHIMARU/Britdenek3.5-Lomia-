
data merge storage minecraft:bullet {entity:"wandering_trader",health:5,id:1000}
execute store result storage bullet health double 0.1 run scoreboard players get @s attackBase
function namespace:main/entity_model/bullet_template with storage minecraft:bullet
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers:{},Tags:["skill36_bullet","bullet"]}


