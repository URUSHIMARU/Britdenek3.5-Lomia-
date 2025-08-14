#27:デュアルアタック
#31:ワイドランス

#鎌時処理

#スキル無し
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=!skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..4,sort=nearest,limit=4] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=!skill31] run particle minecraft:sweep_attack ~ ~1 ~ 1.5 0.5 1.5 1 10 force

#デュアルアタックのみ
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=!skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..4,sort=nearest,limit=9] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=!skill31] run particle minecraft:sweep_attack ~ ~1 ~ 1.5 0.5 1.5 1 10 force

#ワイドランスのみ
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..8,sort=nearest,limit=4] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=skill31] run particle minecraft:sweep_attack ~ ~1 ~ 3 0.5 3 1 20 force

#両方
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..8,sort=nearest,limit=9] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=skill31] run particle minecraft:sweep_attack ~ ~1 ~ 3 0.5 3 1 20 force
