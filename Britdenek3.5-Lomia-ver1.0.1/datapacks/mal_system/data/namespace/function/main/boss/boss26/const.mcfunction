#生存プレイヤーのタグつけ
tag @e[tag=boss26battle] remove boss26battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss26,tag=body] at @s at @e[distance=..80,tag=!boss26] if score @e[distance=..0.1,limit=1,tag=!boss26,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss26,sort=nearest] add boss26battle
execute as @e[tag=boss26,tag=body] at @s at @e[distance=..80,tag=!boss26] if score @e[distance=..0.1,limit=1,tag=!boss26,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss26,sort=nearest] add boss26battle


#モーション制御
#1待機状態 #2威嚇 #3横ステップ #4バックステップ #5突進 #6ジグザグ突進 #7ペケ字斬り
execute if entity @e[tag=boss26,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss26/motion/move1
execute if entity @e[tag=boss26,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss26/motion/move2
execute if entity @e[tag=boss26,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss26/motion/move3
execute if entity @e[tag=boss26,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss26/motion/move4
execute if entity @e[tag=boss26,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss26/motion/move5
execute if entity @e[tag=boss26,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss26/motion/move6
execute if entity @e[tag=boss26,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss26/motion/move7






#HP管理
execute as @e[tag=boss26,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss26","sound":"entity.player.hurt",volume:1.5,pitch:1}
execute as @e[tag=boss26,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ループ用
#execute if entity @e[tag=boss26] run schedule function namespace:main/boss/boss26/const 1t replace
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26battle,tag=bullet,distance=..6] as @e[tag=boss26battle,tag=bullet,distance=..6] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26battle,tag=bullet,distance=..6] as @e[tag=boss26battle,tag=bullet,distance=..6] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 30 force
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26battle,tag=bullet,distance=..6] if entity @e[tag=boss26battle,tag=bullet,distance=..6] run scoreboard players remove @s bossskill5 3
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26battle,tag=bullet,distance=..6] if entity @e[tag=boss26battle,tag=bullet,distance=..6] run execute as @a[distance=..30,advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run advancement grant @s only namespace:skill/normal/skill38
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[tag=boss26battle,tag=bullet,distance=..6] as @e[tag=boss26battle,tag=bullet,distance=..6] at @s run kill @s

execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 30 force
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] if entity @e[type=arrow,distance=..6] run scoreboard players remove @s bossskill5 3
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] if entity @e[type=arrow,distance=..6] run execute as @a[distance=..30,advancements={namespace:skill/skill_root=true,namespace:skill/normal/skill33=true,namespace:skill/normal/skill38=false}] run advancement grant @s only namespace:skill/normal/skill38
execute if entity @e[tag=body,tag=boss26,scores={bossskill5=3..}] as @e[tag=body,tag=boss26,scores={bossskill5=3..}] at @s positioned ^ ^ ^1 if entity @e[type=arrow,distance=..6] as @e[type=arrow,distance=..6] at @s run kill @s


#デスポーン
execute as @e[tag=boss26,tag=body] at @s unless entity @e[tag=boss26battle,distance=..85] run function namespace:main/boss/boss26/despawn

#死亡
execute if entity @e[tag=boss26,tag=body,scores={HP=..0}] run function namespace:main/boss/boss26/death




