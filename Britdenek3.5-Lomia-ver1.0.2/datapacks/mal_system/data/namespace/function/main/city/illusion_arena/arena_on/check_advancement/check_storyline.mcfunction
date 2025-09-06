scoreboard players set @a event 0

$scoreboard players add @a[tag=$(event1)] event 1
$scoreboard players add @a[tag=$(event2)] event 1
$scoreboard players add @a[tag=$(event3)] event 1
$scoreboard players add @a[tag=$(event4)] event 1
$scoreboard players add @a[tag=$(event5)] event 1


execute if entity @a[scores={event=3..},limit=1] run scoreboard players add #main_storyline event 1

#イベント実行
execute if entity @a[scores={event=3..},limit=1] run scoreboard players set #event_time event 0



