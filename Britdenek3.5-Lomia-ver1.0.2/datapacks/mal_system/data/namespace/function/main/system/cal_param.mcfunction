#武器用パラメータの計算

#tellraw @s {"text":"計算しました"}
#運初期化
scoreboard players set @s luckBase 0

#ベースパラメーター取得(武器)
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {species: "weapon"}}}}] run function namespace:main/system/cal/get_base_param
execute unless entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {species: "weapon"}}}}] run function namespace:main/system/cal/get_base_param_not_weapon

#ベースパラメーター取得(盾)
execute if entity @s[nbt={equipment:{offhand:{components: {"minecraft:custom_data": {offhand: true}}}}}] run function namespace:main/system/cal/add_base_param_off

#ベースパラメーター取得(防具)
execute if entity @s[nbt={equipment:{head:{components: {"minecraft:custom_data": {species: "armor"}}}}}] run function namespace:main/system/cal/add_base_param {place:"equipment.head"}
execute if entity @s[nbt={equipment:{chest:{components: {"minecraft:custom_data": {species: "armor"}}}}}] run function namespace:main/system/cal/add_base_param {place:"equipment.chest"}
execute if entity @s[nbt={equipment:{legs:{components: {"minecraft:custom_data": {species: "armor"}}}}}] run function namespace:main/system/cal/add_base_param {place:"equipment.legs"}
execute if entity @s[nbt={equipment:{feet:{components: {"minecraft:custom_data": {species: "armor"}}}}}] run function namespace:main/system/cal/add_base_param {place:"equipment.feet"}

#ベースパラメータ取得(装飾品)
execute if entity @s[nbt={Inventory:[{Slot:14b, components: {"minecraft:custom_data": {species: "neckless"}}}]}] run function namespace:main/system/cal/add_base_param {place:"Inventory[{Slot:14b}]"}
execute if entity @s[nbt={Inventory:[{Slot:15b, components: {"minecraft:custom_data": {species: "ring"}}}]}] run function namespace:main/system/cal/add_base_param {place:"Inventory[{Slot:15b}]"}


