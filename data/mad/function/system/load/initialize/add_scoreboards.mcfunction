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
scoreboard objectives add SnapshotVersion dummy ['',{text:'スナップショット'}]
scoreboard objectives add PreReleaseVersion dummy ['',{text:'プレリリース'}]
scoreboard objectives add ReleaseCandidateVersion dummy ['',{text:'リリース候補'}]
scoreboard objectives add ReleaseVersion dummy ['',{text:'リリース'}]
#### プレイヤー
scoreboard objectives add NumberOfPlayers dummy ['',{text:'プレイヤー数'}]