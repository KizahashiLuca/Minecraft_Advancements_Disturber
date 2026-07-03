#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール設定
##### ゲーム内時刻の進行
gamerule minecraft:advance_time false
#### 天気の更新
gamerule minecraft:advance_weather false
#### ネザーの許可
gamerule minecraft:allow_entering_nether_using_portals true
#### ブロックのドロップ
gamerule minecraft:block_drops true
#### ブロックの操作による爆発時にブロックがドロップアイテムを落とさない可能性
gamerule minecraft:block_explosion_drop_decay true
#### コマンドブロックの実行結果の通知
gamerule minecraft:command_block_output false
#### コマンドブロックの有効化
gamerule minecraft:command_blocks_work true
#### 溺水ダメージ
gamerule minecraft:drowning_damage true
#### エリトラの速度チェック
gamerule minecraft:elytra_movement_check false
#### プレイヤー死亡時のエンダーパールの消滅
gamerule minecraft:ender_pearls_vanish_on_death true
#### 設備エンティティのドロップ
gamerule minecraft:entity_drops true
#### 落下ダメージ
gamerule minecraft:fall_damage true
#### 火傷ダメージ
gamerule minecraft:fire_damage true
#### 炎の延焼が起こる半径
gamerule minecraft:fire_spread_radius_around_player 128
#### 死亡したプレイヤーへの敵対を解除
gamerule minecraft:forgive_dead_players true
#### 凍結ダメージ
gamerule minecraft:freeze_damage true
#### ワールド全体のサウンドイベント
gamerule minecraft:global_sound_events true
#### 即時リスポーン
gamerule minecraft:immediate_respawn true
#### 死亡時のインベントリの保持
gamerule minecraft:keep_inventory false
#### 溶岩流から溶岩源への変化
gamerule minecraft:lava_source_conversion false
#### クラフトにレシピを要求
gamerule minecraft:limited_crafting false
#### プレイヤーの方向バーの有効化
gamerule minecraft:locator_bar true
#### 管理者ログへのコマンドの実行結果の通知
gamerule minecraft:log_admin_commands true
#### コマンドによるブロックの最大変更数
gamerule minecraft:max_block_modifications 32768
#### コマンドの最大実行文脈数
gamerule minecraft:max_command_forks 65536
#### コマンドの最大チェーン数
gamerule minecraft:max_command_sequence_length 65536
#### エンティティの最大密集数
gamerule minecraft:max_entity_cramming 24
#### トロッコの最高速度
# gamerule minecraft:max_minecart_speed 8
#### 積雪の深さ
gamerule minecraft:max_snow_accumulation_height 1
#### Mobのアイテムのドロップ
gamerule minecraft:mob_drops true
#### Mob爆発時にブロックがドロップアイテムを落とさない可能性
gamerule minecraft:mob_explosion_drop_decay true
#### Mobの破壊行動の許可
gamerule minecraft:mob_griefing true
#### 体力の自動回復
gamerule minecraft:natural_health_regeneration true
#### プレイヤーの速度チェック
gamerule minecraft:player_movement_check false
#### クリエイティブモードでのネザーポータルの待機時間
gamerule minecraft:players_nether_portal_creative_delay 1
#### 非クリエイティブモードでのネザーポータルの待機時間
gamerule minecraft:players_nether_portal_default_delay 80
#### 就寝率
gamerule minecraft:players_sleeping_percentage 100
#### 飛び道具によるブロック破壊の可否
gamerule minecraft:projectiles_can_break_blocks true
#### PvPの有効化
gamerule minecraft:pvp true
#### 襲撃の発生
gamerule minecraft:raids true
#### ランダムティックの発生数
gamerule minecraft:random_tick_speed 3
#### デバッグ情報の制限
gamerule minecraft:reduced_debug_info false
#### リスポーン地点の半径
gamerule minecraft:respawn_radius 10
#### コマンドの実行結果の表示
execute if entity @p[predicate=mad:player/test] run \
  gamerule minecraft:send_command_feedback true
execute unless entity @p[predicate=mad:player/test] run \
  gamerule minecraft:send_command_feedback false
#### 進捗達成の通知
gamerule minecraft:show_advancement_messages false
#### 死亡メッセージの表示
gamerule minecraft:show_death_messages true
#### Mobのスポーン
gamerule minecraft:spawn_mobs true
#### モンスターのスポーン
gamerule minecraft:spawn_monsters true
#### 略奪隊のスポーン
gamerule minecraft:spawn_patrols true
#### ファントムのスポーン
gamerule minecraft:spawn_phantoms true
#### 行商人のスポーン
gamerule minecraft:spawn_wandering_traders true
#### ウォーデンのスポーン
gamerule minecraft:spawn_wardens true
#### スポナーの有効化
gamerule minecraft:spawner_blocks_work true
#### スペクテイターモードのプレイヤーによる地形生成の許可
gamerule minecraft:spectators_generate_chunks true
#### ツタの成長
gamerule minecraft:spread_vines true
#### TNTの点火及び爆発の許可
gamerule minecraft:tnt_explodes false
#### TNT爆発時にブロックがドロップアイテムを落とさない可能性
gamerule minecraft:tnt_explosion_drop_decay false
#### 敵対の共有
gamerule minecraft:universal_anger false
#### 水流から水源への変化
gamerule minecraft:water_source_conversion true
