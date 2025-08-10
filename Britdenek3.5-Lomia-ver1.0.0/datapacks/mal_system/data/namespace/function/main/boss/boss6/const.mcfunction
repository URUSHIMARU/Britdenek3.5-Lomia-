#生存プレイヤーのタグつけ
tag @e[tag=boss6battle] remove boss6battle
#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
#tag @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] add boss6battle
execute as @e[tag=boss6,tag=body] at @s at @e[distance=..80,tag=!boss6] if score @e[distance=..0.1,limit=1,tag=!boss6,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss6,sort=nearest] add boss6battle
execute as @e[tag=boss6,tag=body] at @s at @e[distance=..80,tag=!boss6] if score @e[distance=..0.1,limit=1,tag=!boss6,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss6,sort=nearest] add boss6battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇  #3歩数 #4突撃 #5ブレス #6ストーキング #7パリピレーザー #8大爆発
execute if entity @e[tag=boss6,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss6/motion/move1
execute if entity @e[tag=boss6,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss6/motion/move2
execute if entity @e[tag=boss6,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss6/motion/move3
execute if entity @e[tag=boss6,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss6/motion/move4
execute if entity @e[tag=boss6,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss6/motion/move5
execute if entity @e[tag=boss6,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss6/motion/move6
execute if entity @e[tag=boss6,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss6/motion/move7
execute if entity @e[tag=boss6,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss6/motion/move8



#HP管理
execute as @e[tag=boss6,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss6","sound":"entity.ravager.hurt",volume:1,pitch:0.8}
execute as @e[tag=boss6,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
execute as @e[tag=boss6,tag=body] at @s run scoreboard players operation @e[tag=boss6_attack1] player = @s player
execute as @e[tag=boss6_attack1] at @s run teleport @s ^ ^ ^1
execute as @e[tag=boss6_attack1] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
execute as @e[tag=boss6_attack1] at @s unless block ~ ~ ~ #namespace:airs run function namespace:main/entity_model/bomb_template {"power":4}
execute as @e[tag=boss6_attack1] at @s unless block ~ ~ ~ #namespace:airs run kill @s


#ループ用
#execute if entity @e[tag=boss6] run schedule function namespace:main/boss/boss6/const 1t replace

#デスポーン
execute as @e[tag=boss6,tag=body] at @s unless entity @e[tag=boss6battle,distance=..85] run function namespace:main/boss/boss6/despawn

#死亡
execute if entity @e[tag=boss6,tag=body,scores={HP=..0}] run function namespace:main/boss/boss6/death





