execute if entity @s[tag=setBuy] run return 0
tag @s add setBuy
execute store result score @s result run data get block ~ ~ ~ Items[-1].count 1.0
scoreboard players remove @s result 1
scoreboard players set @s result2 0

data merge storage offers {Offers:{Recepies:[]}}
function namespace:main/advancement/system/talk/npc_setting/set_buy/hub
