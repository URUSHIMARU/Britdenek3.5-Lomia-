#生存プレイヤーのタグつけ
tag @e[tag=boss16battle] remove boss16battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss16,tag=body] at @s at @e[distance=..80,tag=!boss16] if score @e[distance=..0.1,limit=1,tag=!boss16,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss16,sort=nearest] add boss16battle
execute as @e[tag=boss16,tag=body] at @s at @e[distance=..80,tag=!boss16] if score @e[distance=..0.1,limit=1,tag=!boss16,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss16,sort=nearest] add boss16battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3ジリより #4バックステップ #5突き攻撃 #6薙ぎ払い #7突き連打 #8突進突き #9横ステップ
execute if entity @e[tag=boss16,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss16/motion/move1
execute if entity @e[tag=boss16,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss16/motion/move2
execute if entity @e[tag=boss16,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss16/motion/move3
execute if entity @e[tag=boss16,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss16/motion/move4
execute if entity @e[tag=boss16,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss16/motion/move5
execute if entity @e[tag=boss16,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss16/motion/move6
execute if entity @e[tag=boss16,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss16/motion/move7
execute if entity @e[tag=boss16,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss16/motion/move8
execute if entity @e[tag=boss16,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss16/motion/move9






#HP管理
execute as @e[tag=boss16,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss16","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss16,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ループ用
#execute if entity @e[tag=boss16] run schedule function namespace:main/boss/boss16/const 1t replace

#デスポーン
execute as @e[tag=boss16,tag=body] at @s unless entity @e[tag=boss16battle,distance=..85] run function namespace:main/boss/boss16/despawn

#死亡
execute if entity @e[tag=boss16,tag=body,scores={HP=..0}] run function namespace:main/boss/boss16/death




