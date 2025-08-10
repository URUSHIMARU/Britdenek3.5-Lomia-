#位置情報保存
scoreboard players add @e[tag=boss6,tag=body,scores={motion2=0..},limit=1] motion 1


#常時実行
execute as @e[tag=boss6,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss6] @s
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 
execute as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 
execute as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ 


#モーション
#初期化
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss6] ^2.5 ^4 ^ ~ ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss6] ^-2.5 ^4 ^ ~ ~-30
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg1,limit=1,tag=boss6] ^2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg1,limit=1,tag=boss6] ^-2.7 ^0.5 ^-1 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=right_leg2,limit=1,tag=boss6] ^2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=left_leg2,limit=1,tag=boss6] ^-2 ^0.5 ^3 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=head2,limit=1,tag=boss6] ^ ^-1 ^4 ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=head2] at @s run teleport @e[tag=head1,limit=1,tag=boss6] ^ ^ ^ ~ ~
execute if entity @e[tag=boss6,tag=body,scores={motion=1..2}] as @e[tag=boss6,tag=body1] at @s run teleport @e[tag=wing,limit=1,tag=boss6] ^ ^4.5 ^ ~180 ~90

execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..60,tag=boss6battle]
execute if entity @e[tag=boss6,tag=body,scores={motion=1}] as @e[tag=body,tag=boss6] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-12
execute if entity @e[tag=boss6,tag=body,scores={motion=5..10}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~-30


execute if entity @e[tag=boss6,tag=body,scores={motion=15..50}] as @e[tag=wing,limit=1,tag=boss6] at @s run particle minecraft:flame ^ ^5 ^1 0.2 0.2 0.2 0.05 10 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..50}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..50}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 2 1.4

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~ ~-10 ~ 0 1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~ ~10 ~ 0 -1 0 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~ ~ ~-10 0 0 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~ ~ ~10 0 0 -1 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~ ~ 1 0 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~ ~ -1 0  0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~-10 ~ 1 1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~10 ~ 1 -1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~-10 ~ -1 1 0 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~10 ~ -1 -1 0 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~ ~-10 -1 0 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~ ~10 -1 0 -1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~ ~-10 1 0 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~ ~10 1 0 -1 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~ ~-10 1 0 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~ ~-10 -1 0 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~ ~10 1 0 -1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~ ~10 -1 0 -1 0.6 0 force

execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~10 ~-10 1 -1 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~10 ~-10 -1 -1 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~10 ~10 1 -1 -1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~10 ~10 -1 -1 -1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~-10 ~-10 1 1 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~-10 ~-10 -1 1 1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~-10 ~-10 ~10 1 1 -1 0.6 0 force
execute if entity @e[tag=boss6,tag=body,scores={motion=15..30}] as @e[tag=wing,limit=1,tag=boss6] at @s positioned ^ ^5 ^1 run particle minecraft:flame ~10 ~-10 ~10 -1 1 -1 0.6 0 force


execute if entity @e[tag=boss6,tag=body,scores={motion=60}] as @e[tag=right_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~-60 ~
execute if entity @e[tag=boss6,tag=body,scores={motion=60}] as @e[tag=left_arm,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~60 ~


execute if entity @e[tag=boss6,tag=body,scores={motion=60}] as @e[tag=boss6] run data merge entity @s {Invulnerable:1b}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s run particle minecraft:flash ~ ~ ~ 2 2 2 1 5 force
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~7 ~ ~ run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~-7 ~ ~ run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~ ~ ~7 run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~ ~ ~-7 run function namespace:main/entity_model/bomb_template {"power":4}

execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~5 ~ ~5 run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~5 ~ ~-5 run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~-5 ~ ~5 run function namespace:main/entity_model/bomb_template {"power":4}
execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~-5 ~ ~-5 run function namespace:main/entity_model/bomb_template {"power":4}

execute if entity @e[tag=boss6,tag=body,scores={motion=60..68}] as @e[tag=boss6,sort=random,limit=1] at @s positioned ~ ~5 ~ run function namespace:main/entity_model/bomb_template {"power":4}


execute if entity @e[tag=boss6,tag=body,scores={motion=70}] as @e[tag=boss6,tag=weak] run data merge entity @s {Invulnerable:0b}


execute if entity @e[tag=boss6,tag=body,scores={motion=71..76}] as @e[tag=wing,limit=1,tag=boss6] at @s run teleport @s ~ ~ ~ ~ ~30





#execute if entity @e[tag=boss6,tag=body,scores={motion=110..},limit=1] run scoreboard players set @e[tag=boss6,tag=body] motion 0


execute if entity @e[tag=boss6,tag=body,scores={motion=110..,HP=150..},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random1
execute if entity @e[tag=boss6,tag=body,scores={motion=110..,HP=..150},limit=1] run execute as @e[tag=boss6,tag=body] at @s run function namespace:main/boss/boss6/motion/random2

