#生存プレイヤーのタグつけ
tag @e[tag=boss22subbattle] remove boss22subbattle
#本チャン実装で座標入れ必須
execute as @e[tag=boss22sub,tag=body] at @s at @e[distance=..80,tag=!boss22sub] if score @e[distance=..0.1,limit=1,tag=!boss22sub,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss22sub,sort=nearest] add boss22subbattle
execute as @e[tag=boss22sub,tag=body] at @s at @e[distance=..80,tag=!boss22sub] if score @e[distance=..0.1,limit=1,tag=!boss22sub,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss22sub,sort=nearest] add boss22subbattle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3徒歩 #4引っかき歩き  #5引っかき #6砂かけ #7岩盤投げ #8ブレス
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss22sub/motion/move1
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss22sub/motion/move2
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss22sub/motion/move3
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss22sub/motion/move4
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss22sub/motion/move5
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss22sub/motion/move6
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss22sub/motion/move7
execute if entity @e[tag=boss22sub,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss22sub/motion/move8







#HP管理
execute as @e[tag=boss22sub,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss22sub","sound":"entity.polar_bear.hurt",volume:2,pitch:0.8}
execute as @e[tag=boss22sub,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end



#ボスの攻撃管理
execute as @e[tag=boss22sub_attack1] at @s run teleport @s ^ ^ ^1 ~ ~
execute as @e[tag=boss22sub_attack1] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute as @e[tag=boss22sub_attack1] at @s run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss22sub_attack1] at @s as @e[tag=boss22subbattle,distance=..3] unless score @s player = @e[tag=boss22sub,tag=body,limit=1] player run effect give @s minecraft:slowness 8 4
execute as @e[tag=boss22sub_attack1] at @s as @e[tag=boss22subbattle,distance=..3] unless score @s player = @e[tag=boss22sub,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute as @e[tag=boss22sub_attack1] at @s unless block ~ ~ ~ #namespace:airs run kill @s


execute as @e[tag=boss22sub_attack2] at @s run teleport @s ^ ^ ^1 ~ ~7
execute as @e[tag=boss22sub_attack2] at @s run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~-2 ~ 1.5 0.6 1.5 1 5 force
execute as @e[tag=boss22sub_attack2] at @s as @e[tag=boss22subbattle,distance=..6] unless score @s player = @e[tag=boss22sub,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute if score #difficulty difficulty matches 2.. as @e[tag=boss22sub_attack2] at @s as @e[tag=boss22subbattle,distance=..3] unless score @s player = @e[tag=boss22sub,tag=body,limit=1] player run effect give @s minecraft:slowness 8 4
execute as @e[tag=boss22sub_attack2] at @s unless block ~ ~ ~ #namespace:airs run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0
execute as @e[tag=boss22sub_attack2] at @s unless block ~ ~ ~ #namespace:airs run particle minecraft:explosion ~ ~ ~ 3 1 3 1 40 force
execute as @e[tag=boss22sub_attack2] at @s unless block ~ ~ ~ #namespace:airs run kill @s


#ループ用
#execute if entity @e[tag=boss22sub] run schedule function namespace:main/boss/boss22sub/const 1t replace

#デスポーン
execute as @e[tag=boss22sub,tag=body] at @s unless entity @e[tag=boss22subbattle,distance=..85] run function namespace:main/boss/boss22sub/despawn

#死亡
execute if entity @e[tag=boss22sub,tag=body,scores={HP=..0}] run function namespace:main/boss/boss22sub/death





