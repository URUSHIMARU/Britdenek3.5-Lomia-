#生存プレイヤーのタグつけ
tag @e[tag=boss12battle] remove boss12battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss12,tag=body] at @s at @e[distance=..80,tag=!boss12] if score @e[distance=..0.1,limit=1,tag=!boss12,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss12,sort=nearest] add boss12battle
execute as @e[tag=boss12,tag=body] at @s at @e[distance=..80,tag=!boss12] if score @e[distance=..0.1,limit=1,tag=!boss12,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss12,sort=nearest] add boss12battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3徒歩 #4引っかき歩き  #5引っかき #6砂かけ #7岩盤投げ #8ブレス
execute if entity @e[tag=boss12,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss12/motion/move1
execute if entity @e[tag=boss12,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss12/motion/move2
execute if entity @e[tag=boss12,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss12/motion/move3
execute if entity @e[tag=boss12,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss12/motion/move4
execute if entity @e[tag=boss12,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss12/motion/move5
execute if entity @e[tag=boss12,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss12/motion/move6
execute if entity @e[tag=boss12,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss12/motion/move7
execute if entity @e[tag=boss12,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss12/motion/move8







#HP管理
execute as @e[tag=boss12,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss12","sound":"entity.polar_bear.hurt",volume:2,pitch:0.8}
execute as @e[tag=boss12,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end



#ボスの攻撃管理
execute as @e[tag=boss12_attack1] at @s run teleport @s ^ ^ ^1 ~ ~
execute as @e[tag=boss12_attack1] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute as @e[tag=boss12_attack1] at @s run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss12_attack1] at @s as @e[tag=boss12battle,distance=..3] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run effect give @s minecraft:slowness 8 4
execute as @e[tag=boss12_attack1] at @s as @e[tag=boss12battle,distance=..3] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute as @e[tag=boss12_attack1] at @s unless block ~ ~ ~ #namespace:airs run kill @s


execute as @e[tag=boss12_attack2] at @s run teleport @s ^ ^ ^1 ~ ~7
execute as @e[tag=boss12_attack2] at @s run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~-2 ~ 1.5 0.6 1.5 1 5 force
execute as @e[tag=boss12_attack2] at @s as @e[tag=boss12battle,distance=..6] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if score #difficulty difficulty matches 2.. as @e[tag=boss12_attack2] at @s as @e[tag=boss12battle,distance=..3] unless score @s player = @e[tag=boss12,tag=body,limit=1] player run effect give @s minecraft:slowness 8 4
execute as @e[tag=boss12_attack2] at @s unless block ~ ~ ~ #namespace:airs run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0
execute as @e[tag=boss12_attack2] at @s unless block ~ ~ ~ #namespace:airs run particle minecraft:explosion ~ ~ ~ 3 1 3 1 40 force
execute as @e[tag=boss12_attack2] at @s unless block ~ ~ ~ #namespace:airs run kill @s


#ループ用
#execute if entity @e[tag=boss12] run schedule function namespace:main/boss/boss12/const 1t replace

#デスポーン
execute as @e[tag=boss12,tag=body] at @s unless entity @e[tag=boss12battle,distance=..85] run function namespace:main/boss/boss12/despawn

#死亡
execute if entity @e[tag=boss12,tag=body,scores={HP=..0}] run function namespace:main/boss/boss12/death





