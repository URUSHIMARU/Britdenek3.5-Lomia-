#生存プレイヤーのタグつけ
tag @e[tag=boss10battle] remove boss10battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss10,tag=body] at @s at @e[distance=..80,tag=!boss10] if score @e[distance=..0.1,limit=1,tag=!boss10,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss10,sort=nearest] add boss10battle
execute as @e[tag=boss10,tag=body] at @s at @e[distance=..80,tag=!boss10] if score @e[distance=..0.1,limit=1,tag=!boss10,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss10,sort=nearest] add boss10battle


#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3徒歩プレイヤー追尾 #4徒歩プレイヤー遠ざかり #5種まき #6ジャンプ #7串刺し #8種まき2
execute if entity @e[tag=boss10,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss10/motion/move1
execute if entity @e[tag=boss10,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss10/motion/move2
execute if entity @e[tag=boss10,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss10/motion/move3
execute if entity @e[tag=boss10,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss10/motion/move4
execute if entity @e[tag=boss10,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss10/motion/move5
execute if entity @e[tag=boss10,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss10/motion/move6
execute if entity @e[tag=boss10,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss10/motion/move7
execute if entity @e[tag=boss10,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss10/motion/move8







#HP管理
execute as @e[tag=boss10,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss10","sound":"entity.phantom.hurt",volume:2,pitch:0.8}
execute as @e[tag=boss10,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ボスの攻撃管理
#重力の概念
execute as @e[tag=body,tag=boss10] at @s if block ~ ~-1 ~ #namespace:airs run teleport @s ~ ~-1 ~
execute as @e[tag=body,tag=boss10] at @s unless block ~ ~ ~ #namespace:airs run teleport @s ~ ~1 ~

scoreboard players add @e[tag=boss10_attack11] bossskill1 1
scoreboard players add @e[tag=boss10_attack3] bossskill2 1
scoreboard players add @e[tag=boss10_attack4] bossskill3 1
scoreboard players add @e[tag=boss10_attack22] bossskill4 1
scoreboard players add @e[tag=boss10_attack8] bossskill2 1

execute as @e[tag=boss10_attack11] at @s unless block ~ ~ ~ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet3 
execute as @e[tag=boss10_attack11] at @s as @e[tag=boss10_attack3,distance=..2,limit=1,sort=nearest] at @s run teleport @s ~ ~0 ~ facing entity @e[tag=boss10battle,sort=nearest,limit=1]
execute as @e[tag=boss10_attack3] at @s run particle block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 1 0.4 1 1 1 force
execute as @e[tag=boss10_attack3,scores={bossskill2=100}] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1089
execute as @e[tag=boss10_attack3,scores={bossskill2=100}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss10_attack3,scores={bossskill2=100..}] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 1 1 1 1 2 force
execute as @e[tag=boss10_attack3,scores={bossskill2=100..}] at @s run effect give @e[tag=boss10battle,distance=..2.5] minecraft:slowness 3 1 false
execute if score #difficulty difficulty matches 2.. as @e[tag=boss10_attack3,scores={bossskill2=100..}] at @s run effect give @e[tag=boss10battle,distance=..2.5] minecraft:wither 3 1 false
execute as @e[tag=boss10_attack11] at @s unless block ~ ~ ~ #namespace:airs run function namespace:main/entity_model/bomb_template {power:3}
execute as @e[tag=boss10bomb] at @s run teleport @s ~ ~-500 ~
execute as @e[tag=boss10_attack11] at @s unless block ~ ~ ~ #namespace:airs run kill @s
kill @e[tag=boss10_attack11,scores={bossskill1=60..}]
execute as @e[tag=boss10_attack11] at @s run teleport @s ^ ^ ^1 ~ ~4

kill @e[tag=boss10_attack3,scores={bossskill2=300..}]

execute as @e[tag=boss10_attack4,scores={bossskill3=..50}] at @s run particle block{block_state:"minecraft:dirt"} ~ ~9 ~ 1 1 1 1 3 force
execute as @e[tag=boss10_attack4,scores={bossskill3=50..51}] at @s run teleport @s ~ ~4.5 ~ ~30 ~
execute as @e[tag=boss10_attack4,scores={bossskill3=51..}] at @s run teleport @s ~ ~ ~ ~30 ~
execute as @e[tag=boss10_attack4,scores={bossskill3=51}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 2 force
execute as @e[tag=boss10_attack4,scores={bossskill3=51}] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 1.2
execute as @e[tag=boss10_attack4,scores={bossskill3=51}] at @s as @e[tag=boss10battle,distance=..3] unless score @s player = @e[tag=boss10,tag=body,limit=1] player run scoreboard players set @s commandDamage 16


execute as @e[tag=boss10_attack4,scores={bossskill3=71..}] at @s run teleport @s ~ ~-0.5 ~ ~30 ~
kill @e[tag=boss10_attack4,scores={bossskill3=90..}]


execute as @e[tag=boss10_attack22] at @s run teleport @s ^ ^ ^1 ~ ~4
execute as @e[tag=boss10_attack5] at @s unless block ~ ~ ~ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet3
execute as @e[tag=boss10_attack6] at @s unless block ~ ~ ~ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss10/boss10_bullet8

execute as @e[tag=boss10_attack22] at @s unless block ~ ~ ~ #namespace:airs run kill @s
kill @e[tag=boss10_attack22,scores={bossskill4=90..}]

execute as @e[tag=boss10_attack8] at @s run particle block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 1 0.4 1 1 1 force
execute as @e[tag=boss10_attack8,scores={bossskill2=100}] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1087
execute as @e[tag=boss10_attack8,scores={bossskill2=100..}] at @s run effect give @e[tag=boss10battle,distance=..2.5] minecraft:slowness 1 1 false
execute as @e[tag=boss10_attack8,scores={bossskill2=100..}] at @s run effect give @e[tag=boss10battle,distance=..2.5] minecraft:wither 5 5 false
execute if score #difficulty difficulty matches 2.. as @e[tag=boss10_attack8,scores={bossskill2=100..}] at @s run effect give @e[tag=boss10battle,distance=..2.5] minecraft:hunger 4 50 false
kill @e[tag=boss10_attack8,scores={bossskill2=300..}]


#ループ用
#execute if entity @e[tag=boss10] run schedule function namespace:main/boss/boss10/const 1t replace

#デスポーン
execute as @e[tag=boss10,tag=body] at @s unless entity @e[tag=boss10battle,distance=..85] run function namespace:main/boss/boss10/despawn

#死亡
execute if entity @e[tag=boss10,tag=body,scores={HP=..0}] run function namespace:main/boss/boss10/death





