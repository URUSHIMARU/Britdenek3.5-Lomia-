execute as @s[scores={sneak_time=1}] at @s run function namespace:main/system/cal_param
#スニーク1tickで発動する処理
execute as @s[scores={sneak_time=1}] at @s run function namespace:main/system/sneak_time/tick1
#スニーク5秒ジャストの処理
scoreboard players operation @s result = @s sneak_time
scoreboard players operation @s result %= #100 cal
execute as @s[scores={sneak_time=1..,result=0}] at @s run function namespace:main/system/sneak_time/time5

#以下スニーク中ならいつでも発動する処理
execute as @s[scores={jump=1..},tag=skill4,level=3..,tag=!skill47] at @s run function namespace:main/system/sneak_time/skill4
execute as @s[scores={jump=1..},tag=skill17,level=30..] at @s run function namespace:main/system/sneak_time/skill17
execute as @s[tag=skill38,level=5..,nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s if entity @e[tag=bullet,tag=enemy,distance=..10,limit=1] run function namespace:main/system/sneak_time/skill38_1
execute as @s[tag=skill38,level=5..,nbt={SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s if entity @e[type=arrow,distance=..10,limit=1] run function namespace:main/system/sneak_time/skill38_2
