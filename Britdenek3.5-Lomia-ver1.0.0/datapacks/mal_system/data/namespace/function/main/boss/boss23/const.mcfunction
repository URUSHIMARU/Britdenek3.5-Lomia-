#生存プレイヤーのタグつけ
tag @e[tag=boss23battle] remove boss23battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss23,tag=body] at @s at @e[distance=..80,tag=!boss23] if score @e[distance=..0.1,limit=1,tag=!boss23,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss23,sort=nearest] add boss23battle
execute as @e[tag=boss23,tag=body] at @s at @e[distance=..80,tag=!boss23] if score @e[distance=..0.1,limit=1,tag=!boss23,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss23,sort=nearest] add boss23battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3斬撃 #4ショットガン＋反動 #5レインフォールガン #6ジャンプ #7レーザー #8トラップ設置 #9十字拘束 #10雨
execute if entity @e[tag=boss23,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss23/motion/move1
execute if entity @e[tag=boss23,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss23/motion/move2
execute if entity @e[tag=boss23,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss23/motion/move3
execute if entity @e[tag=boss23,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss23/motion/move4
execute if entity @e[tag=boss23,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss23/motion/move5
execute if entity @e[tag=boss23,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss23/motion/move6
execute if entity @e[tag=boss23,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss23/motion/move7
execute if entity @e[tag=boss23,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss23/motion/move8
execute if entity @e[tag=boss23,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss23/motion/move9
execute if entity @e[tag=boss23,limit=1,scores={bossmove=10},tag=body] run function namespace:main/boss/boss23/motion/move10



#HP管理
execute as @e[tag=boss23,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss23","sound":"entity.skeleton.hurt",volume:1,pitch:0.8}
execute as @e[tag=boss23,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
scoreboard players add @e[type=arrow,tag=boss23arrow2,nbt={NoGravity:1b}] bossskill1 1
execute as @e[tag=boss23arrow2,scores={bossskill1=1..5}] at @s run particle minecraft:dripping_lava ~ ~ ~ 0.1 0.1 0.1 1 3 force
execute as @e[tag=boss23arrow2,scores={bossskill1=40..}] at @s run function namespace:main/entity_model/boss/boss23/boss23_bullet1
execute as @e[tag=boss23arrow2,scores={bossskill1=40..}] at @s run kill @s
execute as @e[tag=boss23] at @s run kill @e[tag=boss23_bomb,distance=..5]


execute as @e[tag=boss23arrow4,nbt={inGround:1b}] at @s if entity @e[tag=boss23battle,distance=..3] run function namespace:main/entity_model/bomb_template {"power":3}
execute as @e[tag=boss23arrow4,nbt={inGround:1b}] at @s if entity @e[tag=boss23battle,distance=..3] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2
execute as @e[tag=boss23arrow4,nbt={inGround:1b}] at @s if entity @e[tag=boss23battle,distance=..3] run kill @s



#重力
execute as @e[tag=body,tag=boss23] at @s if block ~ ~-0.2 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=body,tag=boss23] at @s if block ~ ~-0.2 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=body,tag=boss23] at @s if block ~ ~-0.2 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=body,tag=boss23] at @s if block ~ ~-0.2 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=body,tag=boss23] at @s if block ~ ~-0.2 ~ #namespace:airs run teleport @s ~ ~-0.2 ~



#ループ用
#execute if entity @e[tag=boss23] run schedule function namespace:main/boss/boss23/const 1t replace

#デスポーン
execute as @e[tag=boss23,tag=body] at @s unless entity @e[tag=boss23battle,distance=..150] run function namespace:main/boss/boss23/despawn

#死亡
execute if entity @e[tag=boss23,tag=body,scores={HP=..0}] run function namespace:main/boss/boss23/death




