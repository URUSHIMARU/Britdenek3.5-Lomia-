##アップデート失敗時
execute unless block -377 91 894 minecraft:grass_block run return 0


setblock -378 93 894 air
setblock -377 92 894 minecraft:oak_slab[type=bottom,waterlogged=false]

setblock -377 90 894 chest
item replace block -377 90 894 container.0 with minecraft:barrier
item replace block -377 90 894 container.1 with minecraft:barrier
item replace block -377 90 894 container.2 with minecraft:barrier
item replace block -377 90 894 container.3 with minecraft:barrier
item replace block -377 90 894 container.4 with minecraft:barrier
item replace block -377 90 894 container.5 with minecraft:barrier
item replace block -377 90 894 container.6 with minecraft:barrier
item replace block -377 90 894 container.7 with minecraft:barrier
item replace block -377 90 894 container.8 with minecraft:barrier
item replace block -377 90 894 container.26 with minecraft:emerald 9

setblock -377 89 894 chest
item replace block -377 89 894 container.0 with minecraft:barrier
item replace block -377 89 894 container.1 with minecraft:barrier
item replace block -377 89 894 container.2 with minecraft:barrier
item replace block -377 89 894 container.3 with minecraft:barrier
item replace block -377 89 894 container.4 with minecraft:barrier
item replace block -377 89 894 container.5 with minecraft:barrier
item replace block -377 89 894 container.6 with minecraft:barrier
item replace block -377 89 894 container.7 with minecraft:barrier
item replace block -377 89 894 container.8 with minecraft:barrier


scoreboard players set #version option 105

