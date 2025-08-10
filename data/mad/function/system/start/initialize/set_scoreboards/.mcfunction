#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### ゲームフェーズ
scoreboard players set #mad DataVersion 1444
scoreboard players set #mad MajorVersion 13
scoreboard players set #mad MinorVersion 0
scoreboard players set #mad SnapshotVersion 0
scoreboard players set #mad PreReleaseVersion 0
scoreboard players set #mad ReleaseCandidateVersion 0
scoreboard players set #mad ReleaseVersion 0
scoreboard players set #mad Phase 1
scoreboard players set @a[predicate=mad:player/] Phase 0
scoreboard players set #mad PvP 0
scoreboard players set @a[predicate=mad:player/] NumOfDeaths 0
scoreboard players set @a[predicate=mad:player/] NumberOfKills 0
scoreboard players set @a[predicate=mad:player/] TimeSinceDeath 0
scoreboard players set @a TeleportToCarePackage 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportToCarePackage
scoreboard players set @a TeleportToWorldCenter 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportToWorldCenter
scoreboard players set #mad ExitTrigger 0
scoreboard players set @a[predicate=mad:player/host] ExitTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExitTrigger
#### タイマー
scoreboard players set #mad 2 2
scoreboard players set #mad 10 10
scoreboard players set #mad 20 20
scoreboard players set #mad 100 100
scoreboard players set #mad 1000 1000
scoreboard players set #mad 10000 10000
scoreboard players set @a[predicate=mad:player/] Second 0
scoreboard players set @a[predicate=mad:player/] Tick 0
scoreboard players set #mad GeneralSecond 0
scoreboard players set @a[predicate=mad:player/] GeneralSecond 0
scoreboard players set #mad GeneralTick 0
scoreboard players set #mad TimeOfPvPStart 900
scoreboard players set #mad TimeOfWaitPhase 30
scoreboard players set #mad TimeOfFallPhase 5
scoreboard players set #mad TimeLimit 300
scoreboard players set #mad_team_a GetBonusTime 0
scoreboard players set #mad_team_b GetBonusTime 0
scoreboard players set #mad_team_c GetBonusTime 0
scoreboard players set #mad_team_d GetBonusTime 0
scoreboard players set @a[predicate=mad:player/] GetBonusTime 0
#### プレイヤー
scoreboard players set #mad PlayerNumber 0
scoreboard players set @a[predicate=mad:player/] PlayerNumber 0
scoreboard players set #mad_player NumberOfPlayers 0
scoreboard players set #mad_team_a NumberOfPlayers 0
scoreboard players set #mad_team_b NumberOfPlayers 0
scoreboard players set #mad_team_c NumberOfPlayers 0
scoreboard players set #mad_team_d NumberOfPlayers 0
scoreboard players set #mad_player MaxNumberOfPlayers 20
scoreboard players set #mad_team_a MaxNumberOfPlayers 0
scoreboard players set #mad_team_b MaxNumberOfPlayers 0
scoreboard players set #mad_team_c MaxNumberOfPlayers 0
scoreboard players set #mad_team_d MaxNumberOfPlayers 0
scoreboard players set #mad NumberOfLiving 0
scoreboard players set #mad_team_a NumberOfLiving 0
scoreboard players set #mad_team_b NumberOfLiving 0
scoreboard players set #mad_team_c NumberOfLiving 0
scoreboard players set #mad_team_d NumberOfLiving 0
scoreboard players set #mad NumberOfDead 0
scoreboard players set #mad_team_a NumberOfDead 0
scoreboard players set #mad_team_b NumberOfDead 0
scoreboard players set #mad_team_c NumberOfDead 0
scoreboard players set #mad_team_d NumberOfDead 0
#### チーム戦
scoreboard players set #mad IsTeam 1
#### 接地判定
scoreboard players set @a[predicate=mad:player/] OnGround 0
#### アクションバー
scoreboard players set #mad PosX 0
scoreboard players set #mad PosY 63
scoreboard players set #mad PosZ 0
scoreboard players set #mad 450 450
#### 疑似乱数生成器
scoreboard players set #mad RandomizerSeed 0
scoreboard players set #mad RandomizerCount 10
scoreboard players set #mad RandomizerResult 0
scoreboard players set #mad RandomizerModder 2147483647
scoreboard players set #mad RandomizerMultiplier 48271
#### 設定フェーズ - 初期時間
scoreboard players set #mad InitialTime 300
#### 設定フェーズ - 追加時間
scoreboard players set #mad BonusTimeOfAdvancements 100
#### 設定フェーズ - 支援物資間隔
scoreboard players set #mad CarePackageInterval 300
#### 設定フェーズ - ワールド範囲
scoreboard players set #mad WorldBorder 1500
scoreboard players set #mad ExistsTheEndInWorldBorder 0
#### 設定フェーズ - その他ルール
scoreboard players set #mad Difficulty 2
scoreboard players set #mad WeatherCycle 1
scoreboard players set #mad DaylightCycle 1
scoreboard players set #mad NumberOfCarePackages 1
scoreboard players set #mad BonusTimeOfKill 200
#### 設定フェーズ - チーム戦ルール その1
scoreboard players set #mad NumberOfTeams 2
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad DeathPenaltyTime 0
#### 設定フェーズ - チーム戦ルール その2
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad nametagVisibility 1
scoreboard players set #mad seeFriendlyInvisibles 1
scoreboard players set #mad deathMessageVisibility 1
#### 設定フェーズ - チーム編成設定
scoreboard players set #mad ReloadDisplay 0
scoreboard players set #mad_team_a PlayerHeadNumber 0
scoreboard players set #mad_team_b PlayerHeadNumber 0
scoreboard players set #mad_team_c PlayerHeadNumber 0
scoreboard players set #mad_team_d PlayerHeadNumber 0
scoreboard players set #mad NotExistsTeamMember 0
#### 進捗
scoreboard players set #mad_team_a HasAdvancements 0
scoreboard players set #mad_team_b HasAdvancements 0
scoreboard players set #mad_team_c HasAdvancements 0
scoreboard players set #mad_team_d HasAdvancements 0
scoreboard players set @a[predicate=mad:player/] HasAdvancements 0
#### 進捗用 - オリジナル進捗
scoreboard players set @a[predicate=mad:player/] BreakSpawner 0
#### 進捗用 - 実績進捗
scoreboard players set @a[predicate=mad:player/] FallDistance 0
scoreboard players set @a[predicate=mad:player/] RailDistance 0
#### 支援物資
scoreboard players set #mad_team_a GetCarePackageCount 0
scoreboard players set #mad_team_b GetCarePackageCount 0
scoreboard players set #mad_team_c GetCarePackageCount 0
scoreboard players set #mad_team_d GetCarePackageCount 0
scoreboard players set @a[predicate=mad:player/] GetCarePackageCount 0
#### 支援物資用 - 発信機
scoreboard players set @a[predicate=mad:player/] UseTransmitter 0
#### 支援物資用 - 緊急招集
scoreboard players set @a[predicate=mad:player/] UseEmergencyCall 0
#### 支援物資用 - 防具アップグレード
scoreboard players set @a[predicate=mad:player/] UseArmorUpgrader 0
#### 支援物資用 - ツールアップグレード
scoreboard players set @a[predicate=mad:player/] UseToolUpgrader 0
#### 支援物資用 - 緊急招集
scoreboard players set @a[predicate=mad:player/] UseNoticeOfThief 0
scoreboard players set @a[predicate=mad:player/] NumberOfItemCandidates 0
#### 支援物資用 - ウォーデンの牙の杖
scoreboard players set @a[predicate=mad:player/] UseFungusStick 0
scoreboard players set #mad NumberOfSonicBooms 0
#### 支援物資用 - メイズメイカー
scoreboard players set @a[predicate=mad:player/] UseMazeMaker 0
scoreboard players set #mad MazeNumber 1
#### 支援物資用 - どっか行け矢(仮)
scoreboard players set @a[predicate=mad:player/] ArrowTeleportTick 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosX 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosY 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosZ 0
#### リスポーンバナー
scoreboard players set @a[predicate=mad:player/] AttackerNumber 0
scoreboard players set @a[predicate=mad:player/] AttackedSecond 0
scoreboard players set @a[predicate=mad:player/] AttackedTick 0
#### リスポーンビーコン
scoreboard players set #mad CompareNames 1
scoreboard players set #mad ExistsTeam 1
scoreboard players set @a[predicate=mad:player/] BeaconTmp 0