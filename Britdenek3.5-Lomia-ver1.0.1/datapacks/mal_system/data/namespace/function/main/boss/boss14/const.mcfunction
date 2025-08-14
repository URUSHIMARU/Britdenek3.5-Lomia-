#生存プレイヤーのタグつけ
tag @e[tag=boss14battle] remove boss14battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss14,tag=body] at @s at @e[distance=..80,tag=!boss14] if score @e[distance=..0.1,limit=1,tag=!boss14,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss14,sort=nearest] add boss14battle
execute as @e[tag=boss14,tag=body] at @s at @e[distance=..80,tag=!boss14] if score @e[distance=..0.1,limit=1,tag=!boss14,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss14,sort=nearest] add boss14battle




#特殊技は難易度(difficulty)2以上


#モーション制御
#1待機状態 #2威嚇 #3目視からの槍 #4移動 #5噛みつき #6回転
execute if entity @e[tag=boss14,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss14/motion/move1
execute if entity @e[tag=boss14,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss14/motion/move2
execute if entity @e[tag=boss14,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss14/motion/move3
execute if entity @e[tag=boss14,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss14/motion/move4
execute if entity @e[tag=boss14,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss14/motion/move5
execute if entity @e[tag=boss14,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss14/motion/move6
execute if entity @e[tag=boss14,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss14/motion/move7
execute if entity @e[tag=boss14,limit=1,scores={bossmove=8},tag=body] run function namespace:main/boss/boss14/motion/move8




#HP管理
execute as @e[tag=boss14,nbt={HurtTime:9s},type=slime] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=sbody2] as @e[tag=boss14,tag=body2] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=sbody3] as @e[tag=boss14,tag=body3] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=sbody4] as @e[tag=boss14,tag=body4] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=shead2] as @e[tag=boss14,tag=head2] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=stail2] as @e[tag=boss14,tag=tail2] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=stail3] as @e[tag=boss14,tag=tail3] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=stail4] as @e[tag=boss14,tag=tail4] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}
execute if entity @e[tag=boss14,nbt={HurtTime:9s},tag=stail5] as @e[tag=boss14,tag=tail5] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss14","sound":"entity.warden.attack_impact",volume:1.4,pitch:1}

execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=sbody2] as @e[tag=boss14,tag=body2] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=sbody3] as @e[tag=boss14,tag=body3] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=sbody4] as @e[tag=boss14,tag=body4] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=shead2] as @e[tag=boss14,tag=head2] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=stail2] as @e[tag=boss14,tag=tail2] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=stail3] as @e[tag=boss14,tag=tail3] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=stail4] as @e[tag=boss14,tag=tail4] at @s run function namespace:main/boss/template/damage_end
execute if entity @e[tag=boss14,nbt={HurtTime:1s},tag=stail5] as @e[tag=boss14,tag=tail5] at @s run function namespace:main/boss/template/damage_end


#ボスの攻撃管理
#execute if score #difficulty difficulty matches 2.. as @e[tag=boss14_attack1] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run effect give @s minecraft:slowness 8 4
#execute as @e[tag=boss14_attack1] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 8

execute as @e[tag=boss14,type=slime] at @s unless block ~ ~ ~ #namespace:airs run data merge entity @s {Invulnerable:1b}
execute as @e[tag=boss14,type=slime] at @s if block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:0b}


execute as @e[tag=body2] at @s run teleport @e[type=slime,tag=sbody2,limit=1,sort=nearest] @s
execute as @e[tag=body3] at @s run teleport @e[type=slime,tag=sbody3,limit=1,sort=nearest] @s
execute as @e[tag=body4] at @s run teleport @e[type=slime,tag=sbody4,limit=1,sort=nearest] @s
execute as @e[tag=head2] at @s run teleport @e[type=slime,tag=shead2,limit=1,sort=nearest] @s
execute as @e[tag=tail2] at @s run teleport @e[type=slime,tag=stail2,limit=1,sort=nearest] @s
execute as @e[tag=tail3] at @s run teleport @e[type=slime,tag=stail3,limit=1,sort=nearest] @s
execute as @e[tag=tail4] at @s run teleport @e[type=slime,tag=stail4,limit=1,sort=nearest] @s
execute as @e[tag=tail5] at @s run teleport @e[type=slime,tag=stail5,limit=1,sort=nearest] @s


execute as @e[tag=boss14_attack2] at @s run teleport @s ^ ^ ^1 ~ ~5
execute as @e[tag=boss14_attack2] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run scoreboard players set @s commandDamage 8
execute if score #difficulty difficulty matches 2.. as @e[tag=boss14_attack2] at @s as @e[tag=boss14battle,distance=..3] unless score @s player = @e[tag=boss14,tag=body,limit=1] player run effect give @s minecraft:wither 6 1 false

execute as @e[tag=boss14_attack2] at @s unless block ~ ~ ~ #namespace:airs run particle block{block_state:"minecraft:stone"} ~ ~ ~ 3 3 3 1 300 force
execute as @e[tag=boss14_attack2] at @s unless block ~ ~ ~ #namespace:airs run particle minecraft:explosion ~ ~ ~ 2 2 2 1 40 force
execute as @e[tag=boss14_attack2] at @s unless block ~ ~ ~ #namespace:airs run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1.6 0.3
execute as @e[tag=boss14_attack2] at @s unless block ~ ~ ~ #namespace:airs run kill @s
scoreboard players add @e[tag=boss14_attack2] bossskill3 1
kill @e[tag=boss14_attack2,scores={bossskill3=50..}]


#ループ用
#execute if entity @e[tag=boss14] run schedule function namespace:main/boss/boss14/const 1t replace

#デスポーン
execute as @e[tag=boss14,tag=body] at @s unless entity @e[tag=boss14battle,distance=..90] run function namespace:main/boss/boss14/despawn

#死亡
execute if entity @e[tag=boss14,tag=body,scores={HP=..0}] run function namespace:main/boss/boss14/death




