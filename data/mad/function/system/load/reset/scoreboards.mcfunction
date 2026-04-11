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
scoreboard objectives remove SnapshotVersion
scoreboard objectives remove PreReleaseVersion
scoreboard objectives remove ReleaseCandidateVersion
scoreboard objectives remove ReleaseVersion
#### プレイヤー
scoreboard objectives remove NumberOfPlayers

## プレイヤーのスコアボードをリセット
scoreboard players reset @e
scoreboard players reset *