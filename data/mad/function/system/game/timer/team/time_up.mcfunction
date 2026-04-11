#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
$function mad:message/game/time_up/team with storage mad: team.$(team)

## 生存者のキル
$kill @a[predicate=mad:player/alive/$(team)]
$gamemode spectator @a[predicate=mad:player/alive/$(team)]

## スコアボード設定
$scoreboard players set @a[predicate=mad:player/team/$(team)] NumOfDeaths 2
$scoreboard players set @a[predicate=mad:player/team/$(team)] Phase 81
$scoreboard players set #mad_team_$(team) Second 0