#生存プレイヤーのタグつけ
tag @e[tag=boss18battle] remove boss18battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss18,tag=body] at @s at @e[distance=..80,tag=!boss18] if score @e[distance=..0.1,limit=1,tag=!boss18,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss18,sort=nearest] add boss18battle
execute as @e[tag=boss18,tag=body] at @s at @e[distance=..80,tag=!boss18] if score @e[distance=..0.1,limit=1,tag=!boss18,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss18,sort=nearest] add boss18battle


#特殊技は難易度(difficulty)2以上

#モーション制御
#1待機状態 #2威嚇 #3歩行 #4爆破 #5孵化 #6ブレス上空 #7超爆破 #8ブレス #9スーパーノヴァ
execute if entity @e[tag=boss18,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss18/motion/move1
execute if entity @e[tag=boss18,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss18/motion/move2
execute if entity @e[tag=boss18,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss18/motion/move3
execute if entity @e[tag=boss18,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss18/motion/move4
execute if entity @e[tag=boss18,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss18/motion/move5
execute if entity @e[tag=boss18,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss18/motion/move6
execute if entity @e[tag=boss18,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss18/motion/move7
execute if entity @e[tag=boss18,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss18/motion/move8
execute if entity @e[tag=boss18,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss18/motion/move9




#HP管理
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=sbody11,limit=1] ^ ^ ^-3 ~ ~
execute as @e[tag=boss18,tag=body1] at @s run teleport @e[tag=sbody12,limit=1] ^ ^ ^1 ~ ~
execute as @e[tag=boss18,tag=body2] at @s run teleport @e[tag=sbody2,limit=1] ^ ^3 ^2 ~ ~

execute as @e[tag=boss18,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute as @e[tag=boss18,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss18,nbt={HurtTime:9s},tag=sbody12] as @e[tag=boss18,tag=body1] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss18,nbt={HurtTime:1s},tag=sbody12] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss18,nbt={HurtTime:9s},tag=sbody11] as @e[tag=boss18,tag=tail] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss18,nbt={HurtTime:1s},tag=sbody11] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss18,nbt={HurtTime:9s},tag=sbody2] as @e[tag=boss18,tag=body2] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss18,nbt={HurtTime:1s},tag=sbody2] run function namespace:main/boss/template/damage_end




#ボスの攻撃管理
scoreboard players add @e[tag=boss18_attack] bossskill1 1
scoreboard players add @e[tag=boss18,tag=tail] bossskill1 1
execute as @e[tag=boss18_attack1] at @s run particle dust{color:[1.0,0.0,0.0],scale:3} ~ ~1 ~ 0.5 0.5 0.5 0.5 2 force
execute at @e[tag=boss18_attack1] as @e[tag=boss18battle,distance=..2] unless score @s player = @e[tag=boss18,tag=body,limit=1] player run effect give @s minecraft:wither 5 2 false
execute as @e[tag=boss18_attack1] at @s as @e[tag=boss18battle,distance=..2] unless score @s player = @e[tag=boss18,tag=body,limit=1] player run xp add @s -1 levels
execute as @e[tag=tail,limit=1,tag=boss18] at @s positioned ^ ^ ^5 run particle minecraft:dust{color:[255,1.0,255.0],scale:2} ~ ~1 ~ 1 0 1 1 1 force
scoreboard players add @e[tag=boss18,tag=tail] bossskill1 1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss18,tag=tail,scores={bossskill1=100..}] as @e[tag=tail,limit=1,tag=boss18] at @s positioned ^ ^ ^5 positioned ~ ~0.5 ~ run function namespace:main/entity_model/boss/boss18/boss18_bullet1
scoreboard players set @e[tag=boss18,tag=tail,scores={bossskill1=100..}] bossskill1 0
kill @e[tag=boss18_attack,scores={bossskill1=300..}]


scoreboard players add @e[tag=boss18_attack2] bossskill2 1
execute as @e[nbt={HurtTime:9s},tag=boss18_attack2] at @s run playsound minecraft:entity.elder_guardian.hurt_land master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss18_attack2] at @s store result entity @s Rotation[1] float 0.0 run data get entity @s Rotation[1]
kill @e[tag=boss18_attack2,scores={bossskill2=500..}] 

execute as @e[tag=boss18_attack3] at @s run teleport @s ^ ^ ^0.6 ~ ~1.5
execute as @e[tag=boss18_attack3] at @s unless block ~ ~ ~ #namespace:airs run kill @s
execute at @e[tag=boss18_attack3] as @e[tag=!boss18,tag=boss18battle,distance=..3] unless score @s player = @e[tag=boss18,tag=body,limit=1] player run scoreboard players set @s commandDamage 10
execute at @e[tag=boss18_attack3] as @e[tag=boss18battle,distance=..2.2] unless score @s player = @e[tag=boss18,tag=body,limit=1] player run effect give @s minecraft:wither 5 2 false
execute as @e[tag=boss18_attack3] at @s as @e[tag=boss18battle,distance=..2.2] unless score @s player = @e[tag=boss18,tag=body,limit=1] player run xp add @s -8 levels


#重力
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~
execute as @e[tag=boss18,tag=body,limit=1] at @s if block ~ ~-0.3 ~ #namespace:airs run teleport @s ~ ~-0.1 ~


#ループ用
#execute if entity @e[tag=boss18] run schedule function namespace:main/boss/boss18/const 1t replace

#デスポーン
execute as @e[tag=boss18,tag=body] at @s unless entity @e[tag=boss18battle,distance=..90] run function namespace:main/boss/boss18/despawn

#死亡
execute if entity @e[tag=boss18,tag=body,scores={HP=..0}] run function namespace:main/boss/boss18/death




