
$execute if score @s skillNum1 matches 0 run scoreboard players set @s skillNum1 $(skillNum)
$execute if score @s skillNum1 matches $(skillNum) run return 0

$execute if score @s skillNum2 matches 0 run scoreboard players set @s skillNum2 $(skillNum)
$execute if score @s skillNum2 matches $(skillNum) run return 0

$execute if score @s getSkill matches 3.. if score @s skillNum3 matches 0 run scoreboard players set @s skillNum3 $(skillNum)
$execute if score @s skillNum3 matches $(skillNum) run return 0

$execute if score @s getSkill matches 4.. if score @s skillNum4 matches 0 run scoreboard players set @s skillNum4 $(skillNum)
$execute if score @s skillNum4 matches $(skillNum) run return 0

$execute if score @s getSkill matches 5.. if score @s skillNum5 matches 0 run scoreboard players set @s skillNum5 $(skillNum)
$execute if score @s skillNum5 matches $(skillNum) run return 0


