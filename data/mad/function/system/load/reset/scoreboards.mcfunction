#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード削除
#### ゲームフェーズ
scoreboard objectives remove DataVersion
scoreboard objectives remove MajorVersion
scoreboard objectives remove MinorVersion
scoreboard objectives remove SnapshotVersion
scoreboard objectives remove PreReleaseVersion
scoreboard objectives remove ReleaseCandidateVersion
scoreboard objectives remove ReleaseVersion
#### プレイヤー
scoreboard objectives remove NumberOfPlayers

## プレイヤーのスコアボードをリセット
scoreboard players reset @e
scoreboard players reset *