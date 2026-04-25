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
scoreboard objectives add DataVersion dummy ['', {translate: 'データバージョン'}]
scoreboard objectives add MajorVersion dummy ['', {translate: 'メジャーバージョン'}]
scoreboard objectives add MinorVersion dummy ['', {translate: 'マイナーバージョン'}]
scoreboard objectives add PatchVersion dummy ['', {translate: 'パッチバージョン'}]
#### プレイヤー
scoreboard objectives add NumberOfPlayers dummy ['', {translate: 'プレイヤー数'}]
#### ゲームトリガー
scoreboard objectives add SpectatorTrigger trigger ['', {translate: 'トリガー - スペクテイター'}]
scoreboard objectives add ExecuteTrigger trigger ['', {translate: 'トリガー - ゲーム制御'}]
