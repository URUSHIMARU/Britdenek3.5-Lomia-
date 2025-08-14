function namespace:main/entity_model/boss_template_body {id:"1219",entity:"vindicator",scale:1}
execute as @e[tag=boss_first,limit=1,sort=nearest] at @s run function namespace:main/system/cal/attribute/set_scale {"value":4}
data merge entity @e[tag=boss_first,limit=1,sort=nearest,distance=0] {Tags:["raco","body1"],Invulnerable:true}

