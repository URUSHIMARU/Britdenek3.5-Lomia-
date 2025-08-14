#生存プレイヤーのタグつけ
tag @e[tag=boss7battle] remove boss7battle
#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
#tag @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] add boss7battle
execute as @e[tag=boss7,tag=body] at @s at @e[distance=..80,tag=!boss7] if score @e[distance=..0.1,limit=1,tag=!boss7,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss7,sort=nearest] add boss7battle
execute as @e[tag=boss7,tag=body] at @s at @e[distance=..80,tag=!boss7] if score @e[distance=..0.1,limit=1,tag=!boss7,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss7,sort=nearest] add boss7battle


#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 2咆哮 3徒歩 4バックステップ 5サイドステップ右 6サイドステップ左 7前にジャンプ斬り 8盾ダッシュ 9盾アッタク 10前方斬り 11横薙ぎ払い 12必殺
#ランダム1 徒歩モーションからプレイヤー索敵成功
#ランダム2 徒歩モーションから索敵失敗(ひっかかり)
#ランダム3 その他
execute if entity @e[tag=boss7,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss7/motion/move1
execute if entity @e[tag=boss7,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss7/motion/move2
execute if entity @e[tag=boss7,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss7/motion/move3
execute if entity @e[tag=boss7,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss7/motion/move4
execute if entity @e[tag=boss7,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss7/motion/move5
execute if entity @e[tag=boss7,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss7/motion/move6
execute if entity @e[tag=boss7,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss7/motion/move7
execute if entity @e[tag=boss7,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss7/motion/move8
execute if entity @e[tag=boss7,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss7/motion/move9
execute if entity @e[tag=boss7,limit=1,scores={bossmove=10},tag=body] run function namespace:main/boss/boss7/motion/move10
execute if entity @e[tag=boss7,limit=1,scores={bossmove=11},tag=body] run function namespace:main/boss/boss7/motion/move11
execute if entity @e[tag=boss7,limit=1,scores={bossmove=12},tag=body] run function namespace:main/boss/boss7/motion/move12




#HP管理
execute as @e[tag=boss7,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss7","sound":"entity.zombie.attack_iron_door",volume:2,pitch:0.7}
execute as @e[tag=boss7,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end



#ボスの攻撃管理
scoreboard players add @e[tag=boss7attack1] bossskill1 1
execute as @e[tag=boss7attack1,scores={bossskill1=10}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 1
execute as @e[tag=boss7attack1,scores={bossskill1=10..20}] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.3 3 force
execute as @e[tag=boss7attack1,scores={bossskill1=20}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
execute as @e[tag=boss7attack1,scores={bossskill1=20}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1.2
execute as @e[tag=boss7attack1,scores={bossskill1=20}] at @s as @e[tag=boss7battle,distance=..4] unless score @s player = @e[tag=boss7,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
kill @e[tag=boss7attack1,scores={bossskill1=20..}]

#重力
execute as @e[tag=boss7,tag=body,limit=1] at @s if block ~ ~-2.4 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss7,tag=body,limit=1] at @s if block ~ ~-2.4 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss7,tag=body,limit=1] at @s if block ~ ~-2.4 ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss7,tag=body,limit=1] at @s if block ~ ~-2.4 ~ #namespace:airs run teleport @s ~ ~-0.2 ~


#ループ用
#execute if entity @e[tag=boss7] run schedule function namespace:main/boss/boss7/const 1t replace

#デスポーン
execute as @e[tag=boss7,tag=body] at @s unless entity @e[tag=boss7battle,distance=..85] run function namespace:main/boss/boss7/despawn


#死亡
execute if entity @e[tag=boss7,tag=body,scores={HP=..0}] run function namespace:main/boss/boss7/death





