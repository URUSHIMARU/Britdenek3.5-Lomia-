#生存プレイヤーのタグつけ
tag @e[tag=boss21battle] remove boss21battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss21,tag=body] at @s at @e[distance=..80,tag=!boss21] if score @e[distance=..0.1,limit=1,tag=!boss21,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss21,sort=nearest] add boss21battle
execute as @e[tag=boss21,tag=body] at @s at @e[distance=..80,tag=!boss21] if score @e[distance=..0.1,limit=1,tag=!boss21,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss21,sort=nearest] add boss21battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3ナイフ投げ #4鎌連撃 #5ソード突進 #6ハンマー回し #7バックステップ #8バックステップナイフ投げ #9大槍大回転
execute if entity @e[tag=boss21,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss21/motion/move1
execute if entity @e[tag=boss21,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss21/motion/move2
execute if entity @e[tag=boss21,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss21/motion/move3
execute if entity @e[tag=boss21,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss21/motion/move4
execute if entity @e[tag=boss21,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss21/motion/move5
execute if entity @e[tag=boss21,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss21/motion/move6
execute if entity @e[tag=boss21,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss21/motion/move7
execute if entity @e[tag=boss21,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss21/motion/move8
execute if entity @e[tag=boss21,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss21/motion/move9







#HP管理
execute as @e[tag=boss21,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss21","sound":"entity.allay.hurt",volume:1.3,pitch:1.2}
execute as @e[tag=boss21,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ボスの攻撃管理
scoreboard players add @e[tag=boss21_attack1] bossskill1 1
execute as @e[tag=boss21_attack1] at @s as @e[tag=boss21battle,distance=..2] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute as @e[tag=boss21_attack1] at @s as @e[tag=boss21battle,distance=..2] unless score @s player = @e[tag=boss21,tag=body,limit=1] player run effect give @s minecraft:wither 5 1 false
execute as @e[tag=boss21_attack1] at @s run teleport @s ^ ^ ^0.5
execute as @e[tag=boss21_attack1] at @s unless block ~ ~0.5 ~ #namespace:airs run kill @s
kill @e[tag=boss21_attack1,scores={bossskill1=50..}]


#ループ用
#execute if entity @e[tag=boss21] run schedule function namespace:main/boss/boss21/const 1t replace

#デスポーン
execute as @e[tag=boss21,tag=body] at @s unless entity @e[tag=boss21battle,distance=..85] run function namespace:main/boss/boss21/despawn

#死亡
execute if entity @e[tag=boss21,tag=body,scores={HP=..0}] run function namespace:main/boss/boss21/death




