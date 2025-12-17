execute as @s[tag=skill34,level=15..,nbt={OnGround:0b,SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s run function namespace:main/system/sneak_time_end/skill34
execute as @s[tag=skill35,level=80..,nbt={OnGround:0b,SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s run function namespace:main/system/sneak_time_end/skill35
execute as @s[tag=skill36,tag=!skill37,level=20..,nbt={OnGround:0b,SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s run function namespace:main/system/sneak_time_end/skill36
execute as @s[tag=skill36,tag=skill37,level=20..,nbt={OnGround:0b,SelectedItem:{components:{"minecraft:custom_data":{sword:true}}}}] at @s run function namespace:main/system/sneak_time_end/skill37

execute as @s[tag=skill47,level=10..,nbt={OnGround:0b}] at @s run function namespace:main/system/sneak_time_end/skill47


scoreboard players set @s sneak_time 0
function namespace:main/system/cal_param


