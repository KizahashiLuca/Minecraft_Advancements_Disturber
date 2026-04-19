#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### 死亡フェーズ
$function mad:phase/dead/ with storage mad: team.$(team)
#### タイマー - 残り時間(秒数)
$scoreboard players set #mad_team_$(team) Second 0
#### タイマー - 残り時間(ティック数)
$scoreboard players set #mad_team_$(team) Tick 0
#### 死亡プレイヤー(死亡チーム)数を加算
scoreboard players add #mad NumberOfDead 1
