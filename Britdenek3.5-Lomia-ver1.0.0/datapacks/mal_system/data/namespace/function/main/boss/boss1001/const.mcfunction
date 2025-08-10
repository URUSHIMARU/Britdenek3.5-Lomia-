#difficulty?????? x=831,y=62,z=956,dx=19,dy=11,dz=19
#difficulty?????????
tag @e[tag=boss1001battle] remove boss1001battle
execute as @e[tag=boss1001,tag=body] at @s at @e[distance=..80,tag=!boss1001] if score @e[distance=..0.1,limit=1,tag=!boss1001,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss1001,sort=nearest] add boss1001battle
execute as @e[tag=boss1001,tag=body] at @s at @e[distance=..80,tag=!boss1001] if score @e[distance=..0.1,limit=1,tag=!boss1001,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss1001,sort=nearest] add boss1001battle
#difficulty????(difficulty)2??


#HP管理


#ループ継続
#execute if entity @e[tag=boss1001,limit=1] run schedule function namespace:main/boss/boss1001/const 1t replace

#デスポーン
execute as @e[tag=boss1001,tag=body] at @s unless entity @e[tag=boss1001battle,distance=..85] run function namespace:main/boss/boss1001/despawn

#死亡
execute if entity @e[tag=boss1001,tag=body,scores={HP=..0}] run function namespace:main/boss/boss1001/death


