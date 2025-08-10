kill @e[tag=boss1005]


function namespace:main/entity_model/boss/boss1005/boss1005
function namespace:main/entity_model/boss/boss1005/boss1005

#HP

#チーム
$scoreboard players set @e[tag=boss1005] player $(team)

#最初の演出と動くきっかけ
#ボス1 属性はノーマル
