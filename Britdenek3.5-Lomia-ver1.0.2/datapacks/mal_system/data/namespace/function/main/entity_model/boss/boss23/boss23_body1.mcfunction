function namespace:main/entity_model/boss_template_body {id:"1200",entity:"vindicator",scale:1}
execute as @e[tag=boss_first,limit=1,sort=nearest,distance=0] run function namespace:main/system/cal/attribute/set_armor {"value":1000000000}

data merge entity @e[tag=boss_first,limit=1,sort=nearest,distance=0] {Tags:["boss23","boss","enemy","body1"]}

