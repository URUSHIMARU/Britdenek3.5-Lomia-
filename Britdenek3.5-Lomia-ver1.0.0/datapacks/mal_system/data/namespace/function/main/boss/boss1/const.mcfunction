#difficulty?????? x=831,y=62,z=956,dx=19,dy=11,dz=19
#difficulty?????????
tag @e[tag=boss1battle] remove boss1battle
execute as @e[tag=boss1,tag=body] at @s at @e[distance=..80,tag=!boss1] if score @e[distance=..0.1,limit=1,tag=!boss1,sort=nearest] player < @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss1,sort=nearest] add boss1battle
execute as @e[tag=boss1,tag=body] at @s at @e[distance=..80,tag=!boss1] if score @e[distance=..0.1,limit=1,tag=!boss1,sort=nearest] player > @s player run tag @e[distance=..0.1,limit=1,tag=!bullet,tag=!boss1,sort=nearest] add boss1battle
#difficulty????(difficulty)2??

#difficulty????
#1???? 2?? 3???? 4???? 5????????? 6????? 7???????
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=1}] run function namespace:main/boss/boss1/motion/move1
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=2}] run function namespace:main/boss/boss1/motion/move2
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=3}] run function namespace:main/boss/boss1/motion/move3
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=4}] run function namespace:main/boss/boss1/motion/move4
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=5}] run function namespace:main/boss/boss1/motion/move5
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=6}] run function namespace:main/boss/boss1/motion/move6
execute if entity @e[tag=boss1,tag=body,limit=1,scores={bossmove=7}] run function namespace:main/boss/boss1/motion/move7


#HP管理
execute as @e[tag=boss1,nbt={HurtTime:9s}] at @s run function namespace:main/boss/template/damage_start {"bossNumber":"boss1","sound":"entity.iron_golem.hurt",volume:1,pitch:1.2}
execute as @e[tag=boss1,nbt={HurtTime:1s}] at @s run function namespace:main/boss/template/damage_end


#ループ継続
#execute if entity @e[tag=boss1,limit=1] run schedule function namespace:main/boss/boss1/const 1t replace

#デスポーン
execute as @e[tag=boss1,tag=body] at @s unless entity @e[tag=boss1battle,distance=..85] run function namespace:main/boss/boss1/despawn

#死亡
execute if entity @e[tag=boss1,tag=body,scores={HP=..0}] run function namespace:main/boss/boss1/death


