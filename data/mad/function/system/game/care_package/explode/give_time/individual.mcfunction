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
execute store result score #mad RandomizerResult run function mad:system/game/care_package/explode/give_time/get_random_value
scoreboard players operation @s Second += #mad RandomizerResult
scoreboard players operation @s TimeLimit += #mad RandomizerResult
scoreboard players add @s GetCarePackageCount 1

## メッセージ表示
function mad:message/game/care_package/give_time/individual

## 進捗付与
advancement grant @s only mad:original/open_care_package