#生存プレイヤーのタグつけ
tag @e[tag=boss5battle] remove boss5battle
#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
execute as @e[tag=boss5,tag=body] at @s at @e[distance=..80,tag=!boss5] if score @e[distance=..0.1,limit=1,tag=!boss5,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss5,sort=nearest] add boss5battle
execute as @e[tag=boss5,tag=body] at @s at @e[distance=..80,tag=!boss5] if score @e[distance=..0.1,limit=1,tag=!boss5,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss5,sort=nearest] add boss5battle



#特殊技は難易度(difficulty)2以上



#モーション制御
#1待機状態 2開始 3吸血 4火炎放射 5コウモリ発射 6攻撃 7テレポート
#21待機ドラゴン 22ドラゴン変身 23滞空 24火炎放射 25火炎放射2 26プロミネンス 27移動 28 エアスラ 29オリル 210太陽
execute if entity @e[tag=boss5,limit=1,scores={bossmove=1},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move1
execute if entity @e[tag=boss5,limit=1,scores={bossmove=2},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move2
execute if entity @e[tag=boss5,limit=1,scores={bossmove=3},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move3
execute if entity @e[tag=boss5,limit=1,scores={bossmove=4},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move4
execute if entity @e[tag=boss5,limit=1,scores={bossmove=5},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move5
execute if entity @e[tag=boss5,limit=1,scores={bossmove=6},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move6
execute if entity @e[tag=boss5,limit=1,scores={bossmove=7},tag=body,tag=switch] run function namespace:main/boss/boss5/motion/move7

execute if entity @e[tag=boss5,limit=1,scores={bossmove=11},tag=body] run function namespace:main/boss/boss5/motion/2move1
execute if entity @e[tag=boss5,limit=1,scores={bossmove=12},tag=body] run function namespace:main/boss/boss5/motion/2move2
execute if entity @e[tag=boss5,limit=1,scores={bossmove=13},tag=body] run function namespace:main/boss/boss5/motion/2move3
execute if entity @e[tag=boss5,limit=1,scores={bossmove=14},tag=body] run function namespace:main/boss/boss5/motion/2move4
execute if entity @e[tag=boss5,limit=1,scores={bossmove=15},tag=body] run function namespace:main/boss/boss5/motion/2move5
execute if entity @e[tag=boss5,limit=1,scores={bossmove=16},tag=body] run function namespace:main/boss/boss5/motion/2move6
execute if entity @e[tag=boss5,limit=1,scores={bossmove=17},tag=body] run function namespace:main/boss/boss5/motion/2move7
execute if entity @e[tag=boss5,limit=1,scores={bossmove=18},tag=body] run function namespace:main/boss/boss5/motion/2move8
execute if entity @e[tag=boss5,limit=1,scores={bossmove=19},tag=body] run function namespace:main/boss/boss5/motion/2move9
execute if entity @e[tag=boss5,limit=1,scores={bossmove=20},tag=body] run function namespace:main/boss/boss5/motion/2move10




#HP管理
execute as @e[tag=boss5,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss5","sound":"entity.player.death",volume:1,pitch:1.5}
execute as @e[tag=boss5,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#ボスのモードチェンジ
execute as @e[tag=boss5,tag=body,scores={HP=..250},tag=switch] at @s run scoreboard players set @s motion 0
execute as @e[tag=boss5,tag=body,scores={HP=..250},tag=switch] at @s run scoreboard players set @s bossmove 12
execute as @e[tag=boss5,tag=body,scores={HP=..250},tag=switch] at @s run tag @s remove switch

#ボスの攻撃管理
scoreboard players add @e[tag=boss5attack4] bossskill5 1
scoreboard players add @e[tag=boss5attack4] motion2 1
execute as @e[tag=boss5attack4,scores={bossskill5=36..}] at @s run particle minecraft:soul ~ ~1 ~ 0.2 0.2 0.2 0.1 20 force
execute as @e[tag=boss5attack4,scores={bossskill5=1..20}] at @s run teleport @s ~ ~1.5 ~ ~10 ~
execute as @e[tag=boss5attack4,scores={bossskill5=21..30}] at @s run teleport @s ~ ~0.7 ~ ~10 ~
execute as @e[tag=boss5attack4,scores={bossskill5=31..35}] at @s run teleport @s ~ ~0.5 ~ ~10 ~
execute as @e[tag=boss5attack4,scores={bossskill5=36..}] at @s run teleport @s ~ ~ ~ ~10 ~

execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.8
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run function namespace:main/entity_model/boss/boss5/boss5_bullet11
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run function namespace:main/entity_model/boss/boss5/boss5_bullet12
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run function namespace:main/entity_model/boss/boss5/boss5_bullet13
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run teleport @e[tag=boss5_attack1,distance=..1,limit=3,sort=nearest] ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run teleport @e[tag=boss5_attack12,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~120 ~-10
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run teleport @e[tag=boss5_attack13,distance=..1,limit=1,sort=nearest] ~ ~ ~ ~-120 ~-10
execute if entity @e[tag=boss5attack4,scores={motion2=50}] as @e[tag=boss5attack4] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1
scoreboard players set @e[tag=boss5attack4,scores={motion2=50}] motion2 0

execute as @e[tag=boss5attack4,scores={bossskill5=1200..}] at @s run kill @s


execute as @e[tag=boss5_attack1] at @s as @e[tag=boss5battle,distance=..2.5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss5/boss5_bullet21
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss5/boss5_bullet22
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs positioned ~ ~1 ~ run function namespace:main/entity_model/boss/boss5/boss5_bullet23
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run execute as @e[tag=boss5_attack22,distance=..1,sort=nearest,limit=1] at @s run teleport @s ~ ~ ~ ~120 ~
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run execute as @e[tag=boss5_attack23,distance=..1,sort=nearest,limit=1] at @s run teleport @s ~ ~ ~ ~-120 ~
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.1 60 force
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 50 force
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss5_attack1] at @s unless block ^ ^ ^ #namespace:airs run kill @s
execute as @e[tag=boss5_attack1] at @s if block ^ ^ ^ #namespace:airs run teleport @s ^ ^ ^1 ~ ~4
execute as @e[tag=boss5_attack2] at @s if block ^ ^ ^ #namespace:airs run teleport @s ^ ^ ^0.4
execute as @e[tag=boss5_attack2] at @s unless block ^ ^ ^ #namespace:airs run kill @s
execute as @e[tag=boss5_attack2] at @s as @e[tag=boss5battle,distance=..1.5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute as @e[tag=boss5_attack2] at @s as @e[tag=boss5battle,distance=..1.5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run effect give @s minecraft:wither 4 1 false

scoreboard players add @e[tag=boss5_bat,type=bat] bossskill1 1
kill @e[tag=boss5_bat,type=bat,scores={bossskill1=400..}]

execute if score #difficulty difficulty matches 2.. as @e[tag=boss5_bat,type=bat] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 0.2 1 force
execute if score #difficulty difficulty matches 2.. as @e[tag=boss5_bat,type=bat] at @s as @e[tag=boss5battle,distance=..1.5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run effect give @s minecraft:wither 3 1 true

scoreboard players add @e[tag=boss5_bat,type=bat,scores={bossskill2=1..}] bossskill2 1
execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1.5 1
execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.2 300 force
execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 3 force
execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s as @e[tag=boss5battle,distance=..4] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s as @e[tag=boss5battle,distance=..5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run effect give @s[tag=undead] minecraft:instant_health 1 2 true
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=100}] at @s as @e[tag=boss5battle,distance=..5] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run effect give @s[tag=!undead] minecraft:instant_damage 1 2 true
kill @e[tag=boss5_bat,type=bat,scores={bossskill2=100..}] 
execute as @e[tag=boss5_bat,type=bat,scores={bossskill2=1..}] at @s run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.1 5 force

scoreboard players add @e[tag=boss5attack3,type=minecraft:armor_stand] bossskill3 1
execute as @e[tag=boss5attack3,type=minecraft:armor_stand] at @s run teleport @s ~ ~ ~ ~6 ~

execute as @e[tag=boss5attack3,type=minecraft:armor_stand] at @s positioned ^ ^ ^16 run particle minecraft:soul ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=boss5attack3,type=minecraft:armor_stand,scores={bossskill3=60..120}] at @s positioned ^ ^ ^16 run function namespace:main/entity_model/bomb_template {"power":4}
execute as @e[tag=boss5attack3,type=minecraft:armor_stand,scores={bossskill3=..60}] at @s positioned ^ ^ ^16 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 1.8
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss5attack3,type=minecraft:armor_stand] at @s positioned ^ ^ ^22 run particle minecraft:soul ~ ~ ~ 0 0 0 0.1 5 force
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss5attack3,type=minecraft:armor_stand,scores={bossskill3=60..120}] at @s positioned ^ ^ ^22 run function namespace:main/entity_model/bomb_template {"power":4}
execute as @e[tag=boss5target2] at @s positioned ~-2 0 ~-2 if entity @e[tag=boss5,tag=body,dx=4,dy=300,dz=4] run kill @s

scoreboard players add @e[tag=boss5_attack3] bossskill4 1
execute as @e[tag=boss5_attack3] at @s run teleport @s ^ ^ ^0.8
execute as @e[tag=boss5_attack3] at @s as @e[tag=boss5battle,distance=..2] unless score @s player = @e[tag=boss5,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute as @e[tag=boss5_attack3] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 6 force
execute as @e[tag=boss5_attack3] at @s run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 3 force
execute as @e[tag=boss5_attack3] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1.7
execute as @e[tag=boss5_attack3] at @s unless block ~ ~ ~ #namespace:airs run kill @s
execute as @e[tag=boss5_attack3,scores={bossskill4=60..}] at @s run kill @s


kill @e[tag=boss5attack3,type=minecraft:armor_stand,scores={bossskill3=120..}]

scoreboard players operation @e[tag=boss5attack4] player = @e[tag=boss5,limit=1,tag=body] player
scoreboard players operation @e[tag=boss5attack3] player = @e[tag=boss5,limit=1,tag=body] player
scoreboard players operation @e[tag=boss5_bat] player = @e[tag=boss5,limit=1,tag=body] player
scoreboard players operation @e[tag=boss5_attack1] player = @e[tag=boss5,limit=1,tag=body] player
scoreboard players operation @e[tag=boss5_attack2] player = @e[tag=boss5,limit=1,tag=body] player
scoreboard players operation @e[tag=boss5_attack3] player = @e[tag=boss5,limit=1,tag=body] player



#ループ用
#execute if entity @e[tag=boss5] run schedule function namespace:main/boss/boss5/const 1t replace

#デスポーン
execute as @e[tag=boss5,tag=body] at @s unless entity @e[tag=boss5battle,distance=..85] run function namespace:main/boss/boss5/despawn


#死亡
execute if entity @e[tag=boss5,tag=body,scores={HP=..0}] run function namespace:main/boss/boss5/death





