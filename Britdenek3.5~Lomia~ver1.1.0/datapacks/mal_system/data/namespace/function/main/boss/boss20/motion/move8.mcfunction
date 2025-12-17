scoreboard players add @e[tag=boss20,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=shadow,tag=boss20,limit=1] y 

execute as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ~ ~0 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5


execute if entity @e[tag=boss20,tag=body,scores={motion=1..30}] as @e[tag=boss20,tag=head] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.1 3 force


execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~

execute if entity @e[tag=boss20,tag=body,scores={motion=10..14}] as @e[tag=boss20,tag=head] at @s run teleport @s ~ ~ ~ ~ ~1
execute if entity @e[tag=boss20,tag=body,scores={motion=10..14}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~10 ~3
execute if entity @e[tag=boss20,tag=body,scores={motion=10..14}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~-10 ~3
execute if entity @e[tag=boss20,tag=body,scores={motion=10..14}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~3 ~3
execute if entity @e[tag=boss20,tag=body,scores={motion=10..14}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~-3 ~3

execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-2.5
execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~-50 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~50 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~-15 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~15 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 0.7
execute if entity @e[tag=boss20,tag=body,scores={motion=60..61}] as @e[tag=boss20] at @s run particle minecraft:witch ~ ~ ~ 1 1 1 1 40 force

execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run particle minecraft:witch ^ ^ ^3 1 1 1 1 200 force
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 1.3
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet21
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet22
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet23
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance21,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance21,sort=nearest,limit=1] ~ ~0.2 ~ ~-30 0
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance22,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance22,sort=nearest,limit=1] ~ ~0.2 ~ ~-150 0
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance23,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=60}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=boss20_rance23,sort=nearest,limit=1] ~ ~0.2 ~ ~90 0
execute if entity @e[tag=boss20,tag=body,scores={motion=60..79}] as @e[tag=boss20_rance6,tag=boss20_first] at @s run teleport @e[tag=boss20_bomb,sort=nearest,limit=1] ^ ^ ^1.3
execute if entity @e[tag=boss20,tag=body,scores={motion=59}] as @e[tag=boss20_rance6,tag=boss20_first] at @s run tag @s remove boss20_first


execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~

scoreboard players add @e[tag=boss20,tag=body,scores={motion=80},limit=1] motion2 0
scoreboard players add @e[tag=boss20,tag=body,scores={motion=81..170},limit=1] motion2 1

execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~

execute if entity @e[tag=boss20,tag=body,scores={motion2=3,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=3,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=4,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-10
execute if entity @e[tag=boss20,tag=body,scores={motion2=4,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~10
execute if entity @e[tag=boss20,tag=body,scores={motion2=5,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion2=5,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~15
execute if entity @e[tag=boss20,tag=body,scores={motion2=6,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-20
execute if entity @e[tag=boss20,tag=body,scores={motion2=6,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~20
execute if entity @e[tag=boss20,tag=body,scores={motion2=7,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion2=7,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~15
execute if entity @e[tag=boss20,tag=body,scores={motion2=8,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-10
execute if entity @e[tag=boss20,tag=body,scores={motion2=8,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~10
execute if entity @e[tag=boss20,tag=body,scores={motion2=9,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=9,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=10,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~0
execute if entity @e[tag=boss20,tag=body,scores={motion2=10,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~0
execute if entity @e[tag=boss20,tag=body,scores={motion2=11,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=11,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=12,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~10
execute if entity @e[tag=boss20,tag=body,scores={motion2=12,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-10
execute if entity @e[tag=boss20,tag=body,scores={motion2=13,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~15
execute if entity @e[tag=boss20,tag=body,scores={motion2=13,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion2=14,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~20
execute if entity @e[tag=boss20,tag=body,scores={motion2=14,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-20
execute if entity @e[tag=boss20,tag=body,scores={motion2=15,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~15
execute if entity @e[tag=boss20,tag=body,scores={motion2=15,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-15
execute if entity @e[tag=boss20,tag=body,scores={motion2=16,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~10
execute if entity @e[tag=boss20,tag=body,scores={motion2=16,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-10
execute if entity @e[tag=boss20,tag=body,scores={motion2=17,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=17,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=18,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~0
execute if entity @e[tag=boss20,tag=body,scores={motion2=18,motion=81..}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~0


execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss20,tag=body,scores={motion2=3..6,motion=81..}] as @e[tag=boss20,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss20,tag=body,scores={motion2=7..14,motion=81..}] as @e[tag=boss20,tag=head] at @s run teleport @s ~ ~ ~ ~ ~4
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss20,tag=body,scores={motion2=15..18,motion=81..}] as @e[tag=boss20,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-4

execute if entity @e[tag=boss20,tag=body,scores={motion2=3..6,motion=81..}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=3..6,motion=81..}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..14,motion=81..}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..14,motion=81..}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=15..18,motion=81..}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=15..18,motion=81..}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~-1 ~-2
scoreboard players set @e[tag=boss20,tag=body,scores={motion2=18..},limit=1] motion2 0
scoreboard players set @e[tag=boss20,tag=body,scores={motion=170..},limit=1] motion2 0


execute if entity @e[tag=boss20,tag=body,scores={motion=81..170}] as @e[tag=boss20] at @s run teleport @s ~ ~ ~ ~-4 ~

execute if entity @e[tag=boss20,tag=body,scores={motion=81..170}] as @e[tag=boss20,tag=head] at @s run particle minecraft:soul ^ ^1.4 ^1.7 0.1 0.1 0.1 0.02 10 force
execute if entity @e[tag=boss20,tag=body,scores={motion=81..170}] as @e[tag=boss20,tag=head] at @s run scoreboard players set @s bossskill5 0
execute if entity @e[tag=boss20,tag=body,scores={motion=81..170}] as @e[tag=boss20,tag=head] at @s positioned ^ ^1.4 ^ run function namespace:main/boss/boss20/sub/beam

execute as @e[tag=boss20,tag=body,scores={motion=185..},limit=1] at @s run function namespace:main/boss/boss20/motion/random1
execute if entity @e[tag=boss20,tag=body,scores={motion=185..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion 0

