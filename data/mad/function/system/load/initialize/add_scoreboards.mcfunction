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
scoreboard objectives add DataVersion dummy ['', {text: 'データバージョン'}]
scoreboard objectives add MajorVersion dummy ['', {text: 'メジャーバージョン'}]
scoreboard objectives add MinorVersion dummy ['', {text: 'マイナーバージョン'}]
scoreboard objectives add PatchVersion dummy ['', {text: 'パッチバージョン'}]
#### プレイヤー
scoreboard objectives add NumberOfPlayers dummy ['', {text: 'プレイヤー数'}]
#### ゲームトリガー
scoreboard objectives add SpectatorTrigger trigger ['', {text: 'トリガー - スペクテイター'}]
scoreboard objectives add ExecuteTrigger trigger ['', {text: 'トリガー - ゲーム制御'}]
