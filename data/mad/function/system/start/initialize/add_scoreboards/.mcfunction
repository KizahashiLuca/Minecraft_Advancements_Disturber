#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード追加
#### ゲームフェーズ
scoreboard objectives add DataVersion dummy ['', {translate: 'データバージョン'}]
scoreboard objectives add MajorVersion dummy ['', {translate: 'メジャーバージョン'}]
scoreboard objectives add MinorVersion dummy ['', {translate: 'マイナーバージョン'}]
scoreboard objectives add PatchVersion dummy ['', {translate: 'パッチバージョン'}]
scoreboard objectives add Phase dummy ['', {translate: 'MADフェーズ'}]
scoreboard objectives add PvP dummy ['', {translate: 'PvPフェーズ'}]
scoreboard objectives add NumberOfDeaths minecraft.custom:minecraft.deaths ['', {translate: 'デス数'}]
scoreboard objectives add NumberOfKills minecraft.custom:minecraft.player_kills ['', {translate: 'キル数'}]
scoreboard objectives add SpectatorTrigger trigger ['', {translate: 'トリガー - スペクテイター'}]
scoreboard objectives add ExecuteTrigger trigger ['', {translate: 'トリガー - ゲーム制御'}]
scoreboard objectives add SetTeamTrigger trigger ['', {translate: 'トリガー - チーム編成設定'}]
scoreboard objectives add TeleportTrigger trigger ['', {translate: 'トリガー - テレポート'}]
scoreboard objectives add ExitTrigger trigger ['', {translate: 'トリガー - ゲーム終了'}]
scoreboard objectives add Sidebar dummy ['', {translate: '設定項目'}]
scoreboard objectives add SidebarA dummy ['', {translate: '情報'}]
scoreboard objectives add SidebarB dummy ['', {translate: '情報'}]
scoreboard objectives add SidebarC dummy ['', {translate: '情報'}]
scoreboard objectives add SidebarD dummy ['', {translate: '情報'}]
#### タイマー
scoreboard objectives add 20 dummy ['', {translate: '定数 - 20'}]
scoreboard objectives add Second dummy ['', {translate: '残り秒数'}]
scoreboard objectives add Tick dummy ['', {translate: '残りティック数'}]
scoreboard objectives add GeneralSecond dummy ['', {translate: '経過秒数'}]
scoreboard objectives add GeneralTick dummy ['', {translate: '経過ティック数'}]
scoreboard objectives add TimeOfPvPStart dummy ['', {translate: 'PvPフェーズ 開始時間'}]
scoreboard objectives add TimeOfWaitPhase dummy ['', {translate: '待機フェーズ 時間'}]
scoreboard objectives add TimeOfFallPhase dummy ['', {translate: '投下フェーズ 時間'}]
scoreboard objectives add TimeOfDropCarePackage dummy ['', {translate: '支援物資 投下時間'}]
scoreboard objectives add TimeLimit dummy ['', {translate: '制限時間'}]
scoreboard objectives add GetBonusTime dummy ['', {translate: '総獲得時間'}]
#### 撃破ボーナス
scoreboard objectives add BonusTimeOfKill dummy ['', {translate: '撃破ボーナス'}]
#### 進捗ボーナス
scoreboard objectives add BonusTimeOfAdvancements dummy ['', {translate: '進捗ボーナス'}]
#### プレイヤー
scoreboard objectives add PlayerNumber dummy ['', {translate: 'プレイヤー番号'}]
scoreboard objectives add NumberOfPlayers dummy ['', {translate: 'プレイヤー数'}]
scoreboard objectives add NumberOfPlayersTmp dummy ['', {translate: 'プレイヤー数 一時変数'}]
scoreboard objectives add PlayerNumberSkip dummy ['', {translate: 'プレイヤー番号 スキップ可否'}]
scoreboard objectives add NumberOfLiving dummy ['', {translate: '生存プレイヤー数'}]
scoreboard objectives add NumberOfDead dummy ['', {translate: '死亡プレイヤー(死亡チーム)数'}]
#### 接地判定
scoreboard objectives add OnGround dummy ['', {translate: '接地判定'}]
#### アクションバー
scoreboard objectives add PosX dummy ['', {translate: 'X座標'}]
scoreboard objectives add PosY dummy ['', {translate: 'Y座標'}]
scoreboard objectives add PosZ dummy ['', {translate: 'Z座標'}]
scoreboard objectives add TmpX dummy ['', {translate: 'X座標 - 一時値'}]
scoreboard objectives add TmpY dummy ['', {translate: 'Y座標 - 一時値'}]
scoreboard objectives add TmpZ dummy ['', {translate: 'Z座標 - 一時値'}]
scoreboard objectives add 450 dummy ['', {translate: '定数 - 450'}]
scoreboard objectives add Angle dummy ['', {translate: '方角'}]
#### チーム数 - 勝敗判定用
scoreboard objectives add NumberOfTeams dummy ['', {translate: 'チーム数'}]
#### 死亡ペナルティ - 制限時間減算用
scoreboard objectives add DeathPenaltyTime dummy ['', {translate: '死亡ペナルティ'}]
#### 進捗
scoreboard objectives add HasAdvancements dummy ['', {translate: '達成進捗個数'}]
#### 進捗用 - オリジナル進捗
scoreboard objectives add BreakSpawner minecraft.mined:minecraft.spawner ['', {translate: 'スポナー破壊個数'}]
#### 進捗用 - 実績進捗
scoreboard objectives add FallDistance dummy ['', {translate: '落下距離'}]
scoreboard objectives add RailDistance minecraft.custom:minecraft.minecart_one_cm ['', {translate: 'レール進行距離'}]
#### 支援物資
scoreboard objectives add GetCarePackageCount dummy ['', {translate: '取得支援物資個数'}]
scoreboard objectives add UnsetLootTable dummy ['', {translate: 'ルートテーブル未設定'}]
scoreboard objectives add RandomValue dummy ['', {translate: '乱数値'}]
#### 支援物資用 - 発信機
scoreboard objectives add UseTransmitter minecraft.used:minecraft.bat_spawn_egg ['', {translate: 'トリガー - 発信機使用'}]
#### 支援物資用 - 緊急招集
scoreboard objectives add UseEmergencyCall minecraft.used:minecraft.zombie_horse_spawn_egg ['', {translate: 'トリガー - 緊急招集使用'}]
#### 支援物資用 - 防具アップグレード
scoreboard objectives add UseArmorUpgrader minecraft.used:minecraft.wolf_spawn_egg ['', {translate: 'トリガー - 防具アップグレード使用'}]
#### 支援物資用 - ツールアップグレード
scoreboard objectives add UseToolUpgrader minecraft.used:minecraft.turtle_spawn_egg ['', {translate: 'トリガー - ツールアップグレード使用'}]
#### 支援物資用 - 怪盗予告
scoreboard objectives add UseNoticeOfThief minecraft.used:minecraft.rabbit_spawn_egg ['', {translate: 'トリガー - 怪盗予告使用'}]
scoreboard objectives add NumberOfItemCandidates dummy ['', {translate: '怪盗予告 - 怪盗候補アイテム数'}]
#### リスポーンバナー用
scoreboard objectives add PlayerUUID0 dummy ['', {translate: 'UUID[0]'}]
scoreboard objectives add PlayerUUID1 dummy ['', {translate: 'UUID[1]'}]
scoreboard objectives add PlayerUUID2 dummy ['', {translate: 'UUID[2]'}]
scoreboard objectives add PlayerUUID3 dummy ['', {translate: 'UUID[3]'}]
scoreboard objectives add LastHurtByPlayerNumber dummy ['', {translate: '最後に攻撃したプレイヤー番号'}]
scoreboard objectives add LastHurtByPlayerUUID0 dummy ['', {translate: '最後に攻撃したプレイヤー - UUID[0]'}]
scoreboard objectives add LastHurtByPlayerUUID1 dummy ['', {translate: '最後に攻撃したプレイヤー - UUID[1]'}]
scoreboard objectives add LastHurtByPlayerUUID2 dummy ['', {translate: '最後に攻撃したプレイヤー - UUID[2]'}]
scoreboard objectives add LastHurtByPlayerUUID3 dummy ['', {translate: '最後に攻撃したプレイヤー - UUID[3]'}]
scoreboard objectives add LastHurtByPlayerMemoryTime dummy ['', {translate: '最後に攻撃されてからの時間'}]
