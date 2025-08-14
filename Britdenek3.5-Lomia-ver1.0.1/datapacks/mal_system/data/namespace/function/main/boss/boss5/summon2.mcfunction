
function namespace:main/entity_model/boss/boss5/boss5_head2
function namespace:main/entity_model/boss/boss5/boss5_right_arm2
function namespace:main/entity_model/boss/boss5/boss5_left_arm2
function namespace:main/entity_model/boss/boss5/boss5_neck
function namespace:main/entity_model/boss/boss5/boss5_tail1
function namespace:main/entity_model/boss/boss5/boss5_tail2

execute as @e[tag=body,tag=boss5,limit=1] at @s run scoreboard players operation @e[tag=boss5] player = @s player

