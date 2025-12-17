#$tellraw @a [{"translate":"system.system.illusion_arena.text.$(illusion_arena)"}]
$execute unless entity @e[tag=boss,tag=body,tag=boss$(illusion_arena)] if entity @a[x=-359,y=5,z=890,dx=70,dy=70,dz=70] run scoreboard players set #boss$(illusion_arena) arena 1
$execute unless entity @e[tag=boss,tag=body,tag=boss$(illusion_arena)] if entity @a[x=-359,y=5,z=890,dx=70,dy=70,dz=70] run function namespace:main/city/illusion_arena/arena_on/check_advancement


$execute unless entity @e[tag=boss,tag=body,tag=boss$(illusion_arena)] run function namespace:main/city/illusion_arena/arena_on/illusion_arena_init


