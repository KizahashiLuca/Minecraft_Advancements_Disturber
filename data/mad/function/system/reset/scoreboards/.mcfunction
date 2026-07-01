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
scoreboard objectives remove 20
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
#### 撃破ボーナス
scoreboard objectives remove BonusTimeOfKill
#### 進捗ボーナス
scoreboard objectives remove BonusTimeOfAdvancements
#### プレイヤー
scoreboard objectives remove PlayerNumber
scoreboard objectives remove NumberOfPlayers
scoreboard objectives remove NumberOfPlayersTmp
scoreboard objectives remove PlayerNumberSkip
scoreboard objectives remove NumberOfLiving
scoreboard objectives remove NumberOfDead
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
#### チーム数 - 勝敗判定用
scoreboard objectives remove NumberOfTeams
#### 死亡ペナルティ - 制限時間減算用
scoreboard objectives remove DeathPenaltyTime
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
scoreboard objectives remove RandomValue
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
#### リスポーンバナー用
scoreboard objectives remove PlayerUUID0
scoreboard objectives remove PlayerUUID1
scoreboard objectives remove PlayerUUID2
scoreboard objectives remove PlayerUUID3
scoreboard objectives remove LastHurtByPlayerNumber
scoreboard objectives remove LastHurtByPlayerUUID0
scoreboard objectives remove LastHurtByPlayerUUID1
scoreboard objectives remove LastHurtByPlayerUUID2
scoreboard objectives remove LastHurtByPlayerUUID3
scoreboard objectives remove LastHurtByPlayerMemoryTime

## プレイヤーのスコアボードをリセット
scoreboard players reset @e
scoreboard players reset *
