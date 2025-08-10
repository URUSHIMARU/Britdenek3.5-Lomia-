execute if score #battle arena matches 0 run function namespace:main/city/illusion_arena/arena_off
execute if score #battle arena matches 1 run function namespace:main/city/illusion_arena/arena_on

#ボス選択トリガーのリセット
scoreboard players set @a[scores={illusion_arena_trigger=1..}] illusion_arena_trigger 0
