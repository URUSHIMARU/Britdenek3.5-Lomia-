
data merge storage minecraft:bullet {entity:"wandering_trader",health:5,id:1000}
execute store result storage bullet health double 0.15 run scoreboard players get @s magicAttackBase
function namespace:main/entity_model/bullet_template with storage minecraft:bullet
scoreboard players operation @e[tag=entity_first,limit=1,sort=nearest,distance=..1] player = @s player
data merge entity @e[tag=entity_first,limit=1,sort=nearest,distance=..1] {Offers:{},Tags:["magic3_bullet","bullet"]}


