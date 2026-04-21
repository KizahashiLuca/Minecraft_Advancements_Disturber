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
scoreboard players set @a[predicate=mad:player/] Phase 61
scoreboard players set #mad_team_a Phase 61
scoreboard players set #mad_team_b Phase 61
scoreboard players set #mad_team_c Phase 61
scoreboard players set #mad_team_d Phase 61
#### 死亡数 - 死亡判定用
scoreboard players set @a[predicate=mad:player/] NumberOfDeaths 0
#### キル数 - 統計用
scoreboard players set @a[predicate=mad:player/] NumberOfKills 0
#### 死亡からの経過時間 - リスポーン場所選定用
# scoreboard players set @a[predicate=mad:player/] TimeSinceDeath 0
#### テレポート用トリガー
scoreboard players set @a TeleportTrigger 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportTrigger
#### ゲーム終了用トリガー
scoreboard players set @a[predicate=mad:player/host] ExitTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExitTrigger
#### タイマー
scoreboard players set #mad Second 2147483647
#### タイマー - 残り時間(秒数)
execute store result score #mad_team_a Second run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_b Second run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_c Second run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_d Second run \
  data get storage mad: rules.initial_time 1
execute store result score @a[predicate=mad:player/] Second run \
  data get storage mad: rules.initial_time 1
#### タイマー - 残り時間(ティック数)
scoreboard players set #mad Tick 0
scoreboard players set #mad_team_a Tick 0
scoreboard players set #mad_team_b Tick 0
scoreboard players set #mad_team_c Tick 0
scoreboard players set #mad_team_d Tick 0
scoreboard players set @a[predicate=mad:player/] Tick 0
#### タイマー - 経過秒数(離脱確認用)
scoreboard players set @a[predicate=mad:player/] GeneralSecond 2147483647
#### タイマー - 制限時間(秒数)
execute store result score #mad_team_a TimeLimit run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_b TimeLimit run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_c TimeLimit run \
  data get storage mad: rules.initial_time 1
execute store result score #mad_team_d TimeLimit run \
  data get storage mad: rules.initial_time 1
execute store result score @a[predicate=mad:player/] TimeLimit run \
  data get storage mad: rules.initial_time 1
#### タイマー - 支援物資投下時間
execute store result score #mad_care_package_1 Second run \
  data get storage mad: rules.care_package_interval 1
execute store result score #mad_care_package_2 Second run \
  data get storage mad: rules.care_package_interval 1
execute store result score #mad_care_package_3 Second run \
  data get storage mad: rules.care_package_interval 1
execute store result score #mad_care_package_4 Second run \
  data get storage mad: rules.care_package_interval 1
execute store result score #mad_care_package_5 Second run \
  data get storage mad: rules.care_package_interval 1
#### ボーナス総獲得時間 - 統計用
scoreboard players set #mad_team_a GetBonusTime 0
scoreboard players set #mad_team_b GetBonusTime 0
scoreboard players set #mad_team_c GetBonusTime 0
scoreboard players set #mad_team_d GetBonusTime 0
scoreboard players set @a[predicate=mad:player/] GetBonusTime 0
#### 撃破ボーナス
execute store result score #mad BonusTimeOfKill run \
  data get storage mad: rules.bonus_time_of_kill 1
#### 進捗ボーナス
execute store result score #mad BonusTimeOfAdvancements run \
  data get storage mad: rules.bonus_time_of_advancements 1
#### 残り生存者数 - 勝敗判定用
scoreboard players set #mad NumberOfLiving 0
scoreboard players set #mad_team_a NumberOfLiving 0
scoreboard players set #mad_team_b NumberOfLiving 0
scoreboard players set #mad_team_c NumberOfLiving 0
scoreboard players set #mad_team_d NumberOfLiving 0
#### 死亡者数 - 勝敗判定用
scoreboard players set #mad NumberOfDead 0
scoreboard players set #mad_team_a NumberOfDead 0
scoreboard players set #mad_team_b NumberOfDead 0
scoreboard players set #mad_team_c NumberOfDead 0
scoreboard players set #mad_team_d NumberOfDead 0
#### 進捗数 - 統計用
scoreboard players set #mad_team_a HasAdvancements 0
scoreboard players set #mad_team_b HasAdvancements 0
scoreboard players set #mad_team_c HasAdvancements 0
scoreboard players set #mad_team_d HasAdvancements 0
scoreboard players set @a[predicate=mad:player/] HasAdvancements 0
#### 進捗 - オリジナル進捗用
scoreboard players set @a[predicate=mad:player/] BreakSpawner 0
#### 進捗 - 実績進捗用
scoreboard players set @a[predicate=mad:player/] FallDistance 0
scoreboard players set @a[predicate=mad:player/] RailDistance 0
#### 支援物資総獲得数 - 統計用
scoreboard players set #mad_team_a GetCarePackageCount 0
scoreboard players set #mad_team_b GetCarePackageCount 0
scoreboard players set #mad_team_c GetCarePackageCount 0
scoreboard players set #mad_team_d GetCarePackageCount 0
scoreboard players set @a[predicate=mad:player/] GetCarePackageCount 0
#### 支援物資用 - 発信機用
scoreboard players set @a[predicate=mad:player/] UseTransmitter 0
#### 支援物資用 - 緊急招集用
scoreboard players set @a[predicate=mad:player/] UseEmergencyCall 0
#### 支援物資用 - 防具アップグレード用
scoreboard players set @a[predicate=mad:player/] UseArmorUpgrader 0
#### 支援物資用 - ツールアップグレード用
scoreboard players set @a[predicate=mad:player/] UseToolUpgrader 0
#### 支援物資用 - 緊急招集用
scoreboard players set @a[predicate=mad:player/] UseNoticeOfThief 0
scoreboard players set @a[predicate=mad:player/] NumberOfItemCandidates 0
#### 支援物資用 - ウォーデンの牙の杖用
scoreboard players set @a[predicate=mad:player/] UseFungusStick 0
scoreboard players set #mad NumberOfSonicBooms 0
#### 支援物資用 - メイズメイカー用
scoreboard players set @a[predicate=mad:player/] UseMazeMaker 0
scoreboard players set #mad MazeNumber 1
#### 支援物資用 - どっか行け矢用
scoreboard players set @a[predicate=mad:player/] ArrowTeleportTick 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosX 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosY 0
scoreboard players set @a[predicate=mad:player/] ArrowTeleportPosZ 0
#### リスポーンバナー用
scoreboard players set @a[predicate=mad:player/] AttackerNumber 0
scoreboard players set @a[predicate=mad:player/] AttackedSecond 0
scoreboard players set @a[predicate=mad:player/] AttackedTick 0
