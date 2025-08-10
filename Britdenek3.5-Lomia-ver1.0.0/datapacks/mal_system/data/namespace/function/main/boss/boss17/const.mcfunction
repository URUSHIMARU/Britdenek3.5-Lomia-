#生存プレイヤーのタグつけ
tag @e[tag=boss17battle] remove boss17battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss17,tag=body] at @s at @e[distance=..80,tag=!boss17] if score @e[distance=..0.1,limit=1,tag=!boss17,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss17,sort=nearest] add boss17battle
execute as @e[tag=boss17,tag=body] at @s at @e[distance=..80,tag=!boss17] if score @e[distance=..0.1,limit=1,tag=!boss17,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss17,sort=nearest] add boss17battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3歩行 #4ジャンプステップ #5サイドステップ #6バックステップ #7突進 #8衝撃 #9ブレス
execute if entity @e[tag=boss17,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss17/motion/move1
execute if entity @e[tag=boss17,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss17/motion/move2
execute if entity @e[tag=boss17,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss17/motion/move3
execute if entity @e[tag=boss17,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss17/motion/move4
execute if entity @e[tag=boss17,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss17/motion/move5
execute if entity @e[tag=boss17,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss17/motion/move6
execute if entity @e[tag=boss17,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss17/motion/move7
execute if entity @e[tag=boss17,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss17/motion/move8
execute if entity @e[tag=boss17,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss17/motion/move9



#HP管理
execute as @e[tag=boss17,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss17","sound":"entity.zombie_horse.hurt",volume:1.5,pitch:1.1}
execute as @e[tag=boss17,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#重力
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss17,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~


#ループ用
#execute if entity @e[tag=boss17] run schedule function namespace:main/boss/boss17/const 1t replace

#デスポーン
execute as @e[tag=boss17,tag=body] at @s unless entity @e[tag=boss17battle,distance=..90] run function namespace:main/boss/boss17/despawn

#死亡
execute if entity @e[tag=boss17,tag=body,scores={HP=..0}] run function namespace:main/boss/boss17/death




