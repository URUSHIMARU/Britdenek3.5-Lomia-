#位置情報保存
scoreboard players add @e[tag=boss4,tag=body,scores={motion=0..},limit=1] motion 1


#初期
execute as @e[tag=boss4,tag=body] at @s run teleport @e[tag=boss4,limit=1,tag=body1] ^ ^0 ^ ~ ~-30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=body2] ^ ^-0.1 ^-1 ~ ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=head] ^ ^-0.3 ^3 ~ ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg1] ^2 ^ ^0.3 ~-50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg2] ^2 ^ ^-0.3 ~-120 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg3] ^-2 ^ ^0.3 ~50 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=leg4] ^-2 ^ ^-0.3 ~120 ~30
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~40 ~40
execute as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~-40 ~40

#威嚇モーション
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,tag=boss4battle]
execute if entity @e[tag=boss4,tag=body,scores={motion=1}] as @e[tag=boss4,tag=body,limit=1] at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=boss4,tag=body,scores={motion=10..30}] as @e[tag=boss4,limit=1,tag=head] at @s run teleport @s ~ ~ ~ ~ ~-20
execute if entity @e[tag=boss4,tag=body,scores={motion=10..30}] as @e[tag=boss4,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss4,tag=body,scores={motion=10..40}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm1] ^-1.6 ^ ^2.3 ~-40 ~-30
execute if entity @e[tag=boss4,tag=body,scores={motion=10..50}] as @e[tag=boss4,tag=body1] at @s run teleport @e[tag=boss4,limit=1,tag=arm2] ^1.6 ^ ^2.3 ~40 ~-30
execute if entity @e[tag=boss4,tag=body,scores={motion=10}] as @e[tag=boss4,tag=body1] at @s run playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 2 0.5
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=54}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:sweep_attack ^ ^ ^3 1 1 1 1 20 force
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm1] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^2 1 1 1 1 30 force
execute if entity @e[tag=boss4,tag=body,scores={motion=54}] as @e[tag=boss4,tag=arm2] at @s run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^2 1 1 1 1 30 force
execute if entity @e[tag=boss4,tag=body,scores={motion=44}] as @e[tag=boss4,tag=arm1] at @s run playsound minecraft:item.trident.throw master @a ^ ^ ^2 2 0.4
execute if entity @e[tag=boss4,tag=body,scores={motion=54}] as @e[tag=boss4,tag=arm2] at @s run playsound minecraft:item.trident.throw master @a ^ ^ ^2 2 0.4

execute if entity @e[tag=boss4,tag=body,scores={motion=60..90}] as @e[tag=boss4,tag=body1] at @s run teleport @s ~ ~ ~ ~ ~20
execute if entity @e[tag=boss4,tag=body,scores={motion=60..90}] as @e[tag=boss4,tag=head] at @s run teleport @s ^ ^-0.4 ^1 ~ ~0

execute if entity @e[tag=boss4,tag=body,scores={motion=65..90}] as @e[tag=boss4,tag=head] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^1 ^1 0.3 0.3 0.3 1 30 force
execute if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 2 1


execute if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run function namespace:main/entity_model/boss/boss4/boss4_bullet2
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run function namespace:main/entity_model/boss/boss4/boss4_bullet3
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run function namespace:main/entity_model/boss/boss4/boss4_bullet4

execute if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run teleport @e[tag=boss4_attack21] ^ ^1 ^1 ~ ~
execute if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run teleport @e[tag=boss4_attack22] ^ ^1 ^1 ~-30 ~
execute if entity @e[tag=boss4,tag=body,scores={motion=65..80}] as @e[tag=boss4,tag=head] at @s run teleport @e[tag=boss4_attack23] ^ ^1 ^1 ~30 ~



execute if entity @e[tag=boss4,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] bossmove 3
execute if entity @e[tag=boss4,tag=body,scores={motion=101..},limit=1] run scoreboard players set @e[tag=boss4,tag=body] motion 0



