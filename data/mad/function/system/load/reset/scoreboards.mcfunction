#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード削除
#### ゲームフェーズ
scoreboard objectives remove DataVersion
scoreboard objectives remove MajorVersion
scoreboard objectives remove MinorVersion
scoreboard objectives remove PatchVersion
#### プレイヤー
scoreboard objectives remove NumberOfPlayers

## プレイヤーのスコアボードをリセット
scoreboard players reset @e
scoreboard players reset *

## スコアボード再設定
#### ゲームトリガー
scoreboard players enable @a SpectatorTrigger
scoreboard players set @a SpectatorTrigger 0
scoreboard players enable @a ExecuteTrigger
scoreboard players set @a ExecuteTrigger 0
