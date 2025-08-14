#à íuèÓïÒï€ë∂
scoreboard players add @e[tag=boss4,tag=body,scores={motion=0..},limit=1] motion 1


#èâä˙
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40




#èÌéû

execute as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3


#çUåÇÉÇÅ[ÉVÉáÉì


execute if entity @e[tag=boss4,tag=body,scores={motion=11..14}] as @e[tag=boss4,tag=arm1] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss4,tag=body,scores={motion=11..14}] as @e[tag=boss4,tag=arm2] at @s run teleport @s ~ ~ ~ ~ ~-20

execute if entity @e[tag=boss4,tag=body,scores={motion=17}] as @e[tag=boss4,tag=arm1] at @s run teleport @s ~ ~ ~ ~-40 ~80
execute if entity @e[tag=boss4,tag=body,scores={motion=37}] as @e[tag=boss4,tag=arm2] at @s run teleport @s ~ ~ ~ ~40 ~80
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 10 force
execute if entity @e[tag=boss4,tag=body,scores={motion=40}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 10 force
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=40}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] as @e[tag=boss4,tag=head] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss4,tag=body,scores={motion=40}] as @e[tag=boss4,tag=head] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 3 0.8
execute if entity @e[tag=boss4,tag=body,scores={motion=20}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s minecraft:slowness 3 10 true
execute if entity @e[tag=boss4,tag=body,scores={motion=40}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s minecraft:slowness 3 10 true


execute if entity @e[tag=boss4,tag=body,scores={motion=50}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss4,tag=body,scores={motion=50}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 if entity @e[tag=boss4battle,distance=..3] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss4,tag=body,scores={motion=50}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss4,tag=body,scores={motion=50}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run scoreboard players add @e[tag=boss4,tag=body,scores={HP=..225}] HP 5
execute if entity @e[tag=boss4,tag=body,scores={motion=50}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run execute as @e[tag=boss4,tag=body] at @s store result bossbar minecraft:boss4 value run scoreboard players get @s HP

execute if entity @e[tag=boss4,tag=body,scores={motion=50}] as @e[tag=boss4,tag=head] at @s run playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 1 0.6
execute if entity @e[tag=boss4,tag=body,scores={motion=50..}] as @e[tag=boss4,tag=head] at @s run teleport @s ^ ^ ^0.5
execute if entity @e[tag=boss4,tag=body,scores={motion=50..54}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=55..64}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=65..69}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~2 ~

execute if entity @e[tag=boss4,tag=body,scores={motion=60}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if entity @e[tag=boss4,tag=body,scores={motion=60}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 if entity @e[tag=boss4battle,distance=..3] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.8
execute if entity @e[tag=boss4,tag=body,scores={motion=60}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss4,tag=body,scores={motion=60}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run scoreboard players add @e[tag=boss4,tag=body,scores={HP=..225}] HP 5
execute if entity @e[tag=boss4,tag=body,scores={motion=60}] at @e[tag=boss4,tag=head] positioned ^ ^ ^2 at @e[tag=boss4battle,distance=..3] run execute as @e[tag=boss4,tag=body] at @s store result bossbar minecraft:boss4 value run scoreboard players get @s HP

execute if entity @e[tag=boss4,tag=body,scores={motion=60}] as @e[tag=boss4,tag=head] at @s run playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 1 0.6
execute if entity @e[tag=boss4,tag=body,scores={motion=60..}] as @e[tag=boss4,tag=head] at @s run teleport @s ^ ^ ^0.5
execute if entity @e[tag=boss4,tag=body,scores={motion=60..64}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=65..74}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~-2 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=75..79}] as @e[tag=boss4,tag=head] at @s run teleport @s ~ ~ ~ ~2 ~


execute if entity @e[tag=boss4,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] bossmove 3
execute if entity @e[tag=boss4,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] motion 0




