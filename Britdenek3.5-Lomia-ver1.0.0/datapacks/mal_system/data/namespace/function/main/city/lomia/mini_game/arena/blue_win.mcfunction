execute as @a[x=-331,y=91,z=885,dx=30,dy=50,dz=30] at @s store result score @s result run clear @s minecraft:dirt[minecraft:custom_data~{lomia_coin:1b}] 0
execute as @a[x=-331,y=91,z=885,dx=30,dy=50,dz=30] at @s run scoreboard players operation @s result *= #lomia_per lomia
execute as @a[x=-331,y=91,z=885,dx=30,dy=50,dz=30] at @s run scoreboard players operation @s getMoney = @s result

execute as @a[x=-331,y=91,z=885,dx=30,dy=50,dz=30] at @s run clear @s minecraft:dirt[minecraft:custom_data~{arena:true}]
