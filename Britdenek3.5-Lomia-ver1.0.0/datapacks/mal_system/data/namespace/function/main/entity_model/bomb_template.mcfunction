$summon creeper ~ ~200 ~ {PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"namespace:item/other/none",Silent:1b,Invulnerable:1b,ExplosionRadius:$(power),Fuse:0,ignited:1b,Tags:["mal_bomb"]}
particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5 force
#クリーパー爆弾一括制御
execute positioned ~ ~200 ~ as @e[tag=mal_bomb,type=minecraft:creeper,limit=1,sort=nearest,distance=..0.1] at @s run teleport @s ~ ~-200 ~
