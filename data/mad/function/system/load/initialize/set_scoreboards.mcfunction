#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### ゲームフェーズ
scoreboard players set #mad DataVersion 0
scoreboard players set #mad MajorVersion 0
scoreboard players set #mad MinorVersion 0
scoreboard players set #mad PatchVersion 0
#### プレイヤー
scoreboard players set #mad_player NumberOfPlayers 0
scoreboard players set #mad_team_a NumberOfPlayers 0
scoreboard players set #mad_team_b NumberOfPlayers 0
scoreboard players set #mad_team_c NumberOfPlayers 0
scoreboard players set #mad_team_d NumberOfPlayers 0
scoreboard players set #mad_indie_player NumberOfPlayers 0
#### ゲームトリガー
scoreboard players enable @a SpectatorTrigger
scoreboard players set @a SpectatorTrigger 0
scoreboard players enable @a ExecuteTrigger
scoreboard players set @a ExecuteTrigger 0
