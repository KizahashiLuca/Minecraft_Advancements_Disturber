#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
execute store result score #mad RandomizerResult run function mad:system/game/care_package/explode/give_time/get_random_value
$scoreboard players operation #mad_team_$(team) Second += #mad RandomizerResult
$scoreboard players operation #mad_team_$(team) TimeLimit += #mad RandomizerResult
$scoreboard players add #mad_team_$(team) GetCarePackageCount 1

## メッセージ表示
$function mad:message/game/care_package/give_time/team with storage mad: team.$(team)

## 進捗付与
advancement grant @s only mad:original/open_care_package