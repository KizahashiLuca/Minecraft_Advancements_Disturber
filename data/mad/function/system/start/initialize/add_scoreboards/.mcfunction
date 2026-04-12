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
scoreboard objectives add DataVersion dummy ['',{text:'データバージョン'}]
scoreboard objectives add MajorVersion dummy ['',{text:'メジャーバージョン'}]
scoreboard objectives add MinorVersion dummy ['',{text:'マイナーバージョン'}]
scoreboard objectives add PatchVersion dummy ['',{text:'パッチバージョン'}]
scoreboard objectives add Phase dummy ['',{text:'MADフェーズ'}]
scoreboard objectives add PvP dummy ['',{text:'PvPフェーズ'}]
scoreboard objectives add NumberOfDeaths minecraft.custom:minecraft.deaths ['',{text:'デス数'}]
scoreboard objectives add NumberOfKills minecraft.custom:minecraft.player_kills ['',{text:'キル数'}]
scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death ['',{text:'最後に死亡してからの経過時間'}]
scoreboard objectives add SpectatorTrigger trigger ['', {text: 'トリガー - スペクテイター'}]
scoreboard objectives add ExecuteTrigger trigger ['', {text: 'トリガー - ゲーム制御'}]
scoreboard objectives add SetTeamTrigger trigger ['', {text: 'トリガー - チーム編成設定'}]
scoreboard objectives add TeleportTrigger trigger ['',{text:'トリガー - テレポート'}]
scoreboard objectives add ExitTrigger trigger ['',{text:'トリガー - ゲーム終了'}]
scoreboard objectives add Sidebar dummy ['',{text:'設定項目'}]
scoreboard objectives add SidebarA dummy ['',{text:'情報'}]
scoreboard objectives add SidebarB dummy ['',{text:'情報'}]
scoreboard objectives add SidebarC dummy ['',{text:'情報'}]
scoreboard objectives add SidebarD dummy ['',{text:'情報'}]
#### タイマー
scoreboard objectives add 2 dummy ['',{text:'定数 - 2'}]
scoreboard objectives add 10 dummy ['',{text:'定数 - 10'}]
scoreboard objectives add 20 dummy ['',{text:'定数 - 20'}]
scoreboard objectives add 100 dummy ['',{text:'定数 - 100'}]
scoreboard objectives add 1000 dummy ['',{text:'定数 - 1000'}]
scoreboard objectives add 10000 dummy ['',{text:'定数 - 10000'}]
scoreboard objectives add Digit00001 dummy ['',{text:'一の位'}]
scoreboard objectives add Digit00010 dummy ['',{text:'十の位'}]
scoreboard objectives add Digit00100 dummy ['',{text:'百の位'}]
scoreboard objectives add Digit01000 dummy ['',{text:'千の位'}]
scoreboard objectives add Digit10000 dummy ['',{text:'万の位'}]
scoreboard objectives add Second dummy ['',{text:'残り秒数'}]
scoreboard objectives add Tick dummy ['',{text:'残りティック数'}]
scoreboard objectives add GeneralSecond dummy ['',{text:'経過秒数'}]
scoreboard objectives add GeneralTick dummy ['',{text:'経過ティック数'}]
scoreboard objectives add TimeOfPvPStart dummy ['',{text:'PvPフェーズ 開始時間'}]
scoreboard objectives add TimeOfWaitPhase dummy ['',{text:'待機フェーズ 時間'}]
scoreboard objectives add TimeOfFallPhase dummy ['',{text:'投下フェーズ 時間'}]
scoreboard objectives add TimeOfDropCarePackage dummy ['',{text:'支援物資 投下時間'}]
scoreboard objectives add TimeLimit dummy ['',{text:'制限時間'}]
scoreboard objectives add GetBonusTime dummy ['',{text:'総獲得時間'}]
#### 撃破ボーナス
scoreboard objectives add BonusTimeOfKill dummy ['',{text:'撃破ボーナス'}]
#### 進捗ボーナス
scoreboard objectives add BonusTimeOfAdvancements dummy ['',{text:'進捗ボーナス'}]
#### プレイヤー
scoreboard objectives add PlayerNumber dummy ['',{text:'プレイヤー番号'}]
scoreboard objectives add NumberOfPlayers dummy ['',{text:'プレイヤー数'}]
scoreboard objectives add NumberOfPlayersTmp dummy ['',{text:'プレイヤー数 一時変数'}]
scoreboard objectives add PlayerNumberSkip dummy ['',{text:'プレイヤー番号 スキップ可否'}]
scoreboard objectives add MaxNumberOfPlayers dummy ['',{text:'最大プレイヤー数'}]
scoreboard objectives add NumberOfLiving dummy ['',{text:'生存プレイヤー数'}]
scoreboard objectives add NumberOfDead dummy ['',{text:'死亡プレイヤー数'}]
#### 接地判定
scoreboard objectives add OnGround dummy ['',{text:'接地判定'}]
#### アクションバー
scoreboard objectives add PosX dummy ['',{text:'X座標'}]
scoreboard objectives add PosY dummy ['',{text:'Y座標'}]
scoreboard objectives add PosZ dummy ['',{text:'Z座標'}]
scoreboard objectives add TmpX dummy ['',{text:'X座標 - 一時値'}]
scoreboard objectives add TmpY dummy ['',{text:'Y座標 - 一時値'}]
scoreboard objectives add TmpZ dummy ['',{text:'Z座標 - 一時値'}]
scoreboard objectives add 450 dummy ['',{text:'定数 - 450'}]
scoreboard objectives add Angle dummy ['',{text:'方角'}]
#### 疑似乱数生成器
scoreboard objectives add RandomizerSeed dummy ['',{text:'疑似乱数 - シード値'}]
scoreboard objectives add RandomizerCount dummy ['',{text:'疑似乱数 - カウント'}]
scoreboard objectives add RandomizerResult dummy ['',{text:'疑似乱数 - 結果'}]
scoreboard objectives add RandomizerModder dummy ['',{text:'疑似乱数 - 最大周期'}]
scoreboard objectives add RandomizerMultiplier dummy ['',{text:'疑似乱数 - 乗数'}]
#### 範囲内にエンド大陸が存在するか - 支援物資「エンドポータルフレーム」判定用
scoreboard objectives add ExistsTheEndInWorldBorder dummy ['',{text:'範囲内にエンド大陸が存在するか'}]
scoreboard objectives add NumberOfTeams dummy ['',{text:'チーム数'}]
scoreboard objectives add DeathPenaltyTime dummy ['',{text:'死亡ペナルティ'}]
#### 進捗
scoreboard objectives add HasAdvancements dummy ['',{text:'達成進捗個数'}]
#### 進捗用 - オリジナル進捗
scoreboard objectives add BreakSpawner minecraft.mined:minecraft.spawner ['',{text:'スポナー破壊個数'}]
#### 進捗用 - 実績進捗
scoreboard objectives add FallDistance dummy ['',{text:'落下距離'}]
scoreboard objectives add RailDistance minecraft.custom:minecraft.minecart_one_cm ['',{text:'レール進行距離'}]
#### 支援物資
scoreboard objectives add GetCarePackageCount dummy ['',{text:'取得支援物資個数'}]
scoreboard objectives add UnsetLootTable dummy ['',{text:'ルートテーブル未設定'}]
#### 支援物資用 - 発信機
scoreboard objectives add UseTransmitter minecraft.used:minecraft.bat_spawn_egg ['',{text:'発信機 - 使用トリガー'}]
#### 支援物資用 - 緊急招集
scoreboard objectives add UseEmergencyCall minecraft.used:minecraft.zombie_horse_spawn_egg ['',{text:'緊急招集 - 使用トリガー'}]
#### 支援物資用 - 防具アップグレード
scoreboard objectives add UseArmorUpgrader minecraft.used:minecraft.wolf_spawn_egg ['',{text:'防具アップグレード - 使用トリガー'}]
#### 支援物資用 - ツールアップグレード
scoreboard objectives add UseToolUpgrader minecraft.used:minecraft.turtle_spawn_egg ['',{text:'ツールアップグレード - 使用トリガー'}]
#### 支援物資用 - 緊急招集
scoreboard objectives add UseNoticeOfThief minecraft.used:minecraft.rabbit_spawn_egg ['',{text:'怪盗予告 - 使用トリガー'}]
scoreboard objectives add NumberOfItemCandidates dummy ['',{text:'怪盗予告 - 怪盗候補アイテム数'}]
#### 支援物資用 - ウォーデンの牙の杖
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick ['',{text:'ウォーデンの牙の杖 - 使用トリガー'}]
scoreboard objectives add NumberOfSonicBooms dummy ['',{text:'ウォーデンの牙の杖 - 衝撃波番号'}]
scoreboard objectives add SonicBoomCount dummy ['',{text:'ウォーデンの牙の杖 - 衝撃波回数'}]
#### 支援物資用 - メイズメイカー
scoreboard objectives add UseMazeMaker minecraft.used:minecraft.allay_spawn_egg ['',{text:'メイズメイカー - 使用トリガー'}]
scoreboard objectives add RandomMax dummy ['',{text:'メイズメイカー - 疑似乱数最大周回値'}]
scoreboard objectives add RandomAngle dummy ['',{text:'メイズメイカー - 出口方角'}]
scoreboard objectives add MazeNumber dummy ['',{text:'メイズメイカー - 迷路番号'}]
scoreboard objectives add MazeNumberTmp dummy ['',{text:'メイズメイカー - 迷路番号一時値'}]
scoreboard objectives add MazePosX dummy ['',{text:'メイズメイカー - X座標'}]
scoreboard objectives add MazePosZ dummy ['',{text:'メイズメイカー - Z座標'}]
scoreboard objectives add DeadEnd dummy ['',{text:'メイズメイカー - 行き止まり'}]
scoreboard objectives add HasExit dummy ['',{text:'メイズメイカー - 出口設定済'}]
#### 支援物資用 - どっか行け矢(仮)
scoreboard objectives add ArrowTeleportTick dummy ['',{text:'どっか行け矢 - 経過ティック数'}]
scoreboard objectives add ArrowTeleportPosX dummy ['',{text:'どっか行け矢 - テレポート先 - X座標'}]
scoreboard objectives add ArrowTeleportPosY dummy ['',{text:'どっか行け矢 - テレポート先 - Y座標'}]
scoreboard objectives add ArrowTeleportPosZ dummy ['',{text:'どっか行け矢 - テレポート先 - Z座標'}]
#### リスポーンバナー
scoreboard objectives add AttackerNumber dummy ['',{text:'攻撃プレイヤー番号'}]
scoreboard objectives add AttackedSecond dummy ['',{text:'被攻撃時秒数'}]
scoreboard objectives add AttackedTick dummy ['',{text:'被攻撃時ティック数'}]
#### リスポーンビーコン
scoreboard objectives add BeaconNumber dummy ['',{text:'リスポーンビーコン番号'}]
scoreboard objectives add CompareNames dummy ['',{text:'リスポーンビーコン - ユーザ名比較'}]
scoreboard objectives add ExistsTeam dummy ['',{text:'リスポーンビーコン - チーム存在'}]
scoreboard objectives add BeaconTmp dummy ['',{text:'リスポーンビーコン - 一時変数'}]
