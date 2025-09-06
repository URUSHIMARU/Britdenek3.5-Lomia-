
scoreboard players add @e[tag=boss7,tag=body,scores={motion2=0..},limit=1] motion2 1
scoreboard players add @e[tag=boss7,tag=body,scores={motion=0..},limit=1] motion 1


execute as @e[tag=boss7,tag=body] at @s run teleport @e[tag=body1,limit=1,tag=boss7] ~ ~ ~ ~ ~20
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ 
execute as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 
execute as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.1 ^1.5 


execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_arm,limit=1,tag=boss7] ^-1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_arm,limit=1,tag=boss7] ^1.3 ^0.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=right_leg,limit=1,tag=boss7] ^-0.5 ^-1.5 ^ ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=body1] at @s run teleport @e[tag=left_leg,limit=1,tag=boss7] ^0.5 ^-1.5 ^ ~ ~

execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=right_arm] at @s run teleport @e[tag=sword,limit=1,tag=boss7] ^ ^-1.5 ^1.5 ~ ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=1..2}] as @e[tag=boss7,tag=left_arm] at @s run teleport @e[tag=shield,limit=1,tag=boss7] ^ ^-1.1 ^1.5 ~ ~-20


execute if entity @e[tag=boss7,tag=body,scores={motion2=2..6}] as @e[tag=boss7,tag=body1] at @s run teleport @s ~ ~0.1 ~


#モーション
execute if entity @e[tag=boss7,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=boss7battle]
execute if entity @e[tag=boss7,tag=body,scores={motion2=1}] as @e[tag=body,tag=boss7] at @s run teleport @s ~ ~ ~ ~ 0

#歩行のためのやつ
tag @e[tag=boss7,tag=stop] remove stop
execute as @e[tag=boss7,tag=!weapon] at @s rotated ~ 0 unless block ^ ^0.5 ^1 #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop
execute as @e[tag=boss7,tag=!weapon] at @s rotated ~ 0 unless block ^ ^0.5 ^2 #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop
execute as @e[tag=boss7,tag=!weapon] at @s rotated ~ 0 unless block ^ ^0.5 ^3 #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop
execute as @e[tag=boss7,tag=!weapon] at @s rotated ~ 0 unless block ^ ^0.5 ^4 #namespace:airs_for_mob run tag @e[tag=boss7,tag=body,limit=1] add stop

execute as @e[tag=boss7,tag=!weapon] at @s positioned ^ ^ ^2.5 if entity @e[tag=boss7battle,distance=..3] run tag @e[tag=boss7,tag=body,limit=1] add stop

execute as @e[tag=body,tag=boss7,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^0.2
execute if score #difficulty difficulty matches 2.. as @e[tag=body,tag=boss7,limit=1,tag=!stop] at @s run teleport @s ^ ^ ^0.1



execute if entity @e[tag=boss7,tag=body,scores={motion2=2..4}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss7,tag=body,scores={motion2=2..4}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss7,tag=body,scores={motion2=2..4}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss7,tag=body,scores={motion2=2..4}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9

execute if entity @e[tag=boss7,tag=body,scores={motion2=5..12}] as @e[tag=boss7,tag=body1] at @s run teleport @s ~ ~-0.1 ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=5..12}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss7,tag=body,scores={motion2=5..12}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss7,tag=body,scores={motion2=5..12}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss7,tag=body,scores={motion2=5..12}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9

execute if entity @e[tag=boss7,tag=body,scores={motion2=13..15}] as @e[tag=boss7,tag=body1] at @s run teleport @s ~ ~0.1 ~
execute if entity @e[tag=boss7,tag=body,scores={motion2=13..15}] as @e[tag=right_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9
execute if entity @e[tag=boss7,tag=body,scores={motion2=13..15}] as @e[tag=left_arm,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss7,tag=body,scores={motion2=13..15}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~-9
execute if entity @e[tag=boss7,tag=body,scores={motion2=13..15}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run teleport @s ~ ~ ~ ~ ~9

execute if entity @e[tag=boss7,tag=body,scores={motion2=1}] as @e[tag=right_leg,limit=1,tag=boss7] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute if entity @e[tag=boss7,tag=body,scores={motion2=8}] as @e[tag=left_leg,limit=1,tag=boss7] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1


execute as @e[tag=body,tag=boss7,limit=1,tag=stop] at @s run scoreboard players set @s bossmove 9
execute as @e[tag=body,tag=boss7,limit=1,tag=stop] at @s run scoreboard players set @s motion2 0
execute as @e[tag=body,tag=boss7,limit=1,tag=stop] at @s run scoreboard players set @s motion 0




execute if entity @e[tag=boss7,tag=body,scores={motion2=15..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion2 0


execute if entity @e[tag=boss7,tag=body,scores={motion=200..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] bossmove 9
execute if entity @e[tag=boss7,tag=body,scores={motion=200..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion2 0
execute if entity @e[tag=boss7,tag=body,scores={motion=200..},limit=1] run scoreboard players set @e[tag=boss7,tag=body] motion 0


