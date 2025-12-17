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


execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~2
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~3
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40



execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run particle block{block_state:"minecraft:red_sand"} ~ ~0.5 ~ 3 0.5 3 1 100 force
execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run particle block{block_state:"minecraft:red_sand"} ~ ~0.5 ~ 3 0.5 3 1 100 force
execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.3
execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.3


execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=body1,tag=boss14] at @s store result score @s bossskill1 run data get entity @s Rotation[0] 10.0
execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=body1,tag=boss14] at @s run scoreboard players operation @e[tag=boss14,tag=!body1,type=minecraft:vindicator] bossskill1 = @s bossskill1
execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=!body1,tag=boss14,type=minecraft:vindicator,tag=!tail] at @s store result entity @s Rotation[0] float 0.1 run scoreboard players get @s bossskill1

execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=head1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss14,tag=body,scores={motion=20..89}] as @e[tag=head2,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest,tag=!bullet]


execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-3
execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-5
execute if entity @e[tag=boss14,tag=body,scores={motion=85..95}] as @e[tag=body4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-7
execute if entity @e[tag=boss14,tag=body,scores={motion=85..88}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-80
execute if entity @e[tag=boss14,tag=body,scores={motion=85..88}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-80

execute if entity @e[tag=boss14,tag=body,scores={motion=90..109}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.7 ~


#しっぽ挙動
execute if entity @e[tag=boss14,tag=body,scores={motion=15}] as @e[tag=boss14,tag=body] at @s as @e[tag=boss14battle,sort=nearest,limit=1] at @s run teleport @e[tag=boss14,tag=tail1] ~ ~-10 ~
execute if entity @e[tag=boss14,tag=body,scores={motion=15}] as @e[tag=body,tag=boss14] at @s run scoreboard players operation @e[tag=boss14,tag=tail1,type=minecraft:vindicator,limit=1] bossskill2 = @s bossskill2
execute if entity @e[tag=boss14,tag=body,scores={motion=15}] as @e[tag=body,tag=boss14] at @s run scoreboard players remove @e[tag=boss14,tag=tail1,type=minecraft:vindicator,limit=1] bossskill2 200
execute if entity @e[tag=boss14,tag=body,scores={motion=15}] as @e[tag=tail1,tag=boss14,type=minecraft:vindicator,limit=1] at @s store result entity @s Pos[1] double 0.1 run scoreboard players get @s bossskill2
execute if entity @e[tag=boss14,tag=body,scores={motion=15}] as @e[tag=body,tag=boss14] at @s store result score @s bossskill2 run data get entity @s Pos[1] 10.0


execute if entity @e[tag=boss14,tag=body,scores={motion=15..45}] as @e[tag=boss14,tag=tail1,sort=nearest,limit=1] at @s run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~20.5 ~ 2 0.5 2 1 30 force

execute if entity @e[tag=boss14,tag=body,scores={motion=15..20}] as @e[tag=tail,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @e[tag=boss14,tag=body,scores={motion=50..54}] as @e[tag=tail,tag=boss14] at @s run teleport @s ~ ~3 ~ ~37 ~
execute if entity @e[tag=boss14,tag=body,scores={motion=50..54}] as @e[tag=tail,tag=boss14] at @s run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~1 ~ 1 1 1 1 50 force
execute if entity @e[tag=boss14,tag=body,scores={motion=50..54}] as @e[tag=tail,tag=boss14] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5 force
execute if entity @e[tag=boss14,tag=body,scores={motion=50..54}] as @e[tag=tail,tag=boss14] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 14

execute if entity @e[tag=boss14,tag=body,scores={motion=70}] as @e[tag=tail1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=70}] as @e[tag=tail1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90

execute if entity @e[tag=boss14,tag=body,scores={motion=50}] as @e[tag=tail1,tag=boss14] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1.2

execute if entity @e[tag=boss14,tag=body,scores={motion=70..71}] as @e[tag=boss14,tag=tail1] at @s run teleport @e[tag=tail2,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=70..71}] as @e[tag=boss14,tag=tail2] at @s run teleport @e[tag=tail3,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=70..71}] as @e[tag=boss14,tag=tail3] at @s run teleport @e[tag=tail4,limit=1,tag=boss14] ^ ^ ^3.4 ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=70..71}] as @e[tag=boss14,tag=tail4] at @s run teleport @e[tag=tail5,limit=1,tag=boss14] ^ ^ ^2.8 ~ ~


execute if entity @e[tag=boss14,tag=body,scores={motion=71..90}] as @e[tag=tail1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~3
execute if entity @e[tag=boss14,tag=body,scores={motion=71..90}] as @e[tag=tail2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~5
execute if entity @e[tag=boss14,tag=body,scores={motion=71..90}] as @e[tag=tail3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~7
execute if entity @e[tag=boss14,tag=body,scores={motion=71..90}] as @e[tag=tail4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~9
execute if entity @e[tag=boss14,tag=body,scores={motion=71..90}] as @e[tag=tail5,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~10

execute if entity @e[tag=boss14,tag=body,scores={motion=71..80}] as @e[tag=tail,tag=boss14] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 14

execute if entity @e[tag=boss14,tag=body,scores={motion=80}] as @e[tag=tail1,tag=boss14] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss14,tag=body,scores={motion=80..85}] as @e[tag=tail,tag=boss14] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5 force

#execute if entity @e[tag=boss14,tag=body,scores={motion=90..100}] as @e[tag=tail1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.5 ~

execute as @e[tag=boss14,tag=body,scores={motion=185..,HP=151..},limit=1] at @s run function namespace:main/boss/boss14/motion/random1
execute as @e[tag=boss14,tag=body,scores={motion=185..,HP=..150},limit=1] at @s run function namespace:main/boss/boss14/motion/random2

execute if entity @e[tag=boss14,tag=body,scores={motion=185..},limit=1] run scoreboard players set @e[tag=boss14,tag=body] motion 0



