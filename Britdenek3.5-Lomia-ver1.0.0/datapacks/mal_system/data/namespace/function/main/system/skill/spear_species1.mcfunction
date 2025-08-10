#27:デュアルアタック
#31:ワイドランス

#槍時処理

#スキル無し
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=!skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..2,sort=nearest,limit=1] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=!skill31] run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 1 5 force

#デュアルアタックのみ
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=!skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..2,sort=nearest,limit=3] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=!skill31] run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 1 5 force

#ワイドランスのみ
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..4,sort=nearest,limit=1] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=!skill27,tag=skill31] run particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 1 5 force

#両方
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=skill31] run scoreboard players operation @e[tag=enemy,distance=0.1..4,sort=nearest,limit=3] commandDamage = @s result
execute at @e[tag=enemy,nbt={HurtTime:10s},distance=..15,limit=1,tag=skill27,tag=skill31] run particle minecraft:sweep_attack ~ ~1 ~ 1 0.5 1 1 5 force
