

#敵モブHP管理
scoreboard objectives add HP dummy
#ボスのパーツごとのHP
scoreboard objectives add bossHP dummy
#ボスHP管理
scoreboard objectives add bossdamage dummy
#ボスモーション制御
scoreboard objectives add bossmove dummy
#ボスアニメ制御用
scoreboard objectives add motion dummy
scoreboard objectives add motion2 dummy
#ボス技フラグ用
scoreboard objectives add bossskill1 dummy
scoreboard objectives add bossskill2 dummy
scoreboard objectives add bossskill3 dummy
scoreboard objectives add bossskill4 dummy
scoreboard objectives add bossskill5 dummy
#ボスカスタムモデルデータ
scoreboard objectives add custommodeldata dummy
#ゲーム乱数用
scoreboard objectives add random dummy


#座標スポイト用
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add eye dummy

#一定時間経過でデスポーンするための管理
scoreboard objectives add deathspown dummy

#ボス戦のフラグ 0:ボス戦発生 1:ボス戦発生なし(撃破後) 2:ボス戦フラグ永久消滅
scoreboard objectives add bossflag dummy

#ロミア闘技場専用敵味方判断
scoreboard objectives add lomia dummy
#ボスが敵を判別する
scoreboard objectives add player dummy

#MP関連
scoreboard objectives add mp dummy


#ゲーム#difficulty
scoreboard objectives add difficulty dummy
scoreboard players add #difficulty difficulty 0

#ゲーム乱数用
scoreboard objectives add random dummy


#コマンドによるダメージ処理
scoreboard objectives add commandDamage dummy

#リログ
scoreboard objectives add relog minecraft.custom:minecraft.leave_game


#検知関連
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time

#計算用
scoreboard objectives add cal dummy
scoreboard players set #-1 cal -1
scoreboard players set #0 cal 0
scoreboard players set #2 cal 2
scoreboard players set #3 cal 3
scoreboard players set #4 cal 4
scoreboard players set #5 cal 5
scoreboard players set #6 cal 6
scoreboard players set #7 cal 7
scoreboard players set #8 cal 8
scoreboard players set #9 cal 9
scoreboard players set #10 cal 10
scoreboard players set #20 cal 20
scoreboard players set #30 cal 30
scoreboard players set #40 cal 40
scoreboard players set #50 cal 50
scoreboard players set #60 cal 60
scoreboard players set #70 cal 70
scoreboard players set #80 cal 80
scoreboard players set #90 cal 90
scoreboard players set #100 cal 100
scoreboard players set #150 cal 150
scoreboard players set #200 cal 200
scoreboard players set #1000 cal 1000


#保有インベントリ検知用
scoreboard objectives add selectedItemSlot dummy
scoreboard objectives add selectedItemSlotBefore dummy

#日光に当たることの検知
scoreboard objectives add lightTime dummy

#ステータス計算用
scoreboard objectives add attackSpeedBase dummy
scoreboard objectives add attackBase dummy
scoreboard objectives add attackRangeBase dummy
scoreboard objectives add bowAttackBase dummy
scoreboard objectives add magicAttackBase dummy
scoreboard objectives add attackSpearCountBase dummy
scoreboard objectives add guardBase dummy
scoreboard objectives add mpHealBase dummy
scoreboard objectives add maxHealthBase dummy
scoreboard objectives add luckBase dummy

#お金取得
scoreboard objectives add getMoney dummy

#スキルウインドウ設置数用
scoreboard objectives add getSkill dummy
#エンダーチェストアイテム種類取得用
scoreboard objectives add pickEnderItem dummy
#エンダーチェストウインドウページ
scoreboard objectives add enderPage dummy
#スキル一覧
scoreboard objectives add skillNum1 dummy
scoreboard objectives add skillNum2 dummy
scoreboard objectives add skillNum3 dummy
scoreboard objectives add skillNum4 dummy
scoreboard objectives add skillNum5 dummy

