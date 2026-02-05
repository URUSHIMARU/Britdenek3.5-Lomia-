#生存プレイヤーのタグつけ
tag @e[tag=boss27battle] remove boss27battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss27,tag=body] at @s at @e[distance=..70,tag=!boss27] if score @e[distance=..0.1,limit=1,tag=!boss27,sort=nearest] player < @s player run tag @e[tag=!notBattle,distance=..0.1,limit=1,tag=!bullet,tag=!boss27,sort=nearest] add boss27battle
execute as @e[tag=boss27,tag=body] at @s at @e[distance=..70,tag=!boss27] if score @e[distance=..0.1,limit=1,tag=!boss27,sort=nearest] player > @s player run tag @e[tag=!notBattle,distance=..0.1,limit=1,tag=!bullet,tag=!boss27,sort=nearest] add boss27battle


#モーション制御
#1待機状態 #2突撃モード #3火薬まき1 #4火薬まき2 #5張り手 #6猫だまし #7全方位張り手
execute if entity @e[tag=boss27,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss27/motion/move1
execute if entity @e[tag=boss27,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss27/motion/move2
execute if entity @e[tag=boss27,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss27/motion/move3
execute if entity @e[tag=boss27,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss27/motion/move4
execute if entity @e[tag=boss27,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss27/motion/move5
execute if entity @e[tag=boss27,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss27/motion/move6
execute if entity @e[tag=boss27,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss27/motion/move7






#HP管理
execute as @e[tag=boss27,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss27","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss27,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

#弾丸用
execute as @e[tag=boss27_bomb] at @s if block ^ ^ ^1 #namespace:airs_for_mob run teleport @s ^ ^ ^1 ~ ~6
execute as @e[tag=boss27_bomb] at @s run particle minecraft:smoke ~ ~1 ~ 1 1 1 0 10 force
execute as @e[tag=boss27_bomb] at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 5 force
execute as @e[tag=boss27_bomb] at @s run effect give @a[tag=boss27battle,distance=..4] minecraft:darkness 3 1 true

#ループ用
#execute if entity @e[tag=boss27] run schedule function namespace:main/boss/boss27/const 1t replace


#デスポーン
execute as @e[tag=boss27,tag=body] at @s unless entity @e[tag=boss27battle,distance=..85] run function namespace:main/boss/boss27/despawn

#死亡
execute if entity @e[tag=boss27,tag=body,scores={HP=..0}] run function namespace:main/boss/boss27/death




