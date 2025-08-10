#生存プレイヤーのタグつけ
tag @e[tag=boss20battle] remove boss20battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss20,tag=body] at @s at @e[distance=..80,tag=!boss20] if score @e[distance=..0.1,limit=1,tag=!boss20,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss20,sort=nearest] add boss20battle
execute as @e[tag=boss20,tag=body] at @s at @e[distance=..80,tag=!boss20] if score @e[distance=..0.1,limit=1,tag=!boss20,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss20,sort=nearest] add boss20battle



#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3突進 #4ワープ＋トラップ #5影の槍 #6影の槍収束 #7ビーム小 #8ビーム大 #ビーム大3way
execute if entity @e[tag=boss20,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss20/motion/move1
execute if entity @e[tag=boss20,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss20/motion/move2
execute if entity @e[tag=boss20,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss20/motion/move3
execute if entity @e[tag=boss20,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss20/motion/move4
execute if entity @e[tag=boss20,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss20/motion/move5
execute if entity @e[tag=boss20,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss20/motion/move6
execute if entity @e[tag=boss20,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss20/motion/move7
execute if entity @e[tag=boss20,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss20/motion/move8
execute if entity @e[tag=boss20,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss20/motion/move9







#HP管理
execute as @e[tag=boss20,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss20","sound":"entity.wither_skeleton.hurt",volume:1.5,pitch:0.5}
execute as @e[tag=boss20,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#影
execute as @e[tag=body,tag=boss20] at @s run teleport @e[tag=boss20,tag=shadow] ~ ~ ~ ~ ~
execute as @e[tag=boss20,tag=shadow] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @s y 
execute as @e[tag=boss20,type=minecraft:skeleton,nbt={Invulnerable:1b}] at @s if block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:0b}
execute as @e[tag=boss20,type=minecraft:skeleton,nbt=!{Invulnerable:1b}] at @s unless block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:1b}
#攻撃
scoreboard players add @e[tag=boss20_shadow1] bossskill1 1
execute as @e[tag=boss20_shadow1,scores={bossskill1=400..}] at @s run particle minecraft:large_smoke ^ ^ ^2.2 1.5 0 1.5 0.1 10 force
execute as @e[tag=boss20_shadow1,scores={bossskill1=450..}] at @s run particle minecraft:witch ~ ~ ~ 1.5 0 1.5 0.1 5 force
execute as @e[tag=boss20_shadow1,scores={bossskill1=500..}] at @s run particle minecraft:explosion ~ ~1 ~ 2 2 2 1 20 force
execute as @e[tag=boss20_shadow1,scores={bossskill1=500..}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute as @e[tag=boss20_shadow1,scores={bossskill1=500..}] at @s as @e[tag=boss20battle,distance=..5] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run scoreboard players set @s commandDamage 9
execute as @e[tag=boss20_shadow1,scores={bossskill1=500..}] at @s as @e[tag=boss20battle,distance=..5] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run effect give @s minecraft:mining_fatigue 8 10 false
execute as @e[tag=boss20_shadow1,scores={bossskill1=500..}] at @s as @e[tag=boss20battle,distance=..5] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run xp add @s -20 levels
kill @e[tag=boss20_shadow1,scores={bossskill1=500..}]

scoreboard players add @e[tag=boss20_rance] bossskill1 1
scoreboard players add @e[tag=boss20_rance] bossskill2 1
scoreboard players set @e[tag=boss20_rance,scores={bossskill2=10..}] bossskill2 0
execute as @e[tag=boss20_rance,scores={bossskill1=20..,bossskill2=1}] at @s run teleport @s ^ ^ ^2
execute as @e[tag=boss20_rance100,scores={bossskill1=20..,bossskill2=1}] at @s run teleport @s ^ ^ ^1
execute if score #difficulty difficulty matches 2.. as @e[tag=boss20_rance,scores={bossskill1=20..,bossskill2=1}] at @s run teleport @s ^ ^ ^2
execute as @e[tag=boss20_rance,scores={bossskill1=22..,bossskill2=1}] at @s positioned ^2 ^-10 ^2 run function namespace:main/entity_model/boss/boss20/boss20_bullet3
execute as @e[tag=boss20_rance,scores={bossskill1=22..,bossskill2=1}] at @s positioned ^-2 ^-10 ^2 run function namespace:main/entity_model/boss/boss20/boss20_bullet3
execute as @e[tag=boss20_rance,scores={bossskill1=22..,bossskill2=1}] at @s positioned ^ ^-10 ^4 run function namespace:main/entity_model/boss/boss20/boss20_bullet3
execute as @e[tag=boss20_rance,scores={bossskill1=22..,bossskill2=1}] at @s positioned ^ ^-10 ^0 run function namespace:main/entity_model/boss/boss20/boss20_bullet3
execute as @e[tag=boss20_rance,scores={bossskill1=50}] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute as @e[tag=boss20_rance,scores={bossskill1=50}] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=boss20_rance,scores={bossskill1=120}] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss20battle,limit=1,sort=random]
execute as @e[tag=boss20_rance,scores={bossskill1=120}] at @s run teleport @s ~ ~ ~ ~ 0
kill @e[tag=boss20_rance,scores={bossskill1=200..}]

scoreboard players add @e[tag=boss20_rance3] bossskill1 1
execute as @e[tag=boss20_rance3,scores={bossskill1=1..4}] at @s run teleport @s ~ ~2.5 ~
execute as @e[tag=boss20_rance3,scores={bossskill1=3}] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 0.7 1.2
execute as @e[tag=boss20_rance3,scores={bossskill1=3..4}] at @s as @e[tag=boss20battle,distance=..3] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run scoreboard players set @s commandDamage 13
execute as @e[tag=boss20_rance3,scores={bossskill1=3..4}] at @s as @e[tag=boss20battle,distance=..3] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run effect give @s minecraft:mining_fatigue 15 10 false
execute as @e[tag=boss20_rance3,scores={bossskill1=3..4}] at @s as @e[tag=boss20battle,distance=..3] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run xp add @s -1 levels
execute as @e[tag=boss20_rance3,scores={bossskill1=7..10}] at @s run teleport @s ~ ~-2.5 ~
kill @e[tag=boss20_rance3,scores={bossskill1=10..}]

scoreboard players add @e[tag=boss20_bomb] bossskill1 1
execute as @e[tag=boss20_bomb,scores={bossskill1=40..}] at @s run particle minecraft:large_smoke ^ ^ ^2.2 1.5 0 1.5 0.1 10 force
execute as @e[tag=boss20_bomb,scores={bossskill1=60..}] at @s run particle minecraft:witch ~ ~ ~ 1.5 0 1.5 0.1 5 force
execute as @e[tag=boss20_bomb,scores={bossskill1=100..}] at @s run particle minecraft:explosion ~ ~1 ~ 3 2 3 1 20 force
execute as @e[tag=boss20_bomb,scores={bossskill1=100..}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 1
execute as @e[tag=boss20_bomb,scores={bossskill1=100..}] at @s as @e[tag=boss20battle,distance=..7] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run scoreboard players set @s commandDamage 23
execute as @e[tag=boss20_bomb,scores={bossskill1=100..}] at @s as @e[tag=boss20battle,distance=..7] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run effect give @s minecraft:mining_fatigue 8 10 false
execute as @e[tag=boss20_bomb,scores={bossskill1=100..}] at @s as @e[tag=boss20battle,distance=..7] unless score @s player = @e[tag=boss20,tag=body,limit=1] player run xp add @s -50 levels
kill @e[tag=boss20_bomb,scores={bossskill1=100..}]


#ループ用
#execute if entity @e[tag=boss20] run schedule function namespace:main/boss/boss20/const 1t replace

#デスポーン
execute as @e[tag=boss20,tag=body] at @s unless entity @e[tag=boss20battle,distance=..90] run function namespace:main/boss/boss20/despawn

#死亡
execute if entity @e[tag=boss20,tag=body,scores={HP=..0}] run function namespace:main/boss/boss20/death




