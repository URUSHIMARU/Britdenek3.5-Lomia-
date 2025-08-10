#生存プレイヤーのタグつけ
tag @e[tag=boss15battle] remove boss15battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss15,tag=body] at @s at @e[distance=..80,tag=!boss15] if score @e[distance=..0.1,limit=1,tag=!boss15,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss15,sort=nearest] add boss15battle
execute as @e[tag=boss15,tag=body] at @s at @e[distance=..80,tag=!boss15] if score @e[distance=..0.1,limit=1,tag=!boss15,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss15,sort=nearest] add boss15battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3足薙ぎ払い #4斬撃 #5斬撃連射 #6リングからの散弾 #7触手の波 #8触手津波＋散弾 #9爆破ポータル
execute if entity @e[tag=boss15,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss15/motion/move1
execute if entity @e[tag=boss15,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss15/motion/move2
execute if entity @e[tag=boss15,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss15/motion/move3
execute if entity @e[tag=boss15,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss15/motion/move4
execute if entity @e[tag=boss15,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss15/motion/move5
execute if entity @e[tag=boss15,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss15/motion/move6
execute if entity @e[tag=boss15,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss15/motion/move7
execute if entity @e[tag=boss15,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss15/motion/move8
execute if entity @e[tag=boss15,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss15/motion/move9






#HP管理
execute as @e[tag=boss15,nbt={HurtTime:9s},type=slime] at @s run function namespace:main/boss/boss15/damage
execute as @e[tag=boss15,tag=eye1] at @s run teleport @e[tag=seye1,limit=1] ^ ^-1 ^-2 ~ ~
execute as @e[tag=boss15,tag=eye2] at @s run teleport @e[tag=seye2,limit=1] ^ ^-1 ^-2 ~ ~
execute as @e[tag=boss15,tag=eye3] at @s run teleport @e[tag=seye3,limit=1] ^ ^-1 ^-2 ~ ~
execute as @e[tag=boss15,tag=eye4] at @s run teleport @e[tag=seye4,limit=1] ^ ^-1 ^-2 ~ ~
execute as @e[tag=boss15,tag=eye5] at @s run teleport @e[tag=seye5,limit=1] ^ ^-1 ^-2 ~ ~


execute as @e[tag=boss15,nbt={HurtTime:9s},type=slime] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.slime.hurt",volume:1.5,pitch:0}
execute if entity @e[tag=boss15,nbt={HurtTime:9s},tag=seye1] as @e[tag=boss15,tag=eye1] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss15,nbt={HurtTime:9s},tag=seye2] as @e[tag=boss15,tag=eye2] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss15,nbt={HurtTime:9s},tag=seye3] as @e[tag=boss15,tag=eye3] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss15,nbt={HurtTime:9s},tag=seye4] as @e[tag=boss15,tag=eye4] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss15,nbt={HurtTime:9s},tag=seye5] as @e[tag=boss15,tag=eye5] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss15","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}

execute if entity @e[tag=boss15,nbt={HurtTime:1s},tag=seye1] as @e[tag=boss15,tag=eye1] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss15,nbt={HurtTime:1s},tag=seye2] as @e[tag=boss15,tag=eye2] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss15,nbt={HurtTime:1s},tag=seye3] as @e[tag=boss15,tag=eye3] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss15,nbt={HurtTime:1s},tag=seye4] as @e[tag=boss15,tag=eye4] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss15,nbt={HurtTime:1s},tag=seye5] as @e[tag=boss15,tag=eye5] at @s run function namespace:main/boss/template/damage_end



#ボスの攻撃管理
execute as @e[tag=boss15,tag=body] at @s as @e[tag=boss15battle,distance=..8] at @s rotated ~180 0 run teleport @s ^ ^ ^0.5

scoreboard players add @e[tag=boss15_attack1] bossskill1 1
execute as @e[tag=boss15_attack1,scores={bossskill1=2..}] at @s run teleport @s ^ ^ ^2 ~ ~
execute as @e[tag=boss15_attack1] at @s run particle minecraft:witch ~ ~2 ~ 0.1 1 0.1 1 20 force
execute as @e[tag=boss15_attack1] at @s run particle minecraft:sweep_attack ~ ~2 ~ 1 2 1 1 20 force
execute as @e[tag=boss15_attack1] at @s run playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 1.5 2
execute as @e[tag=boss15_attack1] at @s as @e[tag=boss15battle,distance=..2] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 26
kill @e[tag=boss15_attack1,scores={bossskill1=40..}]
execute as @e[tag=boss15_attack1] at @s unless block ~ ~ ~ #namespace:airs run kill @s

scoreboard players add @e[tag=boss15_attack2] bossskill2 1
execute as @e[tag=boss15_attack2,scores={bossskill2=1..}] at @s run teleport @s ^ ^ ^0.6 ~ ~0.3
execute as @e[tag=boss15_attack2] at @s as @e[tag=boss15battle,distance=..2] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 18
execute as @e[tag=boss15_attack3] at @s unless block ~ ~1 ~ #namespace:airs run particle minecraft:explosion ~ ~1 ~ 2 2 2 1 40 force
execute as @e[tag=boss15_attack3] at @s unless block ~ ~1 ~ #namespace:airs run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute as @e[tag=boss15_attack3] at @s unless block ~ ~1 ~ #namespace:airs as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 18
kill @e[tag=boss15_attack2,scores={bossskill2=200..}]
execute as @e[tag=boss15_attack2] at @s unless block ~ ~1 ~ #namespace:airs run kill @s

scoreboard players add @e[tag=boss15_attack5] bossskill3 1
execute as @e[tag=boss15_attack5,scores={bossskill3=1..5}] at @s run teleport @s ^ ^-0.1 ^ ~ ~-3
execute as @e[tag=boss15_attack5,scores={bossskill3=20..30}] at @s run teleport @s ^ ^ ^ ~ ~-6
execute as @e[tag=boss15_attack5,scores={bossskill3=60..62}] at @s run teleport @s ^ ^ ^ ~ ~40
execute as @e[tag=boss15_attack5,scores={bossskill3=60..62}] at @s run particle minecraft:explosion ^ ^ ^4 1 1 1 1 20 force
execute as @e[tag=boss15_attack5,scores={bossskill3=60..62}] at @s run playsound minecraft:entity.squid.hurt master @a ~ ~ ~ 2 0
execute as @e[tag=boss15_attack5,scores={bossskill3=60..62}] at @s positioned ^ ^ ^6 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 28
kill @e[tag=boss15_attack5,scores={bossskill3=100..}]



#ループ用
#execute if entity @e[tag=boss15] run schedule function namespace:main/boss/boss15/const 1t replace

#デスポーン
execute as @e[tag=boss15,tag=body] at @s unless entity @e[tag=boss15battle,distance=..85] run function namespace:main/boss/boss15/despawn

#死亡
execute if entity @e[tag=boss15,tag=body,scores={HP=..0}] run function namespace:main/boss/boss15/death




