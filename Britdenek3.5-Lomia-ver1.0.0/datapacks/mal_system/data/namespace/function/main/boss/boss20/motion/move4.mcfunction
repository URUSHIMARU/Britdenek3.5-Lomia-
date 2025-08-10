scoreboard players add @e[tag=boss20,tag=body,scores={motion=0..},limit=1] motion 1
execute if entity @e[tag=boss20,tag=body,scores={motion=1}] as @e[tag=boss20,tag=body] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=shadow,tag=boss20,limit=1] y 

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


execute if entity @e[tag=boss20,tag=body,scores={motion=3}] as @e[tag=boss20,tag=body1] at @s run playsound minecraft:entity.warden.dig master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss20,tag=body,scores={motion=10..50}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~-1.4

execute if entity @e[tag=boss20,tag=body,scores={motion=10..50}] as @e[tag=boss20,tag=body1] at @s run particle minecraft:block{block_state:"minecraft:black_concrete"} ~ ~0.2 ~ 1 1 1 1 100 force

execute if entity @e[tag=boss20,tag=body,scores={motion=20..46}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~-0.2 ~ ~ ~


execute if entity @e[tag=boss20,tag=body,scores={motion=30..34}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=30..34}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=35..44}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=35..44}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=45..54}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=45..54}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=55..59}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=55..59}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=51..65}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~3

execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=shadow] at @s run function namespace:main/entity_model/boss/boss20/boss20_bullet1
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20battle,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 9 30 false @e[tag=boss20_shadow1,tag=boss20_first]
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run execute as @e[tag=boss20_shadow1,tag=boss20_first] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=boss20,tag=shadow,limit=1] y
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run execute as @e[tag=boss20_shadow1,tag=boss20_first] at @s unless block ~ ~ ~ #namespace:airs run kill @s
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s as @e[tag=boss20_first] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!bullet,tag=boss20battle ,sort=nearest,limit=1]
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s as @e[tag=boss20_first] at @s run teleport @s ~ ~ ~ ~ 0
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run tag @e[tag=boss20_first] remove boss20_first
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run scoreboard players add @e[tag=boss20_shadow1,sort=random,limit=3] bossskill1 60
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body] at @s run scoreboard players add @e[tag=boss20_shadow1,sort=random,limit=3] bossskill1 100

execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run execute as @e[tag=body,tag=boss20] at @s run teleport @s @e[tag=boss20_shadow1,sort=random,limit=1]
execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run execute as @e[tag=body,tag=boss20] at @s run teleport @s ~ ~-5.4 ~

execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run execute as @e[tag=body,tag=boss20] at @s run kill @e[tag=boss20_shadow1,limit=1]

execute if entity @e[tag=boss20,tag=body,scores={motion=70}] as @e[tag=boss20,tag=body1] at @s run playsound minecraft:entity.warden.dig master @a ~ ~ ~ 2 1


execute if entity @e[tag=boss20,tag=body,scores={motion=60..100}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~-1.4

execute if entity @e[tag=boss20,tag=body,scores={motion=90..94}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=90..94}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=95..104}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=95..104}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=105..114}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=105..114}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=115..119}] as @e[tag=boss20,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~5
execute if entity @e[tag=boss20,tag=body,scores={motion=115..119}] as @e[tag=boss20,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-5
execute if entity @e[tag=boss20,tag=body,scores={motion=111..125}] as @e[tag=boss20,tag=body1] at @s run teleport @s ^ ^ ^ ~ ~3

execute if entity @e[tag=boss20,tag=body,scores={motion=90..116}] as @e[tag=boss20,tag=body] at @s run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss20] ^ ^ ^ ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=head,limit=1,tag=boss20] ^ ^ ^4 ~ ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm1,limit=1,tag=boss20] ^2 ^-0.4 ^2.5 ~-10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=arm2,limit=1,tag=boss20] ^-2 ^-0.4 ^2.5 ~10 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing1,limit=1,tag=boss20] ^0.1 ^0.5 ^2.5 ~-90 ~
execute if entity @e[tag=boss20,tag=body,scores={motion=126}] as @e[tag=boss20,tag=body1] at @s run teleport @e[tag=wing2,limit=1,tag=boss20] ^-0.1 ^0.5 ^2.5 ~90 ~



execute as @e[tag=boss20,tag=body,scores={motion=165..},limit=1] at @s run function namespace:main/boss/boss20/motion/random1
execute if entity @e[tag=boss20,tag=body,scores={motion=165..},limit=1] run scoreboard players set @e[tag=boss20,tag=body] motion 0

