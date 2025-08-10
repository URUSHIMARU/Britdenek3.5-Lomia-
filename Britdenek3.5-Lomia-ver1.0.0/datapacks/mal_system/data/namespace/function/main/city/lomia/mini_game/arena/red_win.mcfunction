


execute as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s store result score @s result run clear @s minecraft:dirt[minecraft:custom_data~{lomia_coin:2b}] 0
execute as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run scoreboard players operation @s result *= #lomia_per lomia
execute as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run scoreboard players operation @s getMoney = @s result
execute as @a[x=-468,y=85,z=861,dx=193,dy=100,dz=110] at @s run clear @s minecraft:dirt[minecraft:custom_data~{arena:true}]
