#本チャン実装で座標入れ必須
#scoreboard players set @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] player 0
#tag @e[x=1488,y=149,z=1232,dx=47,dy=50,dz=47,tag=player] add boss3battle
tag @e[tag=boss3battle] remove boss3battle
execute as @e[tag=boss3,tag=body] at @s at @e[distance=..80,tag=!boss3] if score @e[distance=..0.1,limit=1,tag=!boss3,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss3,sort=nearest] add boss3battle
execute as @e[tag=boss3,tag=body] at @s at @e[distance=..80,tag=!boss3] if score @e[distance=..0.1,limit=1,tag=!boss3,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss3,sort=nearest] add boss3battle



#特殊技は難易度(difficulty)2以上

#モーション制御
#1待機状態 2遭遇時 3徒歩 4バックステップ 5クリスタルランス 6ビーム 7光のオーラ
execute if entity @e[tag=boss3,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss3/motion/move1
execute if entity @e[tag=boss3,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss3/motion/move2
execute if entity @e[tag=boss3,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss3/motion/move3
execute if entity @e[tag=boss3,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss3/motion/move4
execute if entity @e[tag=boss3,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss3/motion/move5
execute if entity @e[tag=boss3,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss3/motion/move6
execute if entity @e[tag=boss3,limit=1,scores={bossmove=7},tag=body] run function namespace:main/boss/boss3/motion/move7

#攻撃用クリスタル
scoreboard players operation @e[tag=boss3_crys] player = @e[tag=boss3,tag=body,limit=1] player
scoreboard players add @e[tag=boss3_crys] motion 1
scoreboard players operation @e[tag=boss3_crys,scores={motion=1}] motion2 = @e[tag=boss3,tag=body,limit=1] motion2
scoreboard players remove @e[tag=boss3_crys,scores={motion=1}] motion2 6
execute as @e[tag=boss3_crys,scores={motion=1}] at @s store result entity @s Pos[1] double 1.0 run scoreboard players get @s motion2
execute as @e[tag=boss3_crys,scores={motion=1}] at @s run teleport @s ~ ~ ~

execute as @e[tag=boss3_crys,scores={motion=1..40}] at @s run particle item{item:"dirt"} ~ ~6 ~ 1 0 1 0.1 5 force
execute as @e[tag=boss3_crys,scores={motion=41..45}] at @s run teleport @s ~ ~1.2 ~ ~23 ~
execute as @e[tag=boss3_crys,scores={motion=45}] at @s run data merge entity @s {Invulnerable:0b}
execute as @e[tag=boss3_crys,scores={motion=45}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 4 0
execute as @e[tag=boss3_crys,scores={motion=41..45}] at @s run particle instant_effect ~ ~ ~ 2 2 2 0.3 40 force
execute as @e[tag=boss3_crys,scores={motion=41..45}] at @s as @e[tag=boss3battle,distance=..3] unless score @s player = @e[tag=boss3,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute as @e[tag=boss3_crys,scores={motion=41..45}] at @s positioned ~ ~3 ~ as @e[tag=boss3battle,distance=..3] unless score @s player = @e[tag=boss3,tag=body,limit=1] player run scoreboard players set @s commandDamage 15

#ビーム
execute as @e[tag=boss3_attack] at @s run teleport @s ^ ^ ^3 ~ ~
execute as @e[tag=boss3_attack] at @s unless block ^ ^ ^-6 #namespace:airs run kill @s
execute as @e[tag=boss3_attack] at @s as @e[tag=boss3battle,distance=..4] unless score @s player = @e[tag=boss3,tag=body,limit=1] player run scoreboard players set @s commandDamage 1012
execute if score #difficulty difficulty matches 2.. run execute as @e[tag=boss3_attack] at @s if entity @e[tag=boss3_crys,distance=..4] run teleport @s ~ ~ ~ facing entity @e[tag=boss3battle,limit=1]
#めりこみ対策
execute as @e[tag=boss3] at @s if block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:0b}
execute as @e[tag=boss3] at @s unless block ~ ~1 ~ #namespace:airs run data merge entity @s {Invulnerable:1b}
#光のオーラ
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s run particle minecraft:flash ~ ~ ~ 1 1 1 1 1 force
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s run tag @e[distance=..3,tag=boss3_crys] add boss3glow
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0.4 1 force
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s run scoreboard players remove @s bossskill1 1
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s as @e[tag=boss3battle,distance=..3] unless score @s player = @e[tag=boss3,tag=body,limit=1] player run effect give @s minecraft:wither 3 2 false
execute as @e[tag=boss3,scores={bossskill1=1..}] at @s as @e[tag=boss3battle,distance=..3] unless score @s player = @e[tag=boss3,tag=body,limit=1] player run effect give @s minecraft:blindness 2 1
execute as @e[tag=boss3_crys,tag=boss3glow] at @s run particle minecraft:flash ~ ~2 ~ 0 1 0 1 1 force
execute as @e[tag=boss3_crys,tag=boss3glow] at @s run particle minecraft:firework ~ ~1 ~ 0.2 1 0.2 0.4 3 force
execute as @e[tag=boss3_crys,tag=boss3glow] at @s if entity @e[tag=boss3battle,distance=..3] run function namespace:main/entity_model/bomb_template {"power":3}
execute as @e[tag=boss3_crys,tag=boss3glow] at @s if entity @e[tag=boss3battle,distance=..3] run kill @s

#HP管理
execute as @e[tag=boss3,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss3","sound":"entity.polar_bear.death",volume:1,pitch:1.3}
execute as @e[tag=boss3,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end



#ループ用
#execute if entity @e[tag=boss3] run schedule function namespace:main/boss/boss3/const 1t replace

#デスポーン
execute as @e[tag=boss3,tag=body] at @s unless entity @e[tag=boss3battle,distance=..85] run function namespace:main/boss/boss3/despawn


#死亡
execute if entity @e[tag=boss3,scores={HP=..0},tag=body] run function namespace:main/boss/boss3/death





