#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードを設定
#### ゲームフェーズ
scoreboard players set @s Phase 0
scoreboard players set @s NumberOfDeaths 0
scoreboard players set @s NumberOfKills 0
scoreboard players set @s TimeSinceDeath 0
scoreboard players set @s SpectatorTrigger 0
scoreboard players enable @s SpectatorTrigger
scoreboard players set @s ExecuteTrigger 0
scoreboard players enable @s ExecuteTrigger
scoreboard players set @s SetTeamTrigger 0
scoreboard players enable @s SetTeamTrigger
scoreboard players set @s TeleportTrigger 0
scoreboard players enable @s TeleportTrigger
#### タイマー
scoreboard players set @s Second 0
scoreboard players set @s Tick 0
scoreboard players set @s GeneralSecond 0
scoreboard players set @s GetBonusTime 0
#### プレイヤー
scoreboard players set @s PlayerNumber 0
#### 接地判定
scoreboard players set @s OnGround 0
#### 進捗
scoreboard players set @s HasAdvancements 0
#### 進捗用 - オリジナル進捗
scoreboard players set @s BreakSpawner 0
#### 進捗用 - 実績進捗
scoreboard players set @s FallDistance 0
scoreboard players set @s RailDistance 0
#### 支援物資
scoreboard players set @s GetCarePackageCount 0
#### 支援物資用 - 発信機
scoreboard players set @s UseTransmitter 0
#### 支援物資用 - 緊急招集
scoreboard players set @s UseEmergencyCall 0
#### 支援物資用 - 防具アップグレード
scoreboard players set @s UseArmorUpgrader 0
#### 支援物資用 - ツールアップグレード
scoreboard players set @s UseToolUpgrader 0
#### 支援物資用 - 緊急招集
scoreboard players set @s UseNoticeOfThief 0
scoreboard players set @s NumberOfItemCandidates 0
#### リスポーンバナー用
execute store result score @s PlayerUUID0 run \
  data get entity @s UUID[0]
execute store result score @s PlayerUUID1 run \
  data get entity @s UUID[1]
execute store result score @s PlayerUUID2 run \
  data get entity @s UUID[2]
execute store result score @s PlayerUUID3 run \
  data get entity @s UUID[3]
