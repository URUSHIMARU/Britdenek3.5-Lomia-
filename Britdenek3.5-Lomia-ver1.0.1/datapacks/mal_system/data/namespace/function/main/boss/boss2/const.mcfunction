#生存プレイヤーのタグつけ
tag @e[tag=boss2battle] remove boss2battle
execute as @e[tag=boss2,tag=body] at @s at @e[distance=..80,tag=!boss2] if score @e[distance=..0.1,limit=1,tag=!boss2,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss2,sort=nearest] add boss2battle
execute as @e[tag=boss2,tag=body] at @s at @e[distance=..80,tag=!boss2] if score @e[distance=..0.1,limit=1,tag=!boss2,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss2,sort=nearest] add boss2battle

#特殊技は#difficulty(difficulty)2以上

#モーション制御
#1最初の威嚇行動 4,5突進攻撃 6唾液発射 7卵爆撃 8唾液爆撃
execute if entity @e[tag=boss2,limit=1,tag=flap1] run function namespace:main/boss/boss2/motion/move2
execute if entity @e[tag=boss2,limit=1,tag=flap2] run function namespace:main/boss/boss2/motion/move3

execute if entity @e[tag=boss2,limit=1,scores={bossmove=1}] run function namespace:main/boss/boss2/motion/move1
execute if entity @e[tag=boss2,limit=1,scores={bossmove=4}] run function namespace:main/boss/boss2/motion/move4
execute if entity @e[tag=boss2,limit=1,scores={bossmove=5}] run function namespace:main/boss/boss2/motion/move5
execute if entity @e[tag=boss2,limit=1,scores={bossmove=6}] run function namespace:main/boss/boss2/motion/move6
execute if entity @e[tag=boss2,limit=1,scores={bossmove=7}] run function namespace:main/boss/boss2/motion/move7
execute if entity @e[tag=boss2,limit=1,scores={bossmove=8}] run function namespace:main/boss/boss2/motion/move8

#HP管理
execute as @e[tag=boss2,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss2","sound":"entity.phantom.death",volume:1,pitch:1.4}
execute as @e[tag=boss2,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#痺れ液
execute as @e[tag=boss2shot] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 1 1 1 1 3 force
execute as @e[tag=boss2shot] at @s run particle minecraft:dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 5 force
execute as @e[tag=boss2shot] at @s if block ^ ^ ^1 #namespace:airs run teleport @s ^ ^ ^0.5 ~ ~1.5

execute if score #difficulty difficulty matches ..1 run execute at @e[tag=boss2shot] as @e[tag=boss2battle,distance=..2.5] unless score @s player = @e[tag=boss2,limit=1] player run effect give @s minecraft:wither 5 0
execute if score #difficulty difficulty matches ..1 run execute at @e[tag=boss2shot] as @e[tag=boss2battle,distance=..2.5] unless score @s player = @e[tag=boss2,limit=1] player run effect give @s minecraft:slowness 1 2 true
execute if score #difficulty difficulty matches 2.. run execute at @e[tag=boss2shot] as @e[tag=boss2battle,distance=..2.5] unless score @s player = @e[tag=boss2,limit=1] player run effect give @s minecraft:wither 5 1
execute if score #difficulty difficulty matches 2.. run execute at @e[tag=boss2shot] as @e[tag=boss2battle,distance=..2.5] unless score @s player = @e[tag=boss2,limit=1] player run effect give @s minecraft:slowness 5 2 true


#爆発
execute if score #difficulty difficulty matches ..1 run execute as @e[tag=boss2egg,nbt={OnGround:1b}] at @s run function namespace:main/entity_model/bomb_template {power:3}
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss2egg,nbt={OnGround:1b}] at @s run function namespace:main/entity_model/bomb_template {power:4}
execute as @e[tag=boss2egg,nbt={OnGround:1b}] at @s run kill @s

#ループ用
#execute if entity @e[tag=boss2] run schedule function namespace:main/boss/boss2/const 1t replace

#デスポーン
execute as @e[tag=boss2,tag=body] at @s unless entity @e[tag=boss2battle,distance=..80] run function namespace:main/boss/boss2/despawn


#死亡
execute if entity @e[tag=boss2,scores={HP=..0},tag=body] run function namespace:main/boss/boss2/death





