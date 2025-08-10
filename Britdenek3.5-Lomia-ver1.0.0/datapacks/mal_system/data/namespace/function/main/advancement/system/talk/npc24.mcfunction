data merge storage minecraft:npc_talk {npc_num:"npc24"}
execute if entity @e[tag=lomia,distance=..8] run data merge storage minecraft:npc_talk {place:"lomia"}


function namespace:main/advancement/system/talk/get_event with storage minecraft:npc_talk


function namespace:main/advancement/system/talk/hub with storage minecraft:npc_talk

