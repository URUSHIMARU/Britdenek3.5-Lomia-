#生存プレイヤーのタグつけ
tag @e[tag=boss8battle] remove boss8battle
#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
#tag @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] add boss8battle
execute as @e[tag=boss8,tag=body] at @s at @e[distance=..80,tag=!boss8] if score @e[distance=..0.1,limit=1,tag=!boss8,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss8,sort=nearest] add boss8battle
execute as @e[tag=boss8,tag=body] at @s at @e[distance=..80,tag=!boss8] if score @e[distance=..0.1,limit=1,tag=!boss8,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss8,sort=nearest] add boss8battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3移動遷移 #4移動 #5サウンド攻撃 #6サウンド防御 #7突進
execute if entity @e[tag=boss8,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss8/motion/move1
execute if entity @e[tag=boss8,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss8/motion/move2
execute if entity @e[tag=boss8,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss8/motion/move3
execute if entity @e[tag=boss8,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss8/motion/move4
execute if entity @e[tag=boss8,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss8/motion/move5
execute if entity @e[tag=boss8,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss8/motion/move6
execute if entity @e[tag=boss8,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss8/motion/move7





#HP管理
execute as @e[tag=boss8,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss8","sound":"entity.witch.hurt",volume:2,pitch:1.2}
execute as @e[tag=boss8,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
execute as @e[tag=boss8_attack] at @s run teleport @s ^ ^ ^0.5
execute as @e[tag=boss8_attack] at @s run particle note ~ ~ ~ 0.6 0.6 0.6 1 4 force
execute as @e[tag=boss8_attack] at @s run particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 1 force
execute as @e[tag=boss8_attack] at @s run playsound minecraft:entity.puffer_fish.hurt master @a ~ ~ ~ 1 0.7
execute as @e[tag=boss8_attack] at @s unless block ^ ^ ^2 #namespace:loreley run teleport @s ~ ~ ~ ~180 ~
execute as @e[tag=boss8_attack] at @s as @e[tag=boss8battle,distance=..3] unless score @s player = @e[tag=boss8,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute as @e[tag=boss8_attack] at @s unless block ^ ^ ^ #namespace:loreley run kill @s



scoreboard players add @e[tag=boss8_attack] bossskill1 1
kill @e[tag=boss8_attack,scores={bossskill1=50..}]


#重力
execute as @e[tag=boss8,tag=body,limit=1] at @s if block ~ ~ ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss8,tag=body,limit=1] at @s if block ~ ~ ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss8,tag=body,limit=1] at @s if block ~ ~ ~ #namespace:airs run teleport @s ~ ~-0.2 ~
execute as @e[tag=boss8,tag=body,limit=1] at @s if block ~ ~ ~ #namespace:airs run teleport @s ~ ~-0.2 ~


#ループ用
#execute if entity @e[tag=boss8] run schedule function namespace:main/boss/boss8/const 1t replace

execute as @e[tag=boss8,tag=body] at @s unless entity @e[tag=boss8battle,distance=..85] run function namespace:main/boss/boss8/despawn

#死亡
execute if entity @e[tag=boss8,tag=body,scores={HP=..0}] run function namespace:main/boss/boss8/death





