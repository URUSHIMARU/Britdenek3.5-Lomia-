#生存プレイヤーのタグつけ
tag @e[tag=boss13battle] remove boss13battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss13,tag=body] at @s at @e[distance=..80,tag=!boss13] if score @e[distance=..0.1,limit=1,tag=!boss13,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss13,sort=nearest] add boss13battle
execute as @e[tag=boss13,tag=body] at @s at @e[distance=..80,tag=!boss13] if score @e[distance=..0.1,limit=1,tag=!boss13,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss13,sort=nearest] add boss13battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3後退 #4ゾンビ召喚 #5前進 #6黄金の槍 #7黄金の津波 #8第2形態変身 
execute if entity @e[tag=boss13,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss13/motion/move1
execute if entity @e[tag=boss13,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss13/motion/move2
execute if entity @e[tag=boss13,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss13/motion/move3
execute if entity @e[tag=boss13,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss13/motion/move4
execute if entity @e[tag=boss13,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss13/motion/move5
execute if entity @e[tag=boss13,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss13/motion/move6
execute if entity @e[tag=boss13,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss13/motion/move7
execute if entity @e[tag=boss13,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss13/motion/move8

#11待機 #12衝撃波 #13地面たたきつけ爆破 #14ブレス #15黄金の槍
execute if entity @e[tag=boss13,limit=1,scores={bossmove=11},tag=body] run function namespace:main/boss/boss13/motion/move11
execute if entity @e[tag=boss13,limit=1,scores={bossmove=12},tag=body] run function namespace:main/boss/boss13/motion/move12
execute if entity @e[tag=boss13,limit=1,scores={bossmove=13},tag=body] run function namespace:main/boss/boss13/motion/move13
execute if entity @e[tag=boss13,limit=1,scores={bossmove=14},tag=body] run function namespace:main/boss/boss13/motion/move14
execute if entity @e[tag=boss13,limit=1,scores={bossmove=15},tag=body] run function namespace:main/boss/boss13/motion/move15





#HP管理
execute as @e[tag=boss13,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss13","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute as @e[tag=boss13,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
scoreboard players add @e[tag=boss13_attack1] bossskill1 1
execute as @e[tag=boss13_attack1,scores={bossskill1=1..40}] at @s run teleport @s ~ ~0.1 ~ ~13 ~
execute as @e[tag=boss13_attack1,scores={bossskill1=1..40}] at @s run particle block{block_state:"minecraft:raw_gold_block"} ~ ~1 ~ 0.5 1 0.5 1 4 force
execute as @e[tag=boss13_attack1,scores={bossskill1=1..40}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 0.6
execute as @e[tag=boss13_attack1,scores={bossskill1=41}] at @s unless block ~ ~1 ~ #namespace:airs run kill @s
execute as @e[tag=boss13_attack1,scores={bossskill1=41}] at @s run data merge entity @s {Invulnerable:0b,NoAI:0b}
kill @e[tag=boss13_attack1,scores={bossskill1=400..}]

scoreboard players add @e[tag=boss13_attack2] bossskill2 1
execute as @e[tag=boss13_attack2,scores={bossskill2=..30}] at @s run particle block{block_state:"minecraft:raw_gold_block"} ~ ~5.5 ~ 0.3 0.1 0.3 1 3 force
execute as @e[tag=boss13_attack2,scores={bossskill2=31..35}] at @s run teleport @s ~ ~1 ~ ~37 ~
execute as @e[tag=boss13_attack2,scores={bossskill2=35}] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss13_attack2,scores={bossskill2=35}] at @s as @e[tag=boss13battle,distance=..2] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute as @e[tag=boss13_attack2,scores={bossskill2=60..}] at @s run playsound minecraft:block.copper.break master @a ~ ~ ~ 1.5 0.8
execute as @e[tag=boss13_attack2,scores={bossskill2=60..}] at @s run particle block{block_state:"minecraft:raw_gold_block"} ~ ~1 ~ 0.3 1 0.3 1 70 force
kill @e[tag=boss13_attack2,scores={bossskill2=60..}]


scoreboard players add @e[tag=boss13_rance] bossskill3 1
execute as @e[tag=boss13_rance,scores={bossskill3=1}] at @s run teleport @s @e[tag=boss13,tag=body,limit=1]
execute as @e[tag=boss13_rance1] at @s run teleport @s ~ ~ ~ ~20 ~
execute as @e[tag=boss13_rance2,scores={bossskill3=10}] at @s run teleport @s ^ ^ ^ facing entity @e[tag=boss13battle,sort=nearest,limit=1]
execute as @e[tag=boss13_rance2,scores={bossskill3=20}] at @s run teleport @s ^ ^ ^ facing entity @e[tag=boss13battle,sort=nearest,limit=1]
execute as @e[tag=boss13_rance2,scores={bossskill3=30}] at @s run teleport @s ^ ^ ^ facing entity @e[tag=boss13battle,sort=nearest,limit=1]
execute as @e[tag=boss13_rance2,scores={bossskill3=40}] at @s run teleport @s ^ ^ ^ facing entity @e[tag=boss13battle,sort=nearest,limit=1]
execute as @e[tag=boss13_rance2] at @s run teleport @s ^ ^ ^ ~ 0
execute as @e[tag=boss13_rance2] at @s run teleport @s ^ ^ ^1.5 ~ ~
execute as @e[tag=boss13_rance3] at @s run teleport @s ~ ~ ~ ~40 ~
execute as @e[tag=boss13_rance4] at @s run teleport @s ~ ~ ~ ~9 ~
execute as @e[tag=boss13_rance4,scores={bossskill3=1..40}] at @s positioned ^ ^ ^20 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance4,scores={bossskill3=1..40}] at @s positioned ^ ^ ^24 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance4,scores={bossskill3=1..40}] at @s positioned ^ ^ ^28 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2


execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss13_rance,scores={bossskill3=5}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss13_rance,scores={bossskill3=15}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss13_rance,scores={bossskill3=25}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss13_rance,scores={bossskill3=35}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance1,scores={bossskill3=..10}] at @s positioned ^ ^ ^2 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance1,scores={bossskill3=11..20}] at @s positioned ^ ^ ^7 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance1,scores={bossskill3=21..30}] at @s positioned ^ ^ ^12 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance1,scores={bossskill3=31..40}] at @s positioned ^ ^ ^17 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance2,scores={bossskill3=2..}] at @s positioned ^ ^ ^ positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance3,scores={bossskill3=..10}] at @s positioned ^ ^ ^1 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance3,scores={bossskill3=11..20}] at @s positioned ^ ^ ^3 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance3,scores={bossskill3=21..30}] at @s positioned ^ ^ ^5 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_rance3,scores={bossskill3=31..40}] at @s positioned ^ ^ ^7 positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
kill @e[tag=boss13_rance,scores={bossskill3=40..}]


