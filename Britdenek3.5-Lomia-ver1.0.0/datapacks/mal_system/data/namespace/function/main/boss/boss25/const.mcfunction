#生存プレイヤーのタグつけ
tag @e[tag=boss25battle] remove boss25battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss25,tag=body] at @s at @e[distance=..80,tag=!boss25] if score @e[distance=..0.1,limit=1,tag=!boss25,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss25,sort=nearest] add boss25battle
execute as @e[tag=boss25,tag=body] at @s at @e[distance=..80,tag=!boss25] if score @e[distance=..0.1,limit=1,tag=!boss25,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss25,sort=nearest] add boss25battle


#モーション制御
#1待機状態 #2威嚇 #3横ステップ #4バックステップ #5徒歩 #6ジャンプアタック #7グランドブレイク #8ジャンプアタック
execute if entity @e[tag=boss25,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss25/motion/move1
execute if entity @e[tag=boss25,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss25/motion/move2
execute if entity @e[tag=boss25,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss25/motion/move3
execute if entity @e[tag=boss25,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss25/motion/move4
execute if entity @e[tag=boss25,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss25/motion/move5
execute if entity @e[tag=boss25,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss25/motion/move6
execute if entity @e[tag=boss25,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss25/motion/move7
execute if entity @e[tag=boss25,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss25/motion/move8






#HP管理
execute as @e[tag=boss25,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss25","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss25,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ループ用
#execute if entity @e[tag=boss25] run schedule function namespace:main/boss/boss25/const 1t replace

#デスポーン
execute as @e[tag=boss25,tag=body] at @s unless entity @e[tag=boss25battle,distance=..50] run function namespace:main/boss/boss25/despawn

#死亡
execute if entity @e[tag=boss25,tag=body,scores={HP=..0}] run function namespace:main/boss/boss25/death




