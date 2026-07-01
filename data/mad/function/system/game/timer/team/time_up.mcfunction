#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
$function mad:message/game/time_up/team \
  with storage mad: team.$(team)

## 生存者のキル
$kill @a[predicate=mad:player/alive/$(team)]
$gamemode spectator @a[predicate=mad:player/team/$(team)]

## スコアボード設定
#### ゲームフェーズ
$execute as @a[predicate=mad:player/team/$(team)] run \
  function mad:phase/dead/player
#### 死亡数 - 死亡判定用
$scoreboard players set @a[predicate=mad:player/team/$(team)] NumberOfDeaths 2
#### タイマー - 残り時間(秒数)
$scoreboard players set #mad_team_$(team) Second 0