#スキル・状態異常による増減のみ計算 ※弓関連は発射時に計算
execute if entity @s[tag=skill6] if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{shield:true}}}}}] run scoreboard players add @s guardBase 40
execute if entity @s[tag=skill11] run scoreboard players add @s luckBase 50
execute if entity @s[tag=skill11,tag=skill12] run scoreboard players add @s luckBase 150
execute if entity @s[tag=skill15] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{axe:true}}}}] run scoreboard players add @s attackBase 30
execute if entity @s[tag=skill16] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{axe:true}}}}] run scoreboard players add @s attackBase 50
execute if entity @s[tag=skill16] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{axe:true}}}}] run scoreboard players remove @s guardBase 50
execute if entity @s[tag=skill19] if entity @s[scores={Health=..7},nbt={SelectedItem:{components:{"minecraft:custom_data":{axe:true}}}}] run scoreboard players add @s attackBase 100
execute if entity @s[tag=skill27,tag=skill28] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}}}] run scoreboard players add @s attackBase 20
execute if entity @s[tag=skill27,tag=skill28] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}}}] run scoreboard players add @s attackRangeBase 20
execute if entity @s[tag=skill29] if entity @s[scores={sneak_time=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}}}] run scoreboard players add @s attackSpeedBase 5
execute if entity @s[tag=skill29] if entity @s[scores={sneak_time=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}}}] run scoreboard players remove @s attackRangeBase 20
execute if entity @s[tag=skill30] if entity @s[scores={sneak_time=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}}}] run scoreboard players add @s attackSpeedBase 3
execute if entity @s[tag=skill32] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{shield:true}}}}}] run scoreboard players add @s guardBase 30
execute if entity @s[tag=skill32] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spear:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{shield:true}}}}}] run scoreboard players add @s maxHealthBase 60
execute if entity @s[tag=skill33] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] run scoreboard players add @s attackBase 20
execute if entity @s[tag=skill39] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players add @s attackBase 30
execute if entity @s[tag=skill39] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players add @s attackSpeedBase 5
execute if entity @s[tag=skill39] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players remove @s guardBase 20
execute if entity @s[tag=skill41] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players add @s attackBase 30
execute if entity @s[tag=skill41] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players add @s attackSpeedBase 5
execute if entity @s[tag=skill41] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}},equipment:{offhand:{components:{"minecraft:custom_data":{sword:true}}}}}] run scoreboard players add @s attackRangeBase 5
execute if entity @s[tag=skill42] run scoreboard players add @s mpHealBase 10
execute if entity @s[tag=skill43,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackBase 20
execute if entity @s[tag=skill43,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackSpeedBase 3
execute if entity @s[tag=skill43,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s maxHealthBase 40
execute if entity @s[tag=skill48,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackBase 40
execute if entity @s[tag=skill48,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackSpeedBase 4
execute if entity @s[tag=skill48,scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s maxHealthBase 80
execute if entity @s[scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackBase 10
execute if entity @s[scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s attackSpeedBase 1
execute if entity @s[scores={lightTime=..2},tag=vampire] at @s run scoreboard players add @s maxHealthBase 40
execute if entity @s[scores={lightTime=3..},tag=vampire] at @s run scoreboard players remove @s attackBase 20
execute if entity @s[scores={lightTime=3..},tag=vampire] at @s run scoreboard players remove @s attackSpeedBase 3
execute if entity @s[scores={lightTime=3..},tag=vampire] at @s run scoreboard players remove @s maxHealthBase 80

execute if score #difficulty difficulty matches 0 run scoreboard players add @s maxHealthBase 200
execute if entity @s[tag=star_syrup,scores={star_syrup=1..}] run scoreboard players remove @s maxHealthBase 20
execute if entity @s[tag=star_syrup,scores={star_syrup=10..}] run scoreboard players remove @s maxHealthBase 40
execute if entity @s[tag=star_syrup,scores={star_syrup=20..}] run scoreboard players remove @s maxHealthBase 80
execute if entity @s[tag=star_syrup,scores={star_syrup=1..}] run scoreboard players remove @s mpHealBase 20
execute if entity @s[tag=star_syrup,scores={star_syrup=10..}] run scoreboard players remove @s mpHealBase 40
execute if entity @s[tag=star_syrup,scores={star_syrup=20..}] run scoreboard players remove @s mpHealBase 80
execute if entity @s[tag=star_syrup,scores={star_syrup=1..}] run scoreboard players remove @s attackSpeedBase 1
execute if entity @s[tag=star_syrup,scores={star_syrup=10..}] run scoreboard players remove @s attackSpeedBase 2
execute if entity @s[tag=star_syrup,scores={star_syrup=20..}] run scoreboard players remove @s attackSpeedBase 4
execute if entity @s[tag=star_syrup,scores={star_syrup=1..}] run scoreboard players remove @s magicAttackBase 10
execute if entity @s[tag=star_syrup,scores={star_syrup=10..}] run scoreboard players remove @s magicAttackBase 20
execute if entity @s[tag=star_syrup,scores={star_syrup=20..}] run scoreboard players remove @s magicAttackBase 40

#ナイトメア
execute if score #difficulty difficulty matches 4 run scoreboard players operation @s maxHealthBase /= #2 cal
execute if score #difficulty difficulty matches 4 run scoreboard players operation @s magicAttackBase /= #2 cal
execute if score #difficulty difficulty matches 4 run scoreboard players operation @s guardBase /= #2 cal
execute if score #difficulty difficulty matches 4 run scoreboard players operation @s mpHealBase /= #2 cal

#最終能力を計算、代入
execute store result storage param value.value double 0.1 run scoreboard players get @s attackBase
function namespace:main/system/cal/attribute/set_attack with storage param value

execute store result storage param value.value double 0.1 run scoreboard players get @s attackSpeedBase
function namespace:main/system/cal/attribute/set_attack_speed with storage param value

execute store result storage param value.value double 0.1 run scoreboard players get @s attackRangeBase
function namespace:main/system/cal/attribute/set_attack_range with storage param value

scoreboard players set @s[scores={guardBase=..-1}] guardBase 0
execute store result storage param value.value double 0.1 run scoreboard players get @s guardBase
function namespace:main/system/cal/attribute/set_armor with storage param value

execute store result storage param value.value double 0.1 run scoreboard players get @s maxHealthBase
function namespace:main/system/cal/attribute/set_max_health with storage param value

execute store result storage param value.value double 0.1 run scoreboard players get @s luckBase
function namespace:main/system/cal/attribute/set_luck with storage param value




