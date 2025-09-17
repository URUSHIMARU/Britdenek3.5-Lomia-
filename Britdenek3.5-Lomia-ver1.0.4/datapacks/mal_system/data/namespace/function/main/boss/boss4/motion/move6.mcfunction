#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss4,tag=body,scores={motion=0..},limit=1] motion 1


#èâä˙
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40

#à–ädÉÇÅ[ÉVÉáÉì

execute if entity @e[tag=boss4,tag=body,scores={motion=5..10}] as @e[tag=boss4,limit=1,tag=body2] at @s run teleport @s ~ ~ ~ ~ ~8
execute if entity @e[tag=boss4,tag=body,scores={motion=5..10}] as @e[tag=boss4,limit=1,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~2
execute if entity @e[tag=boss4,tag=body,scores={motion=5..10}] as @e[tag=boss4,limit=1,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~2

execute if entity @e[tag=boss4,tag=body,scores={motion=10..14}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~4 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=15..24}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~-4 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=25..29}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~4 ~

execute if entity @e[tag=boss4,tag=body,scores={motion=30..34}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~6 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=35..44}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~-6 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=45..49}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~6 ~

execute if entity @e[tag=boss4,tag=body,scores={motion=15}] as @e[tag=boss4,limit=1,tag=body2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1.6 ^-6 0 0 0 1 1000 force
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,limit=1,tag=body2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1.6 ^-6 0 0 0 1 1000 force
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1.6 ^-6 0 0 0 1 1000 force
execute if entity @e[tag=boss4,tag=body,scores={motion=30}] as @e[tag=boss4,limit=1,tag=body2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1.6 ^-6 0 0 0 1 1000 force
execute if entity @e[tag=boss4,tag=body,scores={motion=35}] as @e[tag=boss4,limit=1,tag=body2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1.6 ^-6 0 0 0 1 1000 force


execute if entity @e[tag=boss4,tag=body,scores={motion=15}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":0.0,"dy":1.3,"dz":0.5}
execute if entity @e[tag=boss4,tag=body,scores={motion=15}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":0.433,"dy":1.3,"dz":-0.255}
execute if entity @e[tag=boss4,tag=body,scores={motion=15}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-0.433,"dy":1.3,"dz":-0.255}
execute if entity @e[tag=boss4,tag=body,scores={motion=15}] as @e[tag=boss4,limit=1,tag=body2] at @s run playsound minecraft:entity.llama.spit master @a ^ ^1.6 ^-6 2 1.2

execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":1.0,"dy":1.3,"dz":0.0}
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-0.5,"dy":1.3,"dz":-0.866}
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-0.5,"dy":1.3,"dz":0.866}
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,limit=1,tag=body2] at @s run playsound minecraft:entity.llama.spit master @a ^ ^1.6 ^-6 2 1.2

execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":0.0,"dy":1.4,"dz":1.5}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":1.299,"dy":1.4,"dz":-0.755}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-1.299,"dy":1.4,"dz":-0.755}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s run playsound minecraft:entity.llama.spit master @a ^ ^1.6 ^-6 2 1.2

execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":0.0,"dy":1.6,"dz":-1.5}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-1.299,"dy":1.6,"dz":0.755}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":1.299,"dy":1.6,"dz":0.755}
execute if entity @e[tag=boss4,tag=body,scores={motion=25}] as @e[tag=boss4,limit=1,tag=body2] at @s run playsound minecraft:entity.llama.spit master @a ^ ^1.6 ^-6 2 1.2


execute if entity @e[tag=boss4,tag=body,scores={motion=35}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":0.0,"dy":1.5,"dz":-2}
execute if entity @e[tag=boss4,tag=body,scores={motion=35}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":1.731,"dy":1.5,"dz":1}
execute if entity @e[tag=boss4,tag=body,scores={motion=35}] as @e[tag=boss4,limit=1,tag=body2] at @s positioned ^ ^0.6 ^-6 run function namespace:main/entity_model/boss/boss4/boss4_bullet1 {"dx":-1.731,"dy":1.5,"dz":1}
execute if entity @e[tag=boss4,tag=body,scores={motion=35}] as @e[tag=boss4,limit=1,tag=body2] at @s run playsound minecraft:entity.llama.spit master @a ^ ^1.6 ^-6 2 1.2



execute if entity @e[tag=boss4,tag=body,scores={motion=81..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] bossmove 3
execute if entity @e[tag=boss4,tag=body,scores={motion=81..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] motion 0




