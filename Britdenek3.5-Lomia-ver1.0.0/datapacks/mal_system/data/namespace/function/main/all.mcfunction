#砂嵐
execute as @a at @s if biome ~ ~ ~ minecraft:desert run particle minecraft:explosion ~ ~ ~ 3 3 3 1 5 force

#残存処理
execute as @e[scores={deathspown=1..}] at @s run scoreboard players remove @s deathspown 1
kill @e[scores={deathspown=..0}]

#リログ処理
execute as @a[scores={relog=1..}] at @s run function namespace:main/relog/relog

#難易度
execute if score #difficulty difficulty matches 3.. run effect give @e[tag=enemy,tag=!bullet] resistance 1 3 true


#ゲーム内の時間(昼夜)取得
execute store result score #時間 cal run time query daytime
#一日の始めにのみ実施する処理
execute if score #時間 cal matches 1 run function namespace:main/system/day_first
#日光に当たっているかの判定 2以下:太陽を浴びていない 3以上:太陽を浴びている
scoreboard players remove @a[scores={lightTime=1..}] lightTime 1
execute as @a at @s if score #時間 cal matches ..11999 positioned over world_surface if entity @s[dy=200,scores={lightTime=..4}] run scoreboard players add @s lightTime 2
scoreboard players set @a[scores={lightTime=1..,skill46_count=1..}] lightTime 0
execute as @a[scores={lightTime=1}] at @s run function namespace:main/system/cal_param
execute as @a[scores={lightTime=4}] at @s run function namespace:main/system/cal_param
#夜のマント専用
execute as @a[scores={skill46_count=1..}] at @s run function namespace:main/system/sneak_time/time5_skill/skill46_loop
#MP基盤システム
execute as @a[level=..99] at @s run function namespace:main/system/mp

#スキル関連
#バックステップ
execute as @e[tag=backStep,type=wandering_trader] at @s run teleport @s ~ ~-300 ~
kill @e[tag=backStep,type=wandering_trader]
execute as @a[tag=backStep] at @s run function namespace:main/system/skill/skill4_const


#ロミア関連
execute if entity @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110,limit=1] run function namespace:main/city/lomia
#幻想闘技場
execute if entity @a[x=-460,y=6,z=882,dx=190,dy=60,dz=90] run function namespace:main/city/illusion_arena

#ベータ版限定イベント処理
execute if score #event_time event matches ..100000 run function namespace:main/city/illusion_arena/lomia_event

#幻想闘技場行き来(3.5 lomia限定)
tp @a[x=-378,y=92,z=876,dx=0,dy=3,dz=1] -402 11 902
tp @a[x=-404,y=11,z=901,dx=0,dy=3,dz=1] -380 92 876

#睡眠ボーナス
effect give @a[scores={bed=0}] minecraft:health_boost 600 4 false
scoreboard players set @a[scores={bed=100..}] bed 100
#ポーションクリア
clear @a minecraft:glass_bottle
#経験値削除
kill @e[type=minecraft:experience_orb]

#エンダーチェストアイテム取得検知
execute as @a at @s store result score @s pickEnderItem run clear @s minecraft:light_gray_stained_glass[minecraft:custom_data~{species:"enderchest_function"}] 0
execute as @a[scores={pickEnderItem=1..}] at @s run function namespace:main/system/check_ender_inventory

#スキル用アイテム捨て対策
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass"}}] at @s run function namespace:main/system/kill_light_gray_stained_glass

#各種検知

#アドバンスメント初期化(重複起動の防止用)
execute as @a[advancements={namespace:all/system/pick_light_gray_stained_glass=true}] at @s run advancement revoke @s only namespace:all/system/pick_light_gray_stained_glass
execute as @a[advancements={namespace:all/system/pick_weapon=true}] at @s run advancement revoke @s only namespace:all/system/pick_weapon

#換金
execute as @a[scores={getMoney=1..}] at @s run playsound minecraft:item.armor.equip_chain master @s ~ ~ ~ 0.8 1
execute as @a[scores={getMoney=1..}] at @s run function namespace:main/system/exchange

#インベントリ変更検知
execute as @a at @s store result score @s selectedItemSlot run data get entity @s SelectedItemSlot
execute as @a at @s unless score @s selectedItemSlot = @s selectedItemSlotBefore run function namespace:main/system/cal_param
execute as @a at @s run scoreboard players operation @s selectedItemSlotBefore = @s selectedItemSlot

#人参つき釣り竿検知
execute as @a[scores={rod=1..}] at @s run function namespace:main/system/rod
#弓引き絞り時間関連
execute as @a[scores={use_bow_time=1..}] at @s run function namespace:main/system/bow_wait_time
execute as @a[scores={use_bow=0,use_bow_time=1..}] at @s run function namespace:main/system/bow_wait_time_end
scoreboard players set @a[scores={use_bow=1..}] use_bow 0
#盾構え時間
execute as @a[scores={shield_time=1..}] at @s run function namespace:main/system/shield_time
execute as @a[scores={shield=0,shield_time=1..}] at @s run function namespace:main/system/shield_time_end
scoreboard players set @a[scores={shield=1..}] shield 0
#弓検知
execute as @a[scores={bow=1..}] at @s run function namespace:main/system/bow
scoreboard players set @a[scores={bow=1..}] bow 0
#クロスボウ検知
scoreboard players set @a[scores={crossbow=1..}] crossbow 0
#盾でダメージを受け流した
execute as @a[scores={shield_damage=1..}] at @s run function namespace:main/system/shield_damage
#ダメージを与えた
execute as @a[scores={damage_dealt=1..}] at @s run function namespace:main/system/damage_dealt
#ダメージを受けた
execute as @a[scores={take_damage=1..}] at @s run function namespace:main/system/take_damage
execute as @a[scores={resist_damage=1..}] at @s run function namespace:main/system/resist_damage
#スニーク関連検知
execute as @a[scores={sneak_time=1..}] at @s run function namespace:main/system/sneak_time
execute as @a[scores={sneak=0,sneak_time=1..}] at @s run function namespace:main/system/sneak_time_end
scoreboard players set @a[scores={sneak=1..}] sneak 0
#ジャンプ検知
execute as @a[scores={jump=1..}] at @s run function namespace:main/system/jump
#死亡検知
execute as @e[scores={death=1..},type=player] at @s run function namespace:main/system/death



#ダメージシステム
execute as @e[scores={commandDamage=1..}] at @s run function namespace:main/system/damage
#矢削除
kill @e[type=minecraft:arrow,nbt={inGround:1b},tag=!immortal]


