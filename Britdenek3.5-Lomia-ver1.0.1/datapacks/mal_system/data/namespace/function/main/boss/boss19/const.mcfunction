#生存プレイヤーのタグつけ
tag @e[tag=boss19battle] remove boss19battle
#本チャン実装で座標入れ必須
#本チャン実装で座標入れ必須
execute as @e[tag=boss19,tag=body] at @s at @e[distance=..80,tag=!boss19] if score @e[distance=..0.1,limit=1,tag=!boss19,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss19,sort=nearest] add boss19battle
execute as @e[tag=boss19,tag=body] at @s at @e[distance=..80,tag=!boss19] if score @e[distance=..0.1,limit=1,tag=!boss19,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss19,sort=nearest] add boss19battle


#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3くねる斬撃 #4鎌ブーメラン #5ジャンプ斬り #6旋回1 #7旋回2 #8突進鎌 #9ジャンプ斬り連射
execute if entity @e[tag=boss19,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss19/motion/move1
execute if entity @e[tag=boss19,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss19/motion/move2
execute if entity @e[tag=boss19,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss19/motion/move3
execute if entity @e[tag=boss19,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss19/motion/move4
execute if entity @e[tag=boss19,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss19/motion/move5
execute if entity @e[tag=boss19,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss19/motion/move6
execute if entity @e[tag=boss19,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss19/motion/move7
execute if entity @e[tag=boss19,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss19/motion/move8
execute if entity @e[tag=boss19,limit=1,scores={bossmove=9},tag=body] run function namespace:main/boss/boss19/motion/move9







#HP管理
execute as @e[tag=boss19,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss19","sound":"entity.skeleton.hurt",volume:1,pitch:0.8}
execute as @e[tag=boss19,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ボスの攻撃管理
execute as @e[tag=boss19_attack1] at @s run teleport @s ^ ^ ^0.5 ~ ~

scoreboard players add @e[tag=boss19_attack1] bossskill1 1
execute as @e[tag=boss19_attack1] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=boss19_attack1] at @s run particle minecraft:soul ~ ~ ~ 0.3 0.5 0.3 0.01 10 force
execute as @e[tag=boss19_attack1] at @s as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 14
execute as @e[tag=boss19_attack1] at @s as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run effect give @s minecraft:wither 10 1
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=1..5}] at @s run teleport @s ^0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=6..15}] at @s run teleport @s ^-0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=16..25}] at @s run teleport @s ^0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=26..35}] at @s run teleport @s ^-0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=36..45}] at @s run teleport @s ^0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=46..55}] at @s run teleport @s ^-0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=56..65}] at @s run teleport @s ^0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=66..75}] at @s run teleport @s ^-0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=76..85}] at @s run teleport @s ^0.9 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack1,scores={bossskill1=86..95}] at @s run teleport @s ^-0.9 ^ ^ ~ ~
kill @e[tag=boss19_attack1,scores={bossskill1=95..}]


scoreboard players add @e[tag=boss19_attack3] bossskill2 1
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack3] at @s run teleport @s ~ ~ ~ ~10 ~
execute as @e[tag=boss19_attack3,scores={bossskill2=1}] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss19attack,sort=nearest,limit=1]
execute as @e[tag=boss19_attack3,scores={bossskill2=1}] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=,scores={bossskill2=1}] at @s positioned ^ ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=,scores={bossskill2=11}] at @s positioned ^1 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=,scores={bossskill2=11}] at @s positioned ^-1 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=11}] at @s positioned ^ ^ ^1 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=11}] at @s positioned ^ ^ ^-1 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=21}] at @s positioned ^4 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=21}] at @s positioned ^-4 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=21}] at @s positioned ^ ^ ^4 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=21}] at @s positioned ^ ^ ^-4 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=31}] at @s positioned ^7 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=31}] at @s positioned ^-7 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=31}] at @s positioned ^ ^ ^7 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=31}] at @s positioned ^ ^ ^-7 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=41}] at @s positioned ^10 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=41}] at @s positioned ^-10 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=41}] at @s positioned ^ ^ ^10 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=41}] at @s positioned ^ ^ ^-10 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=51}] at @s positioned ^13 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=51}] at @s positioned ^-13 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=51}] at @s positioned ^ ^ ^13 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=51}] at @s positioned ^ ^ ^-13 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=61}] at @s positioned ^16 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=61}] at @s positioned ^-16 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=61}] at @s positioned ^ ^ ^16 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=61}] at @s positioned ^ ^ ^-16 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=71}] at @s positioned ^19 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=71}] at @s positioned ^-19 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=71}] at @s positioned ^ ^ ^19 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=71}] at @s positioned ^ ^ ^-19 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=81}] at @s positioned ^22 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=81}] at @s positioned ^-22 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=81}] at @s positioned ^ ^ ^22 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=81}] at @s positioned ^ ^ ^-22 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=91}] at @s positioned ^25 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=91}] at @s positioned ^-25 ^ ^ run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=91}] at @s positioned ^ ^ ^25 run function namespace:main/boss/boss19/sub/fire
execute as @e[tag=boss19_attack3,scores={bossskill2=91}] at @s positioned ^ ^ ^-25 run function namespace:main/boss/boss19/sub/fire

kill @e[tag=boss19_attack3,scores={bossskill2=91..}]


execute as @e[tag=boss19_attack4] at @s run teleport @s ^ ^ ^0.3 ~ ~
scoreboard players add @e[tag=boss19_attack4] bossskill3 1
execute as @e[tag=boss19_attack4] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.5 0.5 1 5 force
execute as @e[tag=boss19_attack4] at @s run particle minecraft:soul ~ ~ ~ 0.3 0.5 0.3 0.01 10 force
execute as @e[tag=boss19_attack4] at @s as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run scoreboard players set @s commandDamage 16
execute as @e[tag=boss19_attack4] at @s as @e[tag=boss19battle,distance=..3] unless score @s player = @e[tag=boss19,tag=body,limit=1] player run effect give @s minecraft:wither 20 1
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=1..5}] at @s run teleport @s ^0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=6..15}] at @s run teleport @s ^-0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=16..25}] at @s run teleport @s ^0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=26..35}] at @s run teleport @s ^-0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=36..45}] at @s run teleport @s ^0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=46..55}] at @s run teleport @s ^-0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=56..65}] at @s run teleport @s ^0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=66..75}] at @s run teleport @s ^-0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=76..85}] at @s run teleport @s ^0.3 ^ ^ ~ ~
execute if score #difficulty difficulty matches 2.. as @e[tag=boss19_attack4,scores={bossskill3=86..95}] at @s run teleport @s ^-0.3 ^ ^ ~ ~
kill @e[tag=boss19_attack4,scores={bossskill3=95..}]


#ループ用
#execute if entity @e[tag=boss19] run schedule function namespace:main/boss/boss19/const 1t replace

#デスポーン
execute as @e[tag=boss19,tag=body] at @s unless entity @e[tag=boss19battle,distance=..85] run function namespace:main/boss/boss19/despawn

#死亡
execute if entity @e[tag=boss19,tag=body,scores={HP=..0}] run function namespace:main/boss/boss19/death




