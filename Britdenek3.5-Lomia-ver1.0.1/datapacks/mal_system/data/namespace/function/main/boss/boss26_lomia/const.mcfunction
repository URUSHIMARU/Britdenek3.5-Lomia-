#生存プレイヤーのタグつけ
tag @e[tag=boss26_lomiabattle] remove boss26_lomiabattle
#本チャン実装で座標入れ必須
execute as @e[tag=boss26_lomia,tag=body] at @s at @e[distance=..80,tag=!boss26_lomia] if score @e[distance=..0.1,limit=1,tag=!boss26_lomia,sort=nearest] lomia < @s lomia run tag @e[distance=..0.1,limit=1,tag=!boss26_lomia,sort=nearest] add boss26_lomiabattle
execute as @e[tag=boss26_lomia,tag=body] at @s at @e[distance=..80,tag=!boss26_lomia] if score @e[distance=..0.1,limit=1,tag=!boss26_lomia,sort=nearest] lomia > @s lomia run tag @e[distance=..0.1,limit=1,tag=!boss26_lomia,sort=nearest] add boss26_lomiabattle


#モーション制御
#1待機状態 #2威嚇 #3横ステップ #4バックステップ #5突進 #6ジグザグ突進 #7ペケ字斬り
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss26_lomia/motion/move1
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss26_lomia/motion/move2
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss26_lomia/motion/move3
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss26_lomia/motion/move4
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss26_lomia/motion/move5
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss26_lomia/motion/move6
execute if entity @e[tag=boss26_lomia,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss26_lomia/motion/move7






#HP管理
execute as @e[tag=boss26_lomia,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss26_lomia","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss26_lomia,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ループ用
#execute if entity @e[tag=boss26_lomia] run schedule function namespace:main/boss/boss26_lomia/const 1t replace
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] as @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] as @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 30 force
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] run scoreboard players remove @s bossskill5 3
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] run execute as @a[distance=..30,advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run advancement grant @s only namespace:skill/normal/skill38
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] as @e[tag=boss26_lomiabattle,tag=bullet,distance=..6] at @s run kill @s

execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 30 force
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] if entity @e[type=arrow,distance=..6] run scoreboard players remove @s bossskill5 3
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] if entity @e[type=arrow,distance=..6] run execute as @a[distance=..30,advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run advancement grant @s only namespace:skill/normal/skill38
execute if entity @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] as @e[tag=body,tag=boss26_lomia,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run kill @s


#デスポーン
#execute as @e[tag=boss26_lomia,tag=body] at @s unless entity @e[tag=boss26_lomiabattle,distance=..85] run function namespace:main/boss/boss26_lomia/despawn

#死亡
execute if entity @e[tag=boss26_lomia,tag=body,scores={HP=..0}] run function namespace:main/boss/boss26_lomia/death




