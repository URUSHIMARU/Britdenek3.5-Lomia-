kill @e[tag=raco]
execute positioned -438 51 914 run function namespace:main/entity_model/boss/racolondo/raco_arm1
execute positioned -438 51 914 run function namespace:main/entity_model/boss/racolondo/raco_arm2
execute positioned -438 41 914 run function namespace:main/entity_model/boss/racolondo/raco_body
execute positioned -438 51 914 run function namespace:main/entity_model/boss/racolondo/raco_body_under

execute positioned -438 51 914 as @e[tag=raco] at @s run teleport @s ~ ~ ~ -90 ~

execute positioned -438 46 914 as @e[tag=raco,tag=body1] run teleport @s ~ ~ ~ -90 10
execute as @e[tag=raco,tag=body1] at @s run teleport @e[tag=raco,tag=arm1] ^7 ^7 ^ ~ ~30
execute as @e[tag=raco,tag=body1] at @s run teleport @e[tag=raco,tag=arm2] ^-7 ^7 ^ ~ ~30
