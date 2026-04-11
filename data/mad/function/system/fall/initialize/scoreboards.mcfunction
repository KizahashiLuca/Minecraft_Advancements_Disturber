#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードを設定
#### ゲームフェーズ
scoreboard players set @a[predicate=mad:player/] Phase 0
scoreboard players set @a[predicate=mad:player/] NumOfDeaths 0
scoreboard players set @a[predicate=mad:player/] NumberOfKills 0
scoreboard players set @a[predicate=mad:player/] TimeSinceDeath 0
scoreboard players set @a TeleportToCarePackage 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportToCarePackage
scoreboard players set @a TeleportToWorldCenter 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportToWorldCenter
scoreboard players set @a[predicate=mad:player/host] ExitTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExitTrigger
#### タイマー
scoreboard players operation #mad Second = #mad TimeOfFallPhase
scoreboard players operation #mad_team_a Second = #mad InitialTime
scoreboard players operation #mad_team_b Second = #mad InitialTime
scoreboard players operation #mad_team_c Second = #mad InitialTime
scoreboard players operation #mad_team_d Second = #mad InitialTime
scoreboard players operation #mad_care_package_1 Second = #mad CarePackageInterval
scoreboard players operation #mad_care_package_2 Second = #mad CarePackageInterval
scoreboard players operation #mad_care_package_3 Second = #mad CarePackageInterval
scoreboard players operation #mad_care_package_4 Second = #mad CarePackageInterval
scoreboard players operation #mad_care_package_5 Second = #mad CarePackageInterval
scoreboard players operation @a[predicate=mad:player/] Second = #mad InitialTime
scoreboard players set #mad Tick 0
scoreboard players set #mad_team_a Tick 0
scoreboard players set #mad_team_b Tick 0
scoreboard players set #mad_team_c Tick 0
scoreboard players set #mad_team_d Tick 0
scoreboard players set @a[predicate=mad:player/] Tick 0
scoreboard players operation #mad_team_a TimeLimit = #mad InitialTime
scoreboard players operation #mad_team_b TimeLimit = #mad InitialTime
scoreboard players operation #mad_team_c TimeLimit = #mad InitialTime
scoreboard players operation #mad_team_d TimeLimit = #mad InitialTime
scoreboard players operation @a[predicate=mad:player/] TimeLimit = #mad InitialTime
scoreboard players set #mad_team_a GetBonusTime 0
scoreboard players set #mad_team_b GetBonusTime 0
scoreboard players set #mad_team_c GetBonusTime 0
scoreboard players set #mad_team_d GetBonusTime 0
scoreboard players set @a[predicate=mad:player/] GetBonusTime 0
#### プレイヤー
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
#### 設定フェーズ - チーム編成設定
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