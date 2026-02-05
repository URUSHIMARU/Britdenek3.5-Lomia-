#生存プレイヤーのタグつけ
tag @e[tag=boss28battle] remove boss28battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss28,tag=body] at @s at @e[distance=..70,tag=!boss28] if score @e[distance=..0.1,limit=1,tag=!boss28,sort=nearest] player < @s player run tag @e[tag=!notBattle,distance=..0.1,limit=1,tag=!bullet,tag=!boss28,sort=nearest] add boss28battle
execute as @e[tag=boss28,tag=body] at @s at @e[distance=..70,tag=!boss28] if score @e[distance=..0.1,limit=1,tag=!boss28,sort=nearest] player > @s player run tag @e[tag=!notBattle,distance=..0.1,limit=1,tag=!bullet,tag=!boss28,sort=nearest] add boss28battle


#モーション制御
#1待機状態 #2モード変更
#カンナギはbossskill1で行動を分岐する bossskill2で回数制御
#bossskill1 1剣モード        #3炎斬   #4炎舞   #5 連舞
#bossskill1 2羽衣モード      #3バックステップ #4追尾矢 #5一直線矢
#bossskill3 3羽衣＋剣モード  #3風神炎舞 #4風神降矢 #5風神直矢 #6風神連舞
#bossskill4 太陽神モード  #3天照レーザー
execute if entity @e[tag=boss28,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss28/motion/move1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss28/motion/move2

execute if entity @e[tag=boss28,limit=1,scores={bossmove=3,bossskill1=1},tag=body] run function namespace:main/boss/boss28/motion/move3_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=4,bossskill1=1},tag=body] run function namespace:main/boss/boss28/motion/move4_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=5,bossskill1=1},tag=body] run function namespace:main/boss/boss28/motion/move5_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=6,bossskill1=1},tag=body] run function namespace:main/boss/boss28/motion/move5_1

execute if entity @e[tag=boss28,limit=1,scores={bossmove=3,bossskill1=2},tag=body] run function namespace:main/boss/boss28/motion/move3_2
execute if entity @e[tag=boss28,limit=1,scores={bossmove=4,bossskill1=2},tag=body] run function namespace:main/boss/boss28/motion/move4_2
execute if entity @e[tag=boss28,limit=1,scores={bossmove=5,bossskill1=2},tag=body] run function namespace:main/boss/boss28/motion/move5_2
execute if entity @e[tag=boss28,limit=1,scores={bossmove=6,bossskill1=2},tag=body] run function namespace:main/boss/boss28/motion/move3_2

