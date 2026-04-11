#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数用スコアボードリセット
scoreboard players set #mad_player NumberOfPlayers 0
scoreboard players set #mad_team_a NumberOfPlayers 0
scoreboard players set #mad_team_b NumberOfPlayers 0
scoreboard players set #mad_team_c NumberOfPlayers 0
scoreboard players set #mad_team_d NumberOfPlayers 0
scoreboard players set #mad_indie_player NumberOfPlayers 0

## プレイヤー計数用スコアボードにプレイヤー分カウント
execute as @a[predicate=mad:player/] run \
  function mad:system/common/count_players/count
