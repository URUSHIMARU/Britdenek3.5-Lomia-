#生存プレイヤーのタグつけ
tag @e[tag=boss22battle] remove boss22battle
#本チャン実装で座標入れ必須
execute as @e[tag=boss22,tag=body] at @s at @e[distance=..80,tag=!boss22] if score @e[distance=..0.1,limit=1,tag=!boss22,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss22,sort=nearest] add boss22battle
execute as @e[tag=boss22,tag=body] at @s at @e[distance=..80,tag=!boss22] if score @e[distance=..0.1,limit=1,tag=!boss22,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss22,sort=nearest] add boss22battle




#モーション制御
#1待機状態 #2威嚇 #3触手ビンタ #4種散布 #5酸の霧 #6衝撃波 #11足場ばらまき #12何もしない  #13棘 #14 #15
execute if entity @e[tag=boss22,limit=1,scores={bossmove=1},tag=body] run function namespace:main/boss/boss22/motion/move1
execute if entity @e[tag=boss22,limit=1,scores={bossmove=2},tag=body] run function namespace:main/boss/boss22/motion/move2
execute if entity @e[tag=boss22,limit=1,scores={bossmove=3},tag=body] run function namespace:main/boss/boss22/motion/move3
execute if entity @e[tag=boss22,limit=1,scores={bossmove=4},tag=body] run function namespace:main/boss/boss22/motion/move4
execute if entity @e[tag=boss22,limit=1,scores={bossmove=5},tag=body] run function namespace:main/boss/boss22/motion/move5
execute if entity @e[tag=boss22,limit=1,scores={bossmove=6},tag=body] run function namespace:main/boss/boss22/motion/move6

execute if entity @e[tag=boss22,limit=1,scores={bossskill4=1},tag=body] run function namespace:main/boss/boss22/motion/move11
execute if entity @e[tag=boss22,limit=1,scores={bossskill4=2},tag=body] run function namespace:main/boss/boss22/motion/move12
execute if entity @e[tag=boss22,limit=1,scores={bossskill4=3},tag=body] run function namespace:main/boss/boss22/motion/move13
execute if entity @e[tag=boss22,limit=1,scores={bossskill4=4},tag=body] run function namespace:main/boss/boss22/motion/move14
execute if entity @e[tag=boss22,limit=1,scores={bossskill4=5},tag=body] run function namespace:main/boss/boss22/motion/move15



#HP管理
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=sbody11,limit=1] ^ ^ ^-3 ~ ~
execute as @e[tag=boss22,tag=body1] at @s run teleport @e[tag=sbody12,limit=1] ^ ^ ^1 ~ ~
execute as @e[tag=boss22,tag=body2] at @s run teleport @e[tag=sbody2,limit=1] ^ ^3 ^2 ~ ~

execute as @e[tag=boss22,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss22","sound":"entity.elder_guardian.hurt_land",volume:2.0,pitch:0.8}
execute as @e[tag=boss22,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute as @e[tag=boss22,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sbody1] as @e[tag=boss22,tag=body1] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sbody1] as @e[tag=boss22,tag=body1] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss22,nbt={HurtTime:1s},tag=sbody1] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm11] as @e[tag=boss22,tag=arm11] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm11] as @e[tag=boss22,tag=arm11] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss22,nbt={HurtTime:1s},tag=sarm11] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm12] as @e[tag=boss22,tag=arm12] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm12] as @e[tag=boss22,tag=arm12] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss22,nbt={HurtTime:1s},tag=sarm12] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm21] as @e[tag=boss22,tag=arm21] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm21] as @e[tag=boss22,tag=arm21] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss22,nbt={HurtTime:1s},tag=sarm21] run function namespace:main/boss/template/damage_end

execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm22] as @e[tag=boss22,tag=arm22] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss18","sound":"entity.warden.hurt",volume:2.0,pitch:0.8}
execute if entity @e[tag=boss22,nbt={HurtTime:9s},tag=sarm22] as @e[tag=boss22,tag=arm22] at @s run playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 2 2
execute if entity @e[tag=boss22,nbt={HurtTime:1s},tag=sarm22] run function namespace:main/boss/template/damage_end

