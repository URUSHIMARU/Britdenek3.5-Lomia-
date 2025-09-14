scoreboard players set #battle lomia 0
scoreboard players set #end_count lomia 0
scoreboard players set #start_count lomia 0
scoreboard players set #lomia_win lomia 0

function namespace:main/boss/boss11_lomia/death
function namespace:main/boss/boss16_lomia/death
function namespace:main/boss/boss24_lomia/death
function namespace:main/boss/boss26_lomia/death
function namespace:main/monster/lomia_ogre/death

bossbar remove minecraft:lomia_red
bossbar remove minecraft:lomia_blue
scoreboard players set #battle lomia 0

execute as @a[limit=1] at @s run function namespace:main/city/lomia/mini_game/arena/set_battle_card

