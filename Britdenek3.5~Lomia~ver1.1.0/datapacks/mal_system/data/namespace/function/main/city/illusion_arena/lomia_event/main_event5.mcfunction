execute if score #event_time event matches 20 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.1"}
execute if score #event_time event matches 120 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.2"}
execute if score #event_time event matches 220 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.3"}
execute if score #event_time event matches 320 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.4"}
execute if score #event_time event matches 420 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.5"}
execute if score #event_time event matches 520 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.6"}
execute if score #event_time event matches 620 run tellraw @a {"translate":"system.talk.lomia.event.main.5.talk.7"}
execute if score #event_time event matches 620 run function namespace:main/city/illusion_arena/lomia_event_init/init5

execute if score #event_time event matches 620.. run scoreboard players set #event_time event 100000