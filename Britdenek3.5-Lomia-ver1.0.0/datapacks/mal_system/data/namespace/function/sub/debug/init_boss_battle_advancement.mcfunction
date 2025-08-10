#ゲーム進捗全初期化
scoreboard players set #boss1 arena 0
scoreboard players set #boss2 arena 0
scoreboard players set #boss3 arena 0
scoreboard players set #boss4 arena 0
scoreboard players set #boss5 arena 0
scoreboard players set #boss6 arena 0
scoreboard players set #boss7 arena 0
scoreboard players set #boss8 arena 0
scoreboard players set #boss9 arena 0
scoreboard players set #boss10 arena 0
scoreboard players set #boss11 arena 0
scoreboard players set #boss12 arena 0
scoreboard players set #boss13 arena 0
scoreboard players set #boss14 arena 0
scoreboard players set #boss15 arena 0
scoreboard players set #boss16 arena 0
scoreboard players set #boss17 arena 0
scoreboard players set #boss18 arena 0
scoreboard players set #boss19 arena 0
scoreboard players set #boss20 arena 0
scoreboard players set #boss21 arena 0
scoreboard players set #boss22 arena 0
scoreboard players set #boss23 arena 0
scoreboard players set #boss24 arena 0
scoreboard players set #boss25 arena 0
scoreboard players set #boss26 arena 0

scoreboard players set #boss1001 arena 0
scoreboard players set #boss1002 arena 0
scoreboard players set #boss1003 arena 0
scoreboard players set #boss1004 arena 0
scoreboard players set #boss1005 arena 0

tag @a remove boss1_win
tag @a remove boss2_win
tag @a remove boss3_win
tag @a remove boss4_win
tag @a remove boss5_win
tag @a remove boss6_win
tag @a remove boss7_win
tag @a remove boss8_win
tag @a remove boss9_win
tag @a remove boss10_win
tag @a remove boss11_win
tag @a remove boss12_win
tag @a remove boss13_win
tag @a remove boss14_win
tag @a remove boss15_win
tag @a remove boss16_win
tag @a remove boss17_win
tag @a remove boss18_win
tag @a remove boss19_win
tag @a remove boss20_win
tag @a remove boss21_win
tag @a remove boss22_win
tag @a remove boss23_win
tag @a remove boss24_win
tag @a remove boss25_win
tag @a remove boss26_win
tag @a remove boss1001_win
tag @a remove boss1002_win
tag @a remove boss1003_win
tag @a remove boss1004_win
tag @a remove boss5_win

#OPの壁
scoreboard players set #main_storyline event 1
fill -423 63 921 -423 56 908 minecraft:iron_block
setblock -424 56 914 minecraft:command_block[conditional=false,facing=north]{Command:"/scoreboard players set #event_time event 0",SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,components:{},conditionMet:0b,powered:0b}
setblock -422 56 914 minecraft:oak_button[face=wall,facing=east,powered=false]
setblock -422 57 914 minecraft:pale_oak_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"light_blue",has_glowing_text:1b,messages:["",{translate:"system.start"},"",""]},is_waxed:0b}
fill -415 57 921 -415 56 921 air
#アリーナの掲示板削除
fill -368 94 918 -368 93 919 air
#スタシロ中毒治療フラグをオフ
setblock -432 94 884 air
setblock -437 94 917 minecraft:air
#酒場の感圧版
setblock -425 85 899 minecraft:air
setblock -432 98 894 minecraft:air
#街の初期化
function namespace:main/city/illusion_arena/lomia_event_init/init1