#スキルの総取得数
scoreboard objectives add skillCount dummy
#スキルの使用回数
#スキル2瞑想取得用
scoreboard objectives add skill2 dummy
#スキル3精神統一取得用
scoreboard objectives add skill3 dummy
#スキル4バックステップ取得用
scoreboard objectives add skill4 dummy
#スキル5バックステップ+取得用
scoreboard objectives add skill5 dummy
#スキル6防御の構え取得用
scoreboard objectives add skill6 dummy
#スキル7シールドバッシュ取得用
scoreboard objectives add skill7 dummy
#スキル8リフレクション取得用
scoreboard objectives add skill8 dummy
#スキル9食いしん坊取得用
scoreboard objectives add skill9 dummy
#スキル10食いしん坊万歳取得用
scoreboard objectives add skill10 dummy
#スキル13逃げ癖取得用
scoreboard objectives add skill13 dummy
#スキル14生存本能得用
scoreboard objectives add skill14 dummy
#スキル16バーサークモード得用
scoreboard objectives add skill16 dummy
#スキル18ダメージリベンジャー取得用
scoreboard objectives add skill18 dummy
#スキル19火事場の馬鹿力取得用
scoreboard objectives add skill19 dummy
#スキル20背水の陣取得用
scoreboard objectives add skill20 dummy
#スキル23トリックショット取得用
scoreboard objectives add skill23 dummy
#スキル24ファントムショット取得用
scoreboard objectives add skill24 dummy
#スキル26弓術歩法取得用
scoreboard objectives add skill26 dummy
#スキル28デュアルアタック2取得用
scoreboard objectives add skill28 dummy
#スキル30瞬突取得用
scoreboard objectives add skill30 dummy
#スキル31ワイドランス取得用
scoreboard objectives add skill31 dummy
#スキル32不落要塞取得用
scoreboard objectives add skill32 dummy
#スキル33剣士の覚悟取得用
scoreboard objectives add skill33 dummy
#スキル36飛空斬壱式取得用
scoreboard objectives add skill36 dummy
#スキル37飛空斬弐式取得用
scoreboard objectives add skill37 dummy
#スキル39双剣の舞取得用
scoreboard objectives add skill39 dummy
#スキル40縮地取得用
scoreboard objectives add skill40 dummy
#スキル41双剣乱舞取得用
scoreboard objectives add skill41 dummy
#スキル42明鏡止水取得用
scoreboard objectives add skill42 dummy
#スキル45~47吸血鬼関連スキル取得用
scoreboard objectives add skill45 dummy
#スキル48夜王取得用
scoreboard objectives add skill48 dummy

#マント魔法
scoreboard objectives add mant1 dummy
scoreboard objectives add mant2 dummy
scoreboard objectives add mant3 dummy
scoreboard objectives add mant4 dummy

#盾使用時間
scoreboard objectives add shield dummy
scoreboard objectives add shield_time dummy

#夜のマント時間
scoreboard objectives add skill46_count dummy
#スキルダメージリベンジャー専用
scoreboard objectives add skill18_damage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add skill18_timer dummy
#弓を構えているか検知
scoreboard objectives add use_bow dummy
#弓を構えている時間
scoreboard objectives add use_bow_time dummy
#ジャンプ検知
scoreboard objectives add jump minecraft.custom:minecraft.jump
#盾で受け流したダメージ
scoreboard objectives add shield_damage minecraft.custom:minecraft.damage_blocked_by_shield
#ダメージを与えた
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_dealt2 dummy
#ダメージを受けた
scoreboard objectives add take_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add resist_damage minecraft.custom:minecraft.damage_resisted
#プレイヤーHP
scoreboard objectives add Health health
#弓使用検知
scoreboard objectives add bow minecraft.used:minecraft.bow
#人参付き釣り竿検知
scoreboard objectives add rod minecraft.used:minecraft.carrot_on_a_stick
#召喚持続時間
scoreboard objectives add summon_time dummy

#実行結果確認用
scoreboard objectives add result dummy
scoreboard objectives add result2 dummy
scoreboard objectives add result3 dummy

#空腹
scoreboard objectives add food food
#死亡検知
scoreboard objectives add death deathCount

tellraw @a {"text":"リロード完了"}



#npc会話管理用
scoreboard objectives add npc_talk dummy

#ロミアギャンブル用
scoreboard objectives add lomia_gambling dummy
#スロットマシーン用
scoreboard players add #slot1_start lomia_gambling 0
scoreboard players add #slot2_start lomia_gambling 0

#ロミア闘技場制御用 0オフ1オン
scoreboard players add #battle lomia 0
#ロミア闘技場開戦までの時間
scoreboard players add #start_count lomia 0
#ロミア闘技場試合終了制御
scoreboard players add #end_count lomia 0
#ロミア闘技場試合パターン
scoreboard players add #pattern lomia 0

#幻想闘技場の制御
scoreboard objectives add arena dummy
##幻想闘技場の制御 0オフ1オン
scoreboard players add #battle arena 0
#幻想闘技場開戦までの時間
scoreboard players add #start_count arena 0
#戦うボスの番号
scoreboard players add #boss arena 0
#ボスがよそでバトル中か確認
scoreboard players add #in_battle arena 0

#イベント管理
scoreboard objectives add event dummy
scoreboard players add #main_storyline event 0

#睡眠してからの時間
scoreboard objectives add bed minecraft.custom:minecraft.time_since_rest

#幻想の闘技場ボス選択用
scoreboard objectives add illusion_arena_trigger trigger

#スロット用
team add green
team modify green color green

#スタシロ中毒
scoreboard objectives add star_syrup dummy

