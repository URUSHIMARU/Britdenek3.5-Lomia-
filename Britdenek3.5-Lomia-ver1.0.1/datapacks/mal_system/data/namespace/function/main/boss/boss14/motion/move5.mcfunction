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


execute if entity @e[tag=boss14,tag=body,scores={motion=3..12}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~0.9 ~ 


execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body3,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~2
execute if entity @e[tag=boss14,tag=body,scores={motion=5..15}] as @e[tag=body4,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~3
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40
execute if entity @e[tag=boss14,tag=body,scores={motion=15..18}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~40





execute if entity @e[tag=boss14,tag=body,scores={motion=3..}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run particle block{block_state:"minecraft:red_sand"} ~ ~0.5 ~ 3 0.5 3 1 100 force
execute if entity @e[tag=boss14,tag=body,scores={motion=3..}] as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs_for_mob unless block ~ ~ ~ #namespace:airs_for_mob run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.3


execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=body1,tag=boss14] at @s store result score @s bossskill1 run data get entity @s Rotation[0] 10.0
execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=body1,tag=boss14] at @s run scoreboard players operation @e[tag=boss14,tag=!body1] bossskill1 = @s bossskill1
execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=!body1,tag=boss14,tag=!tail] at @s store result entity @s Rotation[0] float 0.1 run scoreboard players get @s bossskill1

execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=head1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest,tag=!bullet]
execute if entity @e[tag=boss14,tag=body,scores={motion=20..30}] as @e[tag=head2,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest,tag=!bullet]



execute if entity @e[tag=boss14,tag=body,scores={motion=41}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-80
execute if entity @e[tag=boss14,tag=body,scores={motion=41}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~80

execute if entity @e[tag=boss14,tag=body,scores={motion=41..50}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 1 3 force
execute if entity @e[tag=boss14,tag=body,scores={motion=41..50}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run teleport @s ^ ^ ^1.5
execute if entity @e[tag=boss14,tag=body,scores={motion=41..50}] as @e[tag=body,limit=1,tag=boss14] at @s positioned ~ ~-10 ~ run teleport @e[tag=body1,tag=boss14,limit=1] ~ ~ ~ ~ ~

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,tag=body,scores={motion=41..50}] as @e[tag=head2,limit=1,tag=boss14] at @s as @e[tag=boss14battle,distance=..2] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss14,tag=body,scores={motion=41..50}] as @e[tag=head2,limit=1,tag=boss14] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run effect give @s minecraft:wither 4 1 true


execute if entity @e[tag=boss14,tag=body,scores={motion=50..52}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~30
execute if entity @e[tag=boss14,tag=body,scores={motion=50..52}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-30
execute if entity @e[tag=boss14,tag=body,scores={motion=50}] as @e[tag=head1,limit=1,tag=boss14] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 1
execute if entity @e[tag=boss14,tag=body,scores={motion=51..60}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.7 ~




execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=body1,tag=boss14] at @s store result score @s bossskill1 run data get entity @s Rotation[0] 10.0
execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=body1,tag=boss14] at @s run scoreboard players operation @e[tag=boss14,tag=!body1] bossskill1 = @s bossskill1
execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=!body1,tag=boss14,tag=!tail] at @s store result entity @s Rotation[0] float 0.1 run scoreboard players get @s bossskill1

execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=head1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=120..120}] as @e[tag=head2,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]

execute if entity @e[tag=boss14,tag=body,scores={motion=141}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-80
execute if entity @e[tag=boss14,tag=body,scores={motion=141}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~80

execute if entity @e[tag=boss14,tag=body,scores={motion=141..150}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 1 3 force
execute if entity @e[tag=boss14,tag=body,scores={motion=141..150}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run teleport @s ^ ^ ^1.5
execute if entity @e[tag=boss14,tag=body,scores={motion=141..150}] as @e[tag=body,limit=1,tag=boss14] at @s positioned ~ ~-10 ~ run teleport @e[tag=body1,tag=boss14,limit=1] ~ ~ ~ ~ ~

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,tag=body,scores={motion=141..150}] at @s as @e[tag=head2,limit=1,tag=boss14] as @e[tag=boss14battle,distance=..2] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss14,tag=body,scores={motion=141..150}] as @e[tag=head2,limit=1,tag=boss14] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run effect give @s minecraft:wither 4 1 true


execute if entity @e[tag=boss14,tag=body,scores={motion=150..152}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~30
execute if entity @e[tag=boss14,tag=body,scores={motion=150..152}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-30
execute if entity @e[tag=boss14,tag=body,scores={motion=150}] as @e[tag=head1,limit=1,tag=boss14] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss14,tag=body,scores={motion=151..160}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.7 ~





execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=body1,tag=boss14] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=body1,tag=boss14] at @s store result score @s bossskill1 run data get entity @s Rotation[0] 10.0
execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=body1,tag=boss14] at @s run scoreboard players operation @e[tag=boss14,tag=!body1] bossskill1 = @s bossskill1
execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=!body1,tag=boss14,tag=!tail] at @s store result entity @s Rotation[0] float 0.1 run scoreboard players get @s bossskill1

execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=head1,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]
execute if entity @e[tag=boss14,tag=body,scores={motion=180..180}] as @e[tag=head2,tag=boss14] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss14battle,limit=1,sort=nearest]

execute if entity @e[tag=boss14,tag=body,scores={motion=201}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-80
execute if entity @e[tag=boss14,tag=body,scores={motion=201}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~80

execute if entity @e[tag=boss14,tag=body,scores={motion=201..210}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 1 3 force
execute if entity @e[tag=boss14,tag=body,scores={motion=201..210}] as @e[tag=body,limit=1,tag=boss14] at @s if block ^ ^ ^4 #namespace:airs_for_mob if block ^ ^ ^5 #namespace:airs_for_mob run teleport @s ^ ^ ^1.5
execute if entity @e[tag=boss14,tag=body,scores={motion=201..210}] as @e[tag=body,limit=1,tag=boss14] at @s positioned ~ ~-10 ~ run teleport @e[tag=body1,tag=boss14,limit=1] ~ ~ ~ ~ ~

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss14,tag=body,scores={motion=201..210}] at @s as @e[tag=head2,limit=1,tag=boss14] as @e[tag=boss14battle,distance=..2] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if entity @e[tag=boss14,tag=body,scores={motion=201..210}] as @e[tag=head2,limit=1,tag=boss14] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run effect give @s minecraft:wither 4 1 true


execute if entity @e[tag=boss14,tag=body,scores={motion=210..212}] as @e[tag=head1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~30
execute if entity @e[tag=boss14,tag=body,scores={motion=210..212}] as @e[tag=head2,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.01 ~ ~ ~-30
execute if entity @e[tag=boss14,tag=body,scores={motion=210}] as @e[tag=head1,limit=1,tag=boss14] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 1

execute if entity @e[tag=boss14,tag=body,scores={motion=211..220}] as @e[tag=body1,limit=1,tag=boss14] at @s run teleport @s ~ ~-0.7 ~







execute as @e[tag=boss14,tag=body,scores={motion=285..,HP=151..},limit=1] at @s run function namespace:main/boss/boss14/motion/random1
execute as @e[tag=boss14,tag=body,scores={motion=285..,HP=..150},limit=1] at @s run function namespace:main/boss/boss14/motion/random2

execute if entity @e[tag=boss14,tag=body,scores={motion=285..},limit=1] run scoreboard players set @e[tag=boss14,tag=body] motion 0



