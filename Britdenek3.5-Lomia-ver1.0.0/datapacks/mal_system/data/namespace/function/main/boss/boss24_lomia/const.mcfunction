#生存プレイヤーのタグつけ
tag @e[tag=boss24_lomiabattle] remove boss24_lomiabattle
#本チャン実装で座標入れ必須
execute as @e[tag=boss24_lomia,tag=body] at @s at @e[distance=..80,tag=!boss24_lomia] if score @e[distance=..0.1,limit=1,tag=!boss24_lomia,sort=nearest] lomia < @s lomia run tag @e[distance=..0.1,limit=1,tag=!boss24_lomia,sort=nearest] add boss24_lomiabattle
execute as @e[tag=boss24_lomia,tag=body] at @s at @e[distance=..80,tag=!boss24_lomia] if score @e[distance=..0.1,limit=1,tag=!boss24_lomia,sort=nearest] lomia > @s lomia run tag @e[distance=..0.1,limit=1,tag=!boss24_lomia,sort=nearest] add boss24_lomiabattle




#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3横ステップ #4バックステップ #5徒歩 #6ジャンプアタック #7グランドブレイク #8ジャンプアタック
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss24_lomia/motion/move1
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss24_lomia/motion/move2
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss24_lomia/motion/move3
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss24_lomia/motion/move4
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss24_lomia/motion/move5
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss24_lomia/motion/move6
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss24_lomia/motion/move7
execute if entity @e[tag=boss24_lomia,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss24_lomia/motion/move8






#HP管理
execute as @e[tag=boss24_lomia,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss24_lomia","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss24_lomia,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ループ用
#execute if entity @e[tag=boss24_lomia] run schedule function namespace:main/boss/boss24_lomia/const 1t replace

#デスポーン
#execute as @e[tag=boss24_lomia,tag=body] at @s unless entity @e[tag=boss24_lomiabattle,distance=..85] run function namespace:main/boss/boss24_lomia/despawn

#死亡
execute if entity @e[tag=boss24_lomia,tag=body,scores={HP=..0}] run function namespace:main/boss/boss24_lomia/death




