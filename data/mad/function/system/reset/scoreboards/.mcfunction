#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード削除
#### ゲームフェーズ
scoreboard objectives remove DataVersion
scoreboard objectives remove MajorVersion
scoreboard objectives remove MinorVersion
scoreboard objectives remove PatchVersion
scoreboard objectives remove Phase
scoreboard objectives remove PvP
scoreboard objectives remove NumberOfDeaths
scoreboard objectives remove NumberOfKills
scoreboard objectives remove TimeSinceDeath
scoreboard objectives remove SpectatorTrigger
scoreboard objectives remove ExecuteTrigger
scoreboard objectives remove SetTeamTrigger
scoreboard objectives remove TeleportTrigger
scoreboard objectives remove ExitTrigger
scoreboard objectives remove Sidebar
scoreboard objectives remove SidebarA
scoreboard objectives remove SidebarB
scoreboard objectives remove SidebarC
scoreboard objectives remove SidebarD
#### タイマー
scoreboard objectives remove 2
scoreboard objectives remove 10
scoreboard objectives remove 20
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove Digit00001
scoreboard objectives remove Digit00010
scoreboard objectives remove Digit00100
scoreboard objectives remove Digit01000
scoreboard objectives remove Digit10000
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GeneralSecond
scoreboard objectives remove GeneralTick
scoreboard objectives remove TimeOfPvPStart
scoreboard objectives remove TimeOfWaitPhase
scoreboard objectives remove TimeOfFallPhase
scoreboard objectives remove TimeOfDropCarePackage
scoreboard objectives remove TimeLimit
scoreboard objectives remove GetBonusTime
#### プレイヤー
scoreboard objectives remove PlayerNumber
scoreboard objectives remove NumberOfPlayers
scoreboard objectives remove NumberOfPlayersTmp
scoreboard objectives remove PlayerNumberSkip
scoreboard objectives remove MaxNumberOfPlayers
scoreboard objectives remove NumberOfLiving
scoreboard objectives remove NumberOfDead
#### チーム戦
scoreboard objectives remove IsTeam
#### 接地判定
scoreboard objectives remove OnGround
#### アクションバー
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove TmpX
scoreboard objectives remove TmpY
scoreboard objectives remove TmpZ
scoreboard objectives remove 450
scoreboard objectives remove Angle
#### 疑似乱数生成器
scoreboard objectives remove RandomizerSeed
scoreboard objectives remove RandomizerCount
scoreboard objectives remove RandomizerResult
scoreboard objectives remove RandomizerModder
scoreboard objectives remove RandomizerMultiplier
#### 設定フェーズ - 初期時間
scoreboard objectives remove InitialTime
#### 設定フェーズ - 追加時間
scoreboard objectives remove BonusTimeOfAdvancements
#### 設定フェーズ - 支援物資間隔
scoreboard objectives remove CarePackageInterval
#### 設定フェーズ - ワールド範囲
scoreboard objectives remove WorldBorder
scoreboard objectives remove ExistsTheEndInWorldBorder
#### 設定フェーズ - その他ルール
scoreboard objectives remove Difficulty
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove NumberOfCarePackages
scoreboard objectives remove BonusTimeOfKill
#### 設定フェーズ - チーム戦ルール その1
scoreboard objectives remove NumberOfTeams
scoreboard objectives remove SetTeamManual
scoreboard objectives remove DeathPenaltyTime
#### 設定フェーズ - チーム戦ルール その2
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove nametagVisibility
scoreboard objectives remove seeFriendlyInvisibles
scoreboard objectives remove deathMessageVisibility
#### 設定フェーズ - チーム編成設定
scoreboard objectives remove ReloadDisplay
scoreboard objectives remove PlayerHeadNumber
scoreboard objectives remove NotExistsTeamMember
#### 進捗
scoreboard objectives remove HasAdvancements
#### 進捗用 - オリジナル進捗
scoreboard objectives remove BreakSpawner
#### 進捗用 - 実績進捗
scoreboard objectives remove FallDistance
scoreboard objectives remove RailDistance
#### 支援物資
scoreboard objectives remove GetCarePackageCount
scoreboard objectives remove UnsetLootTable
#### 支援物資用 - 発信機
scoreboard objectives remove UseTransmitter
#### 支援物資用 - 緊急招集
scoreboard objectives remove UseEmergencyCall
#### 支援物資用 - 防具アップグレード
scoreboard objectives remove UseArmorUpgrader
#### 支援物資用 - ツールアップグレード
scoreboard objectives remove UseToolUpgrader
#### 支援物資用 - 緊急招集
scoreboard objectives remove UseNoticeOfThief
scoreboard objectives remove NumberOfItemCandidates
#### 支援物資用 - ウォーデンの牙の杖
scoreboard objectives remove UseFungusStick
scoreboard objectives remove NumberOfSonicBooms
scoreboard objectives remove SonicBoomCount
#### 支援物資用 - メイズメイカー
scoreboard objectives remove UseMazeMaker
scoreboard objectives remove RandomMax
scoreboard objectives remove RandomAngle
scoreboard objectives remove MazeNumber
scoreboard objectives remove MazeNumberTmp
scoreboard objectives remove MazePosX
scoreboard objectives remove MazePosZ
scoreboard objectives remove DeadEnd
scoreboard objectives remove HasExit
#### 支援物資用 - どっか行け矢
scoreboard objectives remove ArrowTeleportTick
scoreboard objectives remove ArrowTeleportPosX
scoreboard objectives remove ArrowTeleportPosY
scoreboard objectives remove ArrowTeleportPosZ
#### リスポーンバナー
scoreboard objectives remove AttackerNumber
scoreboard objectives remove AttackedSecond
scoreboard objectives remove AttackedTick
#### リスポーンビーコン
scoreboard objectives remove BeaconNumber
scoreboard objectives remove CompareNames
scoreboard objectives remove ExistsTeam
scoreboard objectives remove BeaconTmp

## プレイヤーのスコアボードをリセット
scoreboard players reset @e
scoreboard players reset *