#ボスの攻撃管理
#scoreboard players operation @e[tag=boss22_attack,tag=boss22player] player = @e[tag=boss22,tag=body,limit=1] player
#tag @e[tag=!boss22player,tag=boss22_attack] add boss22player

#第二行動開放
execute as @e[tag=boss22,tag=body,scores={HP=..400},tag=!boss22event] at @s run scoreboard players set @s motion2 0
execute as @e[tag=boss22,tag=body,scores={HP=..400},tag=!boss22event] at @s run scoreboard players set @s bossskill4 1
tag @e[tag=boss22,tag=body,scores={HP=..400},tag=!boss22event] add boss22event

#HP低下イベント1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/boss22_bullet1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/boss22_bullet1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/boss22_bullet1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/boss22_bullet1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/boss22_bullet1
execute if score #difficulty difficulty matches 2.. as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/bofunction
execute if score #difficulty difficulty matches 2.. as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/bofunction
execute if score #difficulty difficulty matches 2.. as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s positioned ^1 ^2 ^-1 run function namespace:main/entity_model/boss/boss22/bofunction

execute as @e[tag=boss22,tag=body,scores={HP=..500}] as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result score @s z run data get entity @s Pos[2] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s store result score @e[tag=boss22,tag=egg2,limit=1] x run data get entity @s Pos[0] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s store result score @e[tag=boss22,tag=egg2,limit=1] y run data get entity @s Pos[1] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s store result score @e[tag=boss22,tag=egg2,limit=1] z run data get entity @s Pos[2] 100
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players operation @e[tag=boss22_attack1] x -= @e[tag=boss22,tag=egg2,limit=1] x
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players operation @e[tag=boss22_attack1] y -= @e[tag=boss22,tag=egg2,limit=1] y
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players operation @e[tag=boss22_attack1] z -= @e[tag=boss22,tag=egg2,limit=1] z
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] x 1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] x 1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] y 1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] z 1
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] z 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] x 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] x 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] y 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] z 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] z 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] x 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] x 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] y 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players add @e[tag=boss22_attack1,limit=2,sort=random] z 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run scoreboard players remove @e[tag=boss22_attack1,limit=2,sort=random] z 5
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result entity @s Motion[1] double 0.015 run scoreboard players get @s y
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s as @e[tag=boss22_attack1] at @s store result entity @s Motion[2] double 0.01 run scoreboard players get @s z
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run particle minecraft:explosion ~ ~2 ~ 2 2 2 1 40 force
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run playsound minecraft:entity.glow_squid.death master @a ~ ~2 ~ 2 2
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~2 ~ 2 0.7
execute as @e[tag=boss22,tag=body,scores={HP=..500}] at @s as @e[tag=boss22,tag=egg2] at @s run kill @s
execute as @e[nbt={HurtTime:9s},tag=boss22_attack1] at @s run playsound minecraft:entity.elder_guardian.hurt_land master @a ~ ~ ~ 2 0.7
execute as @e[tag=boss22_attack1] at @s store result entity @s Rotation[1] float 0.0 run data get entity @s Rotation[1]

execute as @e[tag=boss22,tag=body,scores={HP=..200}] at @s as @e[tag=boss22,tag=egg1] at @s run function namespace:main/boss/boss22sub/summon {"team":2}
execute as @e[tag=boss22,tag=body,scores={HP=..200}] at @s as @e[tag=boss22,tag=egg1] at @s run particle minecraft:explosion ~ ~2 ~ 2 2 2 1 40 force
execute as @e[tag=boss22,tag=body,scores={HP=..200}] at @s as @e[tag=boss22,tag=egg1] at @s run playsound minecraft:entity.glow_squid.death master @a ~ ~2 ~ 2 2
execute as @e[tag=boss22,tag=body,scores={HP=..200}] at @s as @e[tag=boss22,tag=egg1] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~2 ~ 2 0.7
execute as @e[tag=boss22,tag=body,scores={HP=..200}] at @s as @e[tag=boss22,tag=egg1] at @s run kill @s


execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}
execute as @e[tag=boss22,tag=body,scores={HP=..350}] if score #difficulty difficulty matches 2.. at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}
execute as @e[tag=boss22,tag=body,scores={HP=..350}] if score #difficulty difficulty matches 2.. at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}
execute as @e[tag=boss22,tag=body,scores={HP=..350}] if score #difficulty difficulty matches 2.. at @s as @e[tag=boss22,tag=egg3] at @s positioned ~ ~1 ~ run summon zombie ~ ~1 ~ {Tags:["boss22_attack2","boss22_attack","enemy"],NoGravity:0b,Silent:1b,PersistenceRequired:1b,NoAI:0b,CanPickUpLoot:0b,Health:100f,CanPickUpLoot:0b,HandItems:[{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15439}},{}],HandDropChances:[-100.000F,-100F],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:15440}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1}],DeathTime:19s,DeathLootTable:"namespace:item/other/none"}


execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s run scoreboard players operation @e[tag=boss22sub] player = @e[tag=boss22,tag=body,limit=1] player
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s run particle minecraft:explosion ~ ~2 ~ 2 2 2 1 40 force
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s run playsound minecraft:entity.glow_squid.death master @a ~ ~2 ~ 2 2
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~2 ~ 2 0.7
execute as @e[tag=boss22,tag=body,scores={HP=..350}] at @s as @e[tag=boss22,tag=egg3] at @s run kill @s
execute as @e[tag=boss22_attack2] at @s if entity @e[tag=boss22battle,distance=..10] run scoreboard players add @s bossskill1 1
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s as @e[distance=..10,tag=boss22battle] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s as @e[distance=..10,tag=boss22battle] at @s store result score @s z run data get entity @s Pos[2] 100
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s store result score @s z run data get entity @s Pos[2] 100
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s run scoreboard players operation @s x -= @e[tag=boss22battle,limit=1,sort=random,distance=..10] x
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s run scoreboard players set @s y 100
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s run scoreboard players operation @s z -= @e[tag=boss22battle,limit=1,sort=random,distance=..10] z
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s store result entity @s Motion[0] double -0.003 run scoreboard players get @s x
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s store result entity @s Motion[1] double 0.005 run scoreboard players get @s y
execute as @e[tag=boss22_attack2,scores={bossskill1=150..}] at @s store result entity @s Motion[2] double -0.003 run scoreboard players get @s z
scoreboard players set @e[tag=boss22_attack2,scores={bossskill1=150..}] bossskill1 0
execute as @e[nbt={HurtTime:9s},tag=boss22_attack2] at @s run playsound minecraft:entity.elder_guardian.hurt_land master @a ~ ~ ~ 2 0.7


scoreboard players add @e[tag=boss22_attack3] bossskill2 1
execute as @e[tag=boss22_attack3] at @s run teleport @s ^ ^ ^0.4 ~ ~0.3
execute as @e[tag=boss22_attack3] at @s as @e[tag=boss22battle,distance=..3] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run scoreboard players set @s commandDamage 15
execute as @e[tag=boss22_attack3] at @s as @e[tag=boss22battle,distance=..3] unless score @s player = @e[tag=boss22,tag=body,limit=1] player run effect give @s minecraft:wither 15 0 false
kill @e[tag=boss22_attack3,scores={bossskill2=200..}]
execute as @e[tag=boss22_attack3] at @s unless block ~ ~1 ~ #namespace:airs run kill @s

scoreboard players add @e[tag=boss22_object1] bossskill3 1
execute as @e[tag=boss22_object1] at @s run effect give @e[tag=boss22battle,distance=..3] minecraft:slowness 1 2 false
execute as @e[tag=boss22_object1,scores={bossskill3=395..}] at @s run teleport @s ~ ~-0.2 ~ ~-6 ~
kill @e[tag=boss22_object1,scores={bossskill3=400..}]

scoreboard players add @e[tag=boss22_attack4] bossskill5 1
kill @e[tag=boss22_attack4,scores={bossskill5=200..}]


#ループ用
#execute if entity @e[tag=boss22] run schedule function namespace:main/boss/boss22/const 1t replace
#クロークべあ
function namespace:main/boss/boss22sub/const

#デスポーン
execute as @e[tag=boss22,tag=body] at @s unless entity @e[tag=boss22battle,distance=..90] run function namespace:main/boss/boss22/despawn

#死亡
execute if entity @e[tag=boss22,tag=body,scores={HP=..0}] run function namespace:main/boss/boss22/death




