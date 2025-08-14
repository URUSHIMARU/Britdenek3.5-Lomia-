
execute as @e[type=item,nbt={Item:{tag:{death:1,fishing:1}}}] at @s run function namespace:main/fishing/replace/fish
execute as @e[type=item,nbt={Item:{tag:{death:1,fishing:2}}}] at @s run function namespace:main/fishing/replace/treasure
execute as @e[type=item,nbt={Item:{tag:{death:1,fishing:3}}}] at @s run function namespace:main/fishing/replace/junk


execute as @e[type=item,nbt={Item:{tag:{catch:1}}}] at @s store result entity @s Motion[0] double 0.01 run data get entity @e[type=item,nbt={Item:{tag:{death:1}}},limit=1,sort=nearest,distance=..3] Motion[0] 100
execute as @e[type=item,nbt={Item:{tag:{catch:1}}}] at @s store result entity @s Motion[1] double 0.01 run data get entity @e[type=item,nbt={Item:{tag:{death:1}}},limit=1,sort=nearest,distance=..3] Motion[1] 100
execute as @e[type=item,nbt={Item:{tag:{catch:1}}}] at @s store result entity @s Motion[2] double 0.01 run data get entity @e[type=item,nbt={Item:{tag:{death:1}}},limit=1,sort=nearest,distance=..3] Motion[2] 100



kill @e[type=item,nbt={Item:{tag:{death:1}}}]
execute as @e[type=item,nbt={Item:{tag:{catch:1}}}] at @s run data modify entity @s catch set value 0

