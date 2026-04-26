#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### ゲームフェーズ
scoreboard players set #mad DataVersion 0
scoreboard players set #mad MajorVersion 0
scoreboard players set #mad MinorVersion 0
scoreboard players set #mad PatchVersion 0
scoreboard players set #mad Phase 1
scoreboard players set @a[predicate=mad:player/] Phase 0
scoreboard players set #mad PvP 0
scoreboard players set @a[predicate=mad:player/] NumberOfDeaths 0
scoreboard players set @a[predicate=mad:player/] NumberOfKills 0
scoreboard players set @a[predicate=mad:player/] TimeSinceDeath 0
scoreboard players set @a SpectatorTrigger 0
scoreboard players enable @a SpectatorTrigger
scoreboard players set @a[predicate=mad:player/host] ExecuteTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExecuteTrigger
scoreboard players set @a SetTeamTrigger 0
scoreboard players enable @a SetTeamTrigger
scoreboard players set @a TeleportTrigger 0
scoreboard players enable @a TeleportTrigger
scoreboard players set #mad ExitTrigger 0
scoreboard players set @a[predicate=mad:player/host] ExitTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExitTrigger
#### タイマー
scoreboard players set #mad 20 20
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
#### 撃破ボーナス
scoreboard players set #mad BonusTimeOfKill 200
#### 進捗ボーナス
scoreboard players set #mad BonusTimeOfAdvancements 100
#### プレイヤー
scoreboard players set #mad PlayerNumber 0
scoreboard players set @a[predicate=mad:player/] PlayerNumber 0
scoreboard players set #mad_player NumberOfPlayers 0
scoreboard players set #mad_team_a NumberOfPlayers 0
scoreboard players set #mad_team_b NumberOfPlayers 0
scoreboard players set #mad_team_c NumberOfPlayers 0
scoreboard players set #mad_team_d NumberOfPlayers 0
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
#### 範囲内にエンド大陸が存在するか - 支援物資「エンドポータルフレーム」判定用
scoreboard players set #mad ExistsTheEndInWorldBorder 0
#### チーム数 - 勝敗判定用
scoreboard players set #mad NumberOfTeams 2
#### 死亡ペナルティ - 制限時間減算用
scoreboard players set #mad DeathPenaltyTime 0
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
#### リスポーンバナー
scoreboard players set @a[predicate=mad:player/] AttackerNumber 0