execute if entity @e[tag=boss28,limit=1,scores={bossmove=3,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move3_3
execute if entity @e[tag=boss28,limit=1,scores={bossmove=31,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move3_3_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=4,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move4_3
execute if entity @e[tag=boss28,limit=1,scores={bossmove=41,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move4_3_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=5,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move5_3
execute if entity @e[tag=boss28,limit=1,scores={bossmove=51,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move5_3_1
execute if entity @e[tag=boss28,limit=1,scores={bossmove=6,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move6_3
execute if entity @e[tag=boss28,limit=1,scores={bossmove=61,bossskill1=3},tag=body] run function namespace:main/boss/boss28/motion/move6_3_1


execute if entity @e[tag=boss28,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss28/motion/move5
execute if entity @e[tag=boss28,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss28/motion/move6
execute if entity @e[tag=boss28,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss28/motion/move7



#HP管理
execute as @e[tag=boss28,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss28","sound":"entity.allay.hurt",volume:1.5,pitch:1.5}
execute as @e[tag=boss28,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#常時実行
#重力
execute as @e[tag=boss28,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.25 ~
execute as @e[tag=boss28,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.25 ~
execute as @e[tag=boss28,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.25 ~
execute as @e[tag=boss28,tag=body] at @s if block ~ ~-0.1 ~ #namespace:airs run teleport @s ~ ~-0.25 ~
#追尾弾
scoreboard players add @e[tag=boss28_attack] bossskill3 1
execute as @e[tag=boss28_attack1] at @s if entity @e[tag=boss28battle,distance=..2] run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2
execute as @e[tag=boss28_attack1] at @s if entity @e[tag=boss28battle,distance=..2] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40 force
execute as @e[tag=boss28_attack1] at @s if entity @e[tag=boss28battle,distance=..2] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 8 force
execute as @e[tag=boss28_attack1] at @s if entity @e[tag=boss28battle,distance=..2] run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 1012
execute as @e[tag=boss28_attack1] at @s if entity @e[tag=boss28battle,distance=..2] run kill @s
execute as @e[tag=boss28_attack1,scores={bossskill3=60}] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute as @e[tag=boss28_attack1] at @s unless entity @e[tag=boss28,distance=..20] run teleport @s ~ ~ ~ facing entity @e[tag=boss28battle,limit=1,sort=nearest]
execute as @e[tag=boss28_attack1,scores={bossskill3=400..}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2
execute as @e[tag=boss28_attack1,scores={bossskill3=400..}] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40 force
execute as @e[tag=boss28_attack1,scores={bossskill3=400..}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 8 force
execute as @e[tag=boss28_attack1,scores={bossskill3=400..}] at @s run scoreboard players set @e[tag=boss28battle,distance=..3] commandDamage 1012
kill @e[tag=boss28_attack1,scores={bossskill3=400..}]
execute as @e[tag=boss28_attack1] at @s positioned ^-45 ^ ^5 if entity @e[tag=boss28battle,distance=..50] at @s run teleport @s ~ ~ ~ ~2 ~
execute as @e[tag=boss28_attack1] at @s positioned ^45 ^ ^5 if entity @e[tag=boss28battle,distance=..50] at @s run teleport @s ~ ~ ~ ~-2 ~
execute as @e[tag=boss28_attack1] at @s positioned ^ ^45 ^5 if entity @e[tag=boss28battle,distance=..50] at @s run teleport @s ~ ~ ~ ~ ~-3
execute as @e[tag=boss28_attack1] at @s positioned ^ ^45 ^5 if entity @e[tag=boss28battle,distance=..50] at @s run teleport @s ~ ~ ~ ~ ~3
execute as @e[tag=boss28_attack1] at @s run teleport @s ^ ^ ^0.25
execute if score #difficulty difficulty matches 2.. at @s run teleport @s ^ ^ ^0.25
execute as @e[tag=boss28_attack1] at @s run particle minecraft:glow ^ ^ ^ 0.1 0.1 0.1 1 1 force
execute as @e[tag=boss28_attack1] at @s run particle end_rod ^ ^ ^ 0 0 0 0 1 force
#直線矢
execute as @e[tag=boss28_attack2] at @s run teleport @s ^ ^ ^1.0
execute as @e[tag=boss28_attack2] at @s run scoreboard players set @e[tag=boss28battle,distance=..4.5] commandDamage 1018
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28_attack2] at @s run scoreboard players set @e[tag=boss28battle,distance=..4.5] commandDamage 1022
execute if score #difficulty difficulty matches 2.. as @e[tag=boss28_attack2] at @s run teleport @s ^ ^ ^0.75
execute as @e[tag=boss28_attack2] at @s run particle minecraft:flash{color:[1.0,1.0,1.0,0]} ^ ^ ^ 0.1 0.1 0.1 1 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^ 0.1 0.5 0.1 0.3 4 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^ 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^0.25 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^-0.25 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^0.5 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^-0.5 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^0.75 0.1 0.1 0.1 0 3 force
execute as @e[tag=boss28_attack2] at @s run particle minecraft:end_rod ^ ^ ^-0.75 0.1 0.1 0.1 0 3 force
kill @e[tag=boss28_attack2,scores={bossskill3=30..}]
#竜巻
execute as @e[tag=boss28_attack3] at @s if block ^ ^ ^1 #namespace:airs if block ^ ^1 ^1 #namespace:airs run teleport @s ^ ^ ^0.5
execute as @e[tag=boss28_attack3] at @s unless block ^ ^ ^1 #namespace:airs run teleport @s ~ ~ ~ ~30 ~
execute as @e[tag=boss28_attack3] at @s unless block ^ ^1 ^1 #namespace:airs run teleport @s ~ ~ ~ ~30 ~
execute as @e[tag=boss28_attack3] at @s run particle sweep_attack ~ ~0.5 ~ 0.1 0.5 0.1 1 1 force
execute as @e[tag=boss28_attack3] at @s run particle sweep_attack ~ ~1.5 ~ 0.3 0.5 0.3 1 1 force
execute as @e[tag=boss28_attack3] at @s run particle sweep_attack ~ ~2.5 ~ 0.6 0.5 0.6 1 2 force
execute as @e[tag=boss28_attack3] at @s run particle sweep_attack ~ ~3.5 ~ 0.6 0.5 0.6 1 4 force
execute as @e[tag=boss28_attack3] at @s run particle sweep_attack ~ ~4.5 ~ 1.6 0.5 1.6 1 8 force
execute as @e[tag=boss28_attack3] at @s run effect give @e[tag=boss28battle,distance=..2.5] minecraft:levitation 1 15 true
execute as @e[tag=boss28_attack3] at @s run effect give @e[tag=boss28battle,distance=..2.5] minecraft:wither 1 6 false
kill @e[tag=boss28_attack3,scores={bossskill3=400..}]
#太陽神モード
#execute if entity @e[tag=boss28,tag=body,scores={bossskill1=4}] as @e[tag=boss28,tag=body] at @s run particle firework ~ ~1.5 ~ 0.1 0.1 0.1 0.2 1 force
execute if entity @e[tag=boss28,tag=body,scores={bossskill1=4}] as @e[tag=boss28,tag=parts] at @s run particle minecraft:flash{color:[1.0,1.0,0.9,0]} ^ ^2 ^-1 0.1 0.1 0.1 0.2 1 force
execute if entity @e[tag=boss28,tag=body,scores={bossskill1=4}] as @e[tag=boss28,tag=parts] at @s run particle minecraft:end_rod ^ ^2 ^-1 0.1 0.1 0.1 0.3 1 force

#ループ用
#execute if entity @e[tag=boss28] run schedule function namespace:main/boss/boss28/const 1t replace


#デスポーン
execute as @e[tag=boss28,tag=body] at @s unless entity @e[tag=boss28battle,distance=..90] run function namespace:main/boss/boss28/despawn

#死亡
execute if entity @e[tag=boss28,tag=body,scores={HP=..0}] run function namespace:main/boss/boss28/death




