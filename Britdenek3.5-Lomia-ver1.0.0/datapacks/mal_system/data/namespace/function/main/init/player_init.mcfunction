clear @s
#ワールドに入ってきた最初の1回に実行
scoreboard players set @s player 0
scoreboard players set @s getSkill 0
scoreboard players set @s enderPage 1
scoreboard players set @s skillNum1 0
scoreboard players set @s skillNum2 0
scoreboard players set @s skillNum3 0
scoreboard players set @s skillNum4 0
scoreboard players set @s skillNum5 0
scoreboard players set @s skillCount 0
scoreboard players add @a lightTime 0
tag @s add player

#スキル取得条件初期化
scoreboard players set @s skill2 0
scoreboard players set @s skill3 0
scoreboard players set @s skill4 0
scoreboard players set @s skill5 0
scoreboard players set @s skill6 0
scoreboard players set @s skill7 0
scoreboard players set @s skill8 0
scoreboard players set @s skill9 0
scoreboard players set @s skill10 0
scoreboard players set @s skill13 0
scoreboard players set @s skill14 0
scoreboard players set @s skill16 0
scoreboard players set @s skill18 0
scoreboard players set @s skill19 0
scoreboard players set @s skill20 0
scoreboard players set @s skill23 0
scoreboard players set @s skill24 0
scoreboard players set @s skill26 0
scoreboard players set @s skill28 0
scoreboard players set @s skill30 0
scoreboard players set @s skill31 0
scoreboard players set @s skill32 0
scoreboard players set @s skill33 0
scoreboard players set @s skill36 0
scoreboard players set @s skill37 0
scoreboard players set @s skill39 0
scoreboard players set @s skill40 0
scoreboard players set @s skill41 0
scoreboard players set @s skill42 0
scoreboard players set @s skill45 0
scoreboard players set @s skill48 0

scoreboard players add @s use_bow_time 0
scoreboard players add @s use_bow 0

#1日に一度だけ付与するやつ
tag @a add day_first_skill14


advancement revoke @s everything 

loot replace entity @s inventory.0 loot namespace:item/inventory/empty_skill_0
loot replace entity @s inventory.1 loot namespace:item/inventory/empty_skill_1
loot replace entity @s inventory.2 loot namespace:item/inventory/null_2
loot replace entity @s inventory.3 loot namespace:item/inventory/null_3
loot replace entity @s inventory.4 loot namespace:item/inventory/null_4
loot replace entity @s inventory.5 loot namespace:item/inventory/empty_neckless_5
loot replace entity @s inventory.6 loot namespace:item/inventory/empty_ring_6
loot replace entity @s inventory.7 loot namespace:item/inventory/null_7
loot replace entity @s inventory.8 loot namespace:item/inventory/empty_money_8

loot replace entity @s enderchest.0 loot namespace:item/ender_chest/left
loot replace entity @s enderchest.2 loot namespace:item/ender_chest/right
loot replace entity @s enderchest.3 loot namespace:item/ender_chest/null
loot replace entity @s enderchest.4 loot namespace:item/ender_chest/null
loot replace entity @s enderchest.5 loot namespace:item/ender_chest/null
loot replace entity @s enderchest.6 loot namespace:item/ender_chest/null
loot replace entity @s enderchest.7 loot namespace:item/ender_chest/null
loot replace entity @s enderchest.8 loot namespace:item/ender_chest/null

function namespace:main/system/ender_chest/root/ender_page1


#ロミア限定
spawnpoint @s -373 92 922
teleport @s -373 92 922

advancement grant @s only namespace:skill/normal/skill1
advancement grant @s only namespace:skill/skill_root
