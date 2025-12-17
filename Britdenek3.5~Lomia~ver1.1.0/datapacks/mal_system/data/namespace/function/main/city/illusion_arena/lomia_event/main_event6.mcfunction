execute if score #event_time event matches 20 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.1"}
execute if score #event_time event matches 120 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.2"}
execute if score #event_time event matches 220 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.3"}
execute if score #event_time event matches 320 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.4"}
execute if score #event_time event matches 420 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.5"}
execute if score #event_time event matches 520 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.6"}
execute if score #event_time event matches 620 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.7"}
execute if score #event_time event matches 820 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.8"}
execute if score #event_time event matches 920 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.9"}
execute if score #event_time event matches 1020 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.10"}
execute if score #event_time event matches 1120 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.11"}
execute if score #event_time event matches 1220 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.12"}
execute if score #event_time event matches 1320 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.13"}
execute if score #event_time event matches 1420 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.14"}
execute if score #event_time event matches 1520 run tellraw @a {"translate":"system.talk.lomia.event.main.6.talk.15"}
execute if score #event_time event matches 1520 run function namespace:main/city/illusion_arena/lomia_event_init/init6


execute if score #event_time event matches 1520.. run scoreboard players set #event_time event 100000
