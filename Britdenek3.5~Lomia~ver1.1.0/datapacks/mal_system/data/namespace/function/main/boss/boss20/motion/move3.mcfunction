scoreboard players add @e[tag=boss20,tag=body,scores={motion=0..},limit=1] motion 1
scoreboard players add @e[tag=boss20,tag=body,scores={motion=50..},limit=1] motion2 1

execute as @e[tag=boss20,tag=body] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=shadow,tag=boss20,limit=1] y 

tag @e[tag=body,tag=boss20,tag=stop] remove stop
execute as @e[tag=boss20] at @s unless block ^ ^1 ^2 #namespace:airs_for_mob run tag @e[tag=boss20,tag=body] add stop
execute if entity @e[tag=boss20,tag=body,scores={motion=50..},limit=1] as @e[tag=boss20,tag=body,tag=!stop] at @s run teleport @s ^ ^ ^1 ~ ~


execute as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ~ ~0 ~
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5
execute as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5


execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~


execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss20,tag=body,scores={motion=2}] as @e[tag=boss20,tag=arm2] at @s run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 4 0
execute if entity @e[tag=boss20,tag=body,scores={motion=2..6}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss20,tag=body,scores={motion=2..6}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~10

execute if entity @e[tag=boss20,tag=body,scores={motion=10..19}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=10..19}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5


execute if entity @e[tag=boss20,tag=body,scores={motion2=1..}] as @e[tag=boss20,tag=body1] at @s run particle minecraft:block{block_state:"minecraft:black_concrete"} ~ ~0.2 ~ 1 1 1 1 100 force

execute if entity @e[tag=boss20,tag=body,scores={motion2=1},tag=stop] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss20battle,limit=1,sort=random]
execute if entity @e[tag=boss20,tag=body,scores={motion2=1},tag=stop] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss20,tag=body,scores={motion2=1},tag=stop] as @e[tag=boss20,tag=body] at @s run tag @e[tag=body,tag=boss20,tag=stop] remove stop



execute if entity @e[tag=boss20,tag=body,scores={motion2=1}] as @e[tag=boss20,tag=body1] at @s run playsound minecraft:block.cave_vines.step master @a ~ ~ ~ 1 0
execute if entity @e[tag=boss20,tag=body,scores={motion2=11}] as @e[tag=boss20,tag=body1] at @s run playsound minecraft:block.cave_vines.step master @a ~ ~ ~ 1 0


execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion2=1..2}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~


execute if entity @e[tag=boss20,tag=body,scores={motion2=2..6}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=2..6}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..16}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..16}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=17..21}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion2=17..21}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5


execute if entity @e[tag=boss20,tag=body,scores={motion2=2..6}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=2..6}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..16}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~-1 ~-2
execute if entity @e[tag=boss20,tag=body,scores={motion2=7..16}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=17..21}] as @e[tag=boss20,tag=wing1] at @s run teleport @s ~ ~ ~ ~1 ~2
execute if entity @e[tag=boss20,tag=body,scores={motion2=17..21}] as @e[tag=boss20,tag=wing2] at @s run teleport @s ~ ~ ~ ~-1 ~-2



scoreboard players set @e[tag=boss20,tag=body,scores={motion2=21..},limit=1] motion2 0


execute if entity @e[tag=boss20,tag=body,scores={motion=50..},limit=1,tag=!stop] as @e[tag=boss20] at @s run particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 1 1 force @a
execute if entity @e[tag=boss20,tag=body,scores={motion=50..},limit=1,tag=!stop] as @e[tag=boss20] at @s as @e[tag=boss20battle,distance=..3] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss20,tag=body,scores={motion=50..},limit=1,tag=!stop] as @e[tag=boss20] at @s as @e[tag=boss20battle,distance=..3] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run effect give @s minecraft:levitation 1 8 true


execute as @e[tag=boss20,tag=body,scores={motion=134..},limit=1] at @s run function namespace:main/boss/boss20/motion/random1
execute if entity @e[tag=boss20,tag=body,scores={motion=134..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion2 0
execute if entity @e[tag=boss20,tag=body,scores={motion=134..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion 0



