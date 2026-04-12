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
scoreboard players set @a[predicate=mad:player/] NumberOfDeaths 0
scoreboard players set @a[predicate=mad:player/] NumberOfKills 0
# scoreboard players set @a[predicate=mad:player/] TimeSinceDeath 0
#### テレポート用トリガー
scoreboard players set @a TeleportTrigger 0
scoreboard players enable @a[predicate=mad:player/spectator] TeleportTrigger
scoreboard players set @a[predicate=mad:player/host] ExitTrigger 0
scoreboard players enable @a[predicate=mad:player/host] ExitTrigger
###### サイドバー - 全員用
scoreboard objectives modify Sidebar displayname ['',{text:'支援物資 投下情報'}]
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank
scoreboard objectives modify Sidebar displayautoupdate true
###### サイドバー - 赤チーム用
scoreboard objectives modify SidebarA displayname ['',{text:'情報'}]
scoreboard objectives setdisplay sidebar.team.red SidebarA
scoreboard objectives modify SidebarA numberformat blank
scoreboard objectives modify SidebarA displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarA 2147483647
scoreboard players display name 【支援物資情報】 SidebarA [{text:'【支援物資情報】',bold:true}]
###### サイドバー - 青チーム用
scoreboard objectives modify SidebarB displayname ['',{text:'情報'}]
scoreboard objectives setdisplay sidebar.team.blue SidebarB
scoreboard objectives modify SidebarB numberformat blank
scoreboard objectives modify SidebarB displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarB 2147483647
scoreboard players display name 【支援物資情報】 SidebarB [{text:'【支援物資情報】',bold:true}]
###### サイドバー - 黄チーム用
scoreboard objectives modify SidebarC displayname ['',{text:'情報'}]
scoreboard objectives setdisplay sidebar.team.yellow SidebarC
scoreboard objectives modify SidebarC numberformat blank
scoreboard objectives modify SidebarC displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarC 2147483647
scoreboard players display name 【支援物資情報】 SidebarC [{text:'【支援物資情報】',bold:true}]
###### サイドバー - 緑チーム用
scoreboard objectives modify SidebarD displayname ['',{text:'情報'}]
scoreboard objectives setdisplay sidebar.team.green SidebarD
scoreboard objectives modify SidebarD numberformat blank
scoreboard objectives modify SidebarD displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarD 2147483647
scoreboard players display name 【支援物資情報】 SidebarD [{text:'【支援物資情報】',bold:true}]
###### サイドバー - 支援物資情報
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run function mad:message/game/care_package/initialize/sidebar {number:'1',score1:'100010',score2:'100009'}
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run function mad:message/game/care_package/initialize/sidebar {number:'2',score1:'100008',score2:'100007'}
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run function mad:message/game/care_package/initialize/sidebar {number:'3',score1:'100006',score2:'100005'}
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run function mad:message/game/care_package/initialize/sidebar {number:'4',score1:'100004',score2:'100003'}
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run function mad:message/game/care_package/initialize/sidebar {number:'5',score1:'100002',score2:'100001'}
###### サイドバー - リスポーンバナー情報
scoreboard players set #mad_team_a SidebarA -10
scoreboard players set #mad_team_b SidebarB -10
scoreboard players set #mad_team_c SidebarC -10
scoreboard players set #mad_team_d SidebarD -10
#### タイマー
scoreboard players set #mad Second 2147483647
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