scoreboard players add @e[tag=boss14,tag=body,scores={motion=0..},limit=1] motion 1


#execute as @e[tag=boss14,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss14] ~ ~ ~ 
execute as @e[tag=boss14,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body3] at @s run teleport @e[tag=body4,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head1,limit=1,tag=boss14] ^ ^0.25 ^4
execute as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head2,limit=1,tag=boss14] ^ ^ ^4


execute as @e[tag=boss14,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail2] at @s run teleport @e[tag=tail3,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail3] at @s run teleport @e[tag=tail4,limit=1,tag=boss14] ^ ^ ^3.4
execute as @e[tag=boss14,tag=tail4] at @s run teleport @e[tag=tail5,limit=1,tag=boss14] ^ ^ ^2.8


#ボディパーツ転送
execute if entity @e[tag=boss14,tag=body,scores={motion=1}] as @e[tag=body,tag=boss14] at @s positioned ~ ~-20 ~ run tp @e[tag=boss14,tag=!body] ~ ~ ~

execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body1] at @s run teleport @e[tag=body1,limit=1,tag=boss14] ~ ~ ~ ~ -90

execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body1] at @s run teleport @e[tag=body2,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body2] at @s run teleport @e[tag=body3,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body3] at @s run teleport @e[tag=body4,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head1,limit=1,tag=boss14] ^ ^0.25 ^4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=1..2}] as @e[tag=boss14,tag=body4] at @s run teleport @e[tag=head2,limit=1,tag=boss14] ^ ^ ^4 ~ ~


execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~1.4 ~ 


execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~3
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~5
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~7
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40


execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run particle block{block_state:"minecraft:red_sand"} ~ ~0.5 ~ 3 0.5 3 1 100 force
execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run particle block{block_state:"minecraft:red_sand"} ~ ~0.5 ~ 3 0.5 3 1 100 force
execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.3
execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.3

execute if entity @e[tag=boss14,tag=body,scores={motion=40}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss14,tag=body,scores={motion=40}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss14,tag=body,scores={motion=40}] as @e[tag=head1,limit=1,tag=boss14] at @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 2 0.5



execute if entity @e[tag=boss14,tag=body,scores={motion=76}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~30
execute if entity @e[tag=boss14,tag=body,scores={motion=76}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~10


execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-3
execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-5
execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-7
execute if entity @e[tag=boss14,tag=body,scores={motion=85..88}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-40
execute if entity @e[tag=boss14,tag=body,scores={motion=85..88}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-40

execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.7 ~ 



execute as @e[tag=boss14,tag=body,scores={motion=145..,HP=151..},limit=1] at @s run function namespace:main/boss/boss14/motion/random1
execute as @e[tag=boss14,tag=body,scores={motion=145..,HP=..150},limit=1] at @s run function namespace:main/boss/boss14/motion/random2

execute if entity @e[tag=boss14,tag=body,scores={motion=145..},limit=1] run scoreboard players set @e[tag=boss14,tag=body] motion 0



