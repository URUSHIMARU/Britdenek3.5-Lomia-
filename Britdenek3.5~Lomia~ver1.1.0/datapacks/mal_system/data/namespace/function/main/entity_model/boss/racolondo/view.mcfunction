function namespace:main/entity_model/boss_template_body {id:"1223",entity:"wandering_trader",scale:1}
effect give @e[tag=boss_first,limit=1,sort=nearest] glowing infinite 1 true
execute as @e[tag=boss_first,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":4}
data merge entity @e[tag=boss_first,limit=1,sort=nearest,distance=0] {Offers: {},Tags:["raco","view"],Invulnerable:true,Rotation:[-90,0]}