scoreboard players add @e[tag=boss13_attack3] bossskill4 1
execute as @e[tag=boss13_attack3,scores={bossskill4=..30}] at @s run particle block{block_state:"minecraft:raw_gold_block"} ~ ~0.5 ~ 2 0.1 2 1 6 force
execute as @e[tag=boss13_attack3,scores={bossskill4=31..40}] at @s run teleport @s ~ ~0.25 ~ ~37 ~
execute as @e[tag=boss13_attack3,scores={bossskill4=35}] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss13_attack3,scores={bossskill4=280}] at @s run playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.5
execute as @e[tag=boss13_attack3,scores={bossskill4=280..}] at @s run teleport @s ~ ~-0.25 ~ ~37 ~
execute as @e[tag=boss13_attack3] at @s positioned ~ ~-4 ~ as @e[tag=boss13battle,distance=..5] unless score @s player = @e[tag=boss13,tag=body,limit=1] player run effect give @s minecraft:slowness 1 1
execute as @e[tag=boss13_attack3] at @s positioned ~ ~-4 ~ run effect give @e[tag=boss13_attack1,distance=..5] minecraft:speed 2 1
execute as @e[tag=boss13_attack3] at @s positioned ~ ~-4 ~ run effect give @e[tag=boss13_attack1,distance=..5] minecraft:strength 3 1 
execute as @e[tag=boss13_attack3] at @s positioned ~ ~-4 ~ run effect give @e[tag=boss13_attack1,distance=..5] minecraft:resistance 3 3 

kill @e[tag=boss13_attack3,scores={bossskill4=300..}]

#発狂攻撃時
scoreboard players add @e[tag=boss13_another,tag=body] bossskill4 1
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=50}] at @s positioned ~ ~-3.8 ~4 run function namespace:main/entity_model/boss/boss13/boss13_mob
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=50}] at @s positioned ~ ~-3.8 ~-4 run function namespace:main/entity_model/boss/boss13/boss13_mob
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=50}] at @s positioned ~-4 ~-3.8 ~ run function namespace:main/entity_model/boss/boss13/boss13_mob
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=50}] at @s positioned ~4 ~-3.8 ~ run function namespace:main/entity_model/boss/boss13/boss13_mob
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=150}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=300}] at @s run execute as @e[tag=boss13battle,sort=random,limit=4,nbt={OnGround:1b}] at @s positioned ~ ~-5 ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
execute as @e[tag=boss13_another,tag=body,scores={bossskill4=100}] at @s run execute as @e[tag=boss13battle,sort=nearest,limit=1] at @s as @e[limit=2,tag=boss13_attack1,sort=nearest] at @s positioned ^ ^0.1 ^ positioned ~ ~ ~ run function namespace:main/entity_model/boss/boss13/boss13_bullet2
scoreboard players set @e[tag=boss13_another,tag=body,scores={bossskill4=300..}] bossskill4 0

execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=right_arm] at @s run particle witch ^ ^1 ^-3 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=left_arm] at @s run particle witch ^ ^1 ^-3 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=right_arm] at @s run particle block{block_state:"minecraft:raw_gold_block"} ^ ^1 ^-3 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=left_arm] at @s run particle block{block_state:"minecraft:raw_gold_block"} ^ ^1 ^-3 0.5 0.5 0.5 1 10 force


execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=body] at @s run particle witch ^2.5 ^3.5 ^-0.5 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=body] at @s run particle block{block_state:"minecraft:raw_gold_block"} ^2.5 ^3.5 ^-0.5 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=body] at @s run particle witch ^-2.5 ^3.5 ^-0.5 0.5 0.5 0.5 1 10 force
execute if entity @e[tag=boss13_another,tag=body] as @e[tag=boss13,tag=body] at @s run particle block{block_state:"minecraft:raw_gold_block"} ^-2.5 ^3.5 ^-0.5 0.5 0.5 0.5 1 10 force



#ループ用
#execute if entity @e[tag=boss13] run schedule function namespace:main/boss/boss13/const 1t replace

#デスポーン
execute as @e[tag=boss13,tag=body] at @s unless entity @e[tag=boss13battle,distance=..85] run function namespace:main/boss/boss13/despawn

#死亡
execute if entity @e[tag=boss13,tag=body,scores={HP=..0}] run function namespace:main/boss/boss13/death




