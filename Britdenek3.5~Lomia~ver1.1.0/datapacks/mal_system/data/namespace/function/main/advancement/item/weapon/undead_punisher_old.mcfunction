execute as @e[tag=enemy,nbt={HurtTime:10s},distance=..7,limit=1,tag=undead] run scoreboard players set @s commandDamage 1008
execute as @e[tag=enemy,nbt={HurtTime:10s},distance=..7,limit=1,tag=undead] run data merge entity @s {Fire:300}

advancement revoke @s only namespace:all/item/weapon/undead_punisher_old

