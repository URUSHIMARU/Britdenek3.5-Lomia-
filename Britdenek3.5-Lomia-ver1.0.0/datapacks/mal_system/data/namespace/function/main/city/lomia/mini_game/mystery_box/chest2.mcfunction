


execute positioned -403 92 883 if block -401 93 882 minecraft:waxed_weathered_copper_bulb[lit=true] run execute as @a[limit=1,sort=nearest] run function namespace:main/city/lomia/mini_game/mystery_box/chest2_result

setblock -401 93 882 minecraft:waxed_weathered_copper_bulb[lit=false,powered=false]
