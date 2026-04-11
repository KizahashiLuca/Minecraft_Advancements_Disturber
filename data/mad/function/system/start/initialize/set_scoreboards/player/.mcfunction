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
scoreboard players set @s Phase 0
scoreboard players set @s NumOfDeaths 0
scoreboard players set @s NumberOfKills 0
scoreboard players set @s TimeSinceDeath 0
scoreboard players set @s TeleportToCarePackage 0
scoreboard players enable @s TeleportToCarePackage
scoreboard players set @s TeleportToWorldCenter 0
scoreboard players enable @s TeleportToWorldCenter
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
#### 支援物資用 - ウォーデンの牙の杖
scoreboard players set @s UseFungusStick 0
#### 支援物資用 - メイズメイカー
scoreboard players set @s UseMazeMaker 0
#### 支援物資用 - どっか行け矢(仮)
scoreboard players set @s ArrowTeleportTick 0
scoreboard players set @s ArrowTeleportPosX 0
scoreboard players set @s ArrowTeleportPosY 0
scoreboard players set @s ArrowTeleportPosZ 0
#### リスポーンバナー
scoreboard players set @s AttackerNumber 0
scoreboard players set @s AttackedSecond 0
scoreboard players set @s AttackedTick 0
#### リスポーンビーコン
scoreboard players set @s BeaconTmp 0