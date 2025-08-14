#生存プレイヤーのタグつけ
tag @e[tag=boss9battle] remove boss9battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss9,tag=body] at @s at @e[distance=..80,tag=!boss9] if score @e[distance=..0.1,limit=1,tag=!boss9,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss9,sort=nearest] add boss9battle
execute as @e[tag=boss9,tag=body] at @s at @e[distance=..80,tag=!boss9] if score @e[distance=..0.1,limit=1,tag=!boss9,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss9,sort=nearest] add boss9battle


#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3俊足の剣撃 #4テレポートソード #5ガトリングガン #6バックステップ #7 2刀突進 #8回転斬り
execute if entity @e[tag=boss9,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss9/motion/move1
execute if entity @e[tag=boss9,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss9/motion/move2
execute if entity @e[tag=boss9,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss9/motion/move3
execute if entity @e[tag=boss9,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss9/motion/move4
execute if entity @e[tag=boss9,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss9/motion/move5
execute if entity @e[tag=boss9,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss9/motion/move6
execute if entity @e[tag=boss9,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss9/motion/move7
execute if entity @e[tag=boss9,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss9/motion/move8






#HP管理
execute as @e[tag=boss9,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss9","sound":"entity.blaze.hurt",volume:2,pitch:0.6}
execute as @e[tag=boss9,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
execute as @e[tag=boss9,tag=body1,nbt={Invulnerable:0b}] at @s unless block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:1b}
execute as @e[tag=boss9,tag=body1,nbt={Invulnerable:1b}] at @s if block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:0b}

execute as @e[tag=boss9_attack] at @s run particle minecraft:soul ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
scoreboard players add @e[tag=boss9_attack] bossskill1 1
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 2
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[1d,-0.1d,0d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[0d,-0.1d,-1d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[-1d,-0.1d,0d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[0d,-0.1d,1d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[0.5d,-0.1d,0.707d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[-0.5d,-0.1d,-0.707d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[0.707d,-0.1d,0.5d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
execute as @e[tag=boss9_attack,scores={bossskill1=40}] at @s run summon falling_block ~ ~ ~ {Tags:["boss9_attack2"],Motion:[-0.707d,-0.1d,-0.5d],BlockState:{Name:"minecraft:soul_fire"},Time:1}
kill @e[tag=boss9_attack,scores={bossskill1=40..}]
execute as @e[tag=boss9_attack2] at @s as @e[tag=boss9battle,distance=..3] unless score @s player = @e[tag=boss9,tag=body,limit=1] player run scoreboard players set @s commandDamage 14


scoreboard players add @e[tag=boss9_attack3] bossskill2 1
execute as @e[tag=boss9,tag=right_arm] at @s run teleport @e[tag=boss9_attack3,scores={bossskill2=1},limit=4,sort=nearest,distance=..3] ^ ^-3.4 ^4 ~ ~22.5
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~ ~-15
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~ ~15
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~-20 ~
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~20 ~
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~ ~-8
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~ ~8
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~-12 ~
execute as @e[tag=boss9,tag=right_arm] at @s as @e[tag=boss9_attack3,scores={bossskill2=1},limit=2,sort=random] at @s run teleport @s ^ ^ ^ ~12 ~
execute as @e[tag=boss9_attack3,scores={bossskill2=5}] at @s run data modify entity @s equipment.head.components."minecraft:custom_model_data".floats.[] set value 1076
execute as @e[tag=boss9_attack3,scores={bossskill2=6..}] at @s run teleport @s ^ ^ ^2.5
kill @e[tag=boss9_attack3,scores={bossskill2=20..}]
execute as @e[tag=boss9_attack3] at @s unless block ~ ~1 ~ #namespace:airs run function namespace:main/entity_model/bomb_template {power:2}
execute as @e[tag=boss9_attack3] at @s unless block ~ ~1 ~ #namespace:airs run kill @s
execute as @e[tag=boss9_attack3] at @s positioned ~ ~1 ~ if entity @e[tag=boss9battle,distance=..2] run function namespace:main/entity_model/bomb_template {power:2}
execute as @e[tag=boss9_attack3] at @s positioned ~ ~1 ~ if entity @e[tag=boss9battle,distance=..2] run kill @s



#ループ用
#execute if entity @e[tag=boss9] run schedule function namespace:main/boss/boss9/const 1t replace

#デスポーン
execute as @e[tag=boss9,tag=body] at @s unless entity @e[tag=boss9battle,distance=..85] run function namespace:main/boss/boss9/despawn

#死亡
execute if entity @e[tag=boss9,tag=body,scores={HP=..0}] run function namespace:main/boss/boss9/death





