#data modify storage minecraft:offers_recipes Offers.sell set value {}
#data modify storage minecraft:offers_recipes Offers.buy set value {}
data modify storage minecraft:offers_recipes Offers set value {maxUses:100000,sell:{},buy:{},xp:0,priceMultiplier:0.1}

$data modify storage minecraft:offers_recipes Offers.buy set from block ~ ~-1 ~ Items[$(score1)]
$data modify storage minecraft:offers_recipes Offers.sell set from block ~ ~ ~ Items[$(score1)]


data modify entity @s Offers.Recipes append from storage minecraft:offers_recipes Offers
