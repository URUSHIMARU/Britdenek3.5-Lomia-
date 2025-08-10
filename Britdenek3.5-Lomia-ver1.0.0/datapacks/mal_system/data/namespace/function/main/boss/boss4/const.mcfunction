#生存プレイヤーのタグつけ
tag @e[tag=boss4battle] remove boss4battle
#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
execute as @e[tag=boss4,tag=body] at @s at @e[distance=..80,tag=!boss4] if score @e[distance=..0.1,limit=1,tag=!boss4,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss4,sort=nearest] add boss4battle
execute as @e[tag=boss4,tag=body] at @s at @e[distance=..80,tag=!boss4] if score @e[distance=..0.1,limit=1,tag=!boss4,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss4,sort=nearest] add boss4battle



#特殊技は難易度(difficulty)2以上

#モーション制御
#1待機状態 2威嚇モーション 3徒歩 4近接ひっかき 5威嚇 6蜘蛛の巣飛ばし 7貫通糸飛ばし
execute if entity @e[tag=boss4,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss4/motion/move1
execute if entity @e[tag=boss4,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss4/motion/move2
execute if entity @e[tag=boss4,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss4/motion/move3
execute if entity @e[tag=boss4,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss4/motion/move4
execute if entity @e[tag=boss4,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss4/motion/move5
execute if entity @e[tag=boss4,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss4/motion/move6
execute if entity @e[tag=boss4,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss4/motion/move7


#HP管理
execute as @e[tag=boss4,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss4","sound":"entity.spider.hurt",volume:1,pitch:0.5}
execute as @e[tag=boss4,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ボス攻撃1
execute as @e[tag=boss4_attack,nbt=!{NoAI:1b}] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.4 0.4 0.4 1 20 force
execute as @e[tag=boss4_attack,nbt={OnGround:1b},tag=bullet] at @s run data merge entity @s {NoAI:1b,NoGravity:1b,Tags:["enemy","boss4_attack"],equipment: {head: {count: 1, id: "minecraft:white_stained_glass",components:{"minecraft:dyed_color": 16777215,"minecraft:custom_model_data":{floats:[1031]}}}}}
execute as @e[tag=boss4_attack,tag=bullet] at @s run scoreboard players operation @s player = @e[tag=boss4,tag=body,limit=1] player
execute as @e[tag=boss4_attack,tag=!bullet] at @s as @e[tag=boss4battle,distance=..2.3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s minecraft:wither 2 0
execute as @e[tag=boss4_attack,tag=!bullet] at @s as @e[tag=boss4battle,distance=..2.3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s minecraft:slowness 1 5 true

execute as @e[tag=boss4_attack,tag=bullet] at @s as @e[tag=boss4battle,distance=..2.3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run scoreboard players set @s commandDamage 14

#ボス攻撃2
scoreboard players add @e[tag=boss4_attack2] bossskill1 1
execute as @e[tag=boss4_attack2] at @s run teleport @s ^ ^ ^2
execute as @e[tag=boss4_attack2] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.4 0.4 0.4 1 5 force

execute as @e[tag=boss4_attack2] at @s as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute as @e[tag=boss4_attack2] at @s as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute as @e[tag=boss4_attack2] at @s as @e[tag=boss4battle,distance=..3] unless score @s player = @e[tag=boss4,tag=body,limit=1] player run effect give @s minecraft:slowness 4 5 true


kill @e[tag=boss4_attack2,scores={bossskill1=20..}]

#ループ用
#execute if entity @e[tag=boss4,tag=body] run schedule function namespace:main/boss/boss4/const 1t replace

#デスポーン
execute as @e[tag=boss4,tag=body] at @s unless entity @e[tag=boss4battle,distance=..85] run function namespace:main/boss/boss4/despawn


#死亡
execute if entity @e[tag=boss4,scores={HP=..0},tag=body] run function namespace:main/boss/boss4/death





