scoreboard players add @e[tag=boss15,tag=body,scores={motion=0..},limit=1] motion 1

execute if entity @e[tag=boss15,tag=body,scores={motion=1..112}] as @e[tag=boss15] at @s run teleport @s ~ ~ ~ ~1 ~

execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 

execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 
execute as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 

execute as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ 



#execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @s ~ ~ ~ facing entity @e[tag=boss15battle,tag=!bullet,limit=1,sort=nearest]
#execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @s ~ ~ ~ ~ 0


execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ run teleport @e[tag=eye1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~72 ~ run teleport @e[tag=eye2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~144 ~ run teleport @e[tag=eye3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-144 ~ run teleport @e[tag=eye4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~-72 ~ run teleport @e[tag=eye5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~2 ~ rotated ~ ~-90 run teleport @e[tag=eye6,limit=1,tag=boss15] ^ ^ ^4.5 ~ ~

execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run teleport @e[tag=arm1,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~72 ~ run teleport @e[tag=arm2,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~144 ~ run teleport @e[tag=arm3,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-144 ~ run teleport @e[tag=arm4,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ rotated ~-72 ~ run teleport @e[tag=arm5,limit=1,tag=boss15] ^ ^ ^6 ~ ~
execute if entity @e[tag=boss15,tag=body,scores={motion=1..2}] as @e[tag=boss15,tag=body] at @s run teleport @e[tag=gate,limit=1,tag=boss15] ^ ^11 ^ ~ ~90


execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=30..39}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6

execute if entity @e[tag=boss15,tag=body,scores={motion=50}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=50}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=50}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=50}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=50}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss15,tag=body,scores={motion=51..52}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=51..52}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=51..52}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=51..52}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=51..52}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60

execute if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force

execute if entity @e[tag=boss15,tag=body,scores={motion=52}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=59}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=59}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=59}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=59}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=59}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm1] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm2] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm3] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm4] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=51}] as @e[tag=boss15,tag=arm5] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=50..52}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=50..52}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=50..52}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=50..52}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=50..52}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27




execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=60..69}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6

execute if entity @e[tag=boss15,tag=body,scores={motion=80}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=80}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=80}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=80}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=80}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss15,tag=body,scores={motion=81..82}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=81..82}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=81..82}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=81..82}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=81..82}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60

execute if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force

execute if entity @e[tag=boss15,tag=body,scores={motion=82}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=89}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=89}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=89}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=89}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=89}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm1] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm2] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm3] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm4] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=81}] as @e[tag=boss15,tag=arm5] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=80..82}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=80..82}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=80..82}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=80..82}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=80..82}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27


execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6
execute if entity @e[tag=boss15,tag=body,scores={motion=90..99}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-6

execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10
execute if entity @e[tag=boss15,tag=body,scores={motion=110}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-10

execute if entity @e[tag=boss15,tag=body,scores={motion=111..112}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=111..112}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=111..112}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=111..112}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60
execute if entity @e[tag=boss15,tag=body,scores={motion=111..112}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~60

execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0
execute if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.ravager.attack master @a ^ ^ ^4 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force
execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run particle minecraft:explosion ^ ^1 ^4 3 2 3 1 80 force

execute if entity @e[tag=boss15,tag=body,scores={motion=112}] as @e[tag=boss15,tag=body] at @s positioned ~ ~-1 ~ run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 3 0

execute if entity @e[tag=boss15,tag=body,scores={motion=119}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=119}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=119}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=119}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60
execute if entity @e[tag=boss15,tag=body,scores={motion=119}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~-60

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~2 ~ run function namespace:main/entity_model/boss/boss15/boss15_bullet1

execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm1] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm2] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm3] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm4] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0
execute if score #difficulty difficulty matches 2.. if entity @e[tag=boss15,tag=body,scores={motion=111}] as @e[tag=boss15,tag=arm5] at @s run teleport @e[tag=boss15_attack1,limit=1,sort=nearest,distance=..4] ~ ~2 ~ ~ 0

execute if entity @e[tag=boss15,tag=body,scores={motion=110..112}] as @e[tag=boss15,tag=arm1] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=110..112}] as @e[tag=boss15,tag=arm2] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=110..112}] as @e[tag=boss15,tag=arm3] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=110..112}] as @e[tag=boss15,tag=arm4] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27
execute if entity @e[tag=boss15,tag=body,scores={motion=110..112}] as @e[tag=boss15,tag=arm5] at @s positioned ~ ~-1 ~ positioned ^ ^ ^4 as @e[tag=boss15battle,distance=..5] unless score @s player = @e[tag=boss15,tag=body,limit=1] player run scoreboard players set @s commandDamage 27


execute as @e[tag=boss15,tag=body,scores={motion=130..,HP=151..},limit=1] at @s run function namespace:main/boss/boss15/motion/random1
execute as @e[tag=boss15,tag=body,scores={motion=130..,HP=..150},limit=1] at @s run function namespace:main/boss/boss15/motion/random2


execute if entity @e[tag=boss15,tag=body,scores={motion=130..},limit=1] run scoreboard players set @e[tag=boss15,tag=body] motion 0
