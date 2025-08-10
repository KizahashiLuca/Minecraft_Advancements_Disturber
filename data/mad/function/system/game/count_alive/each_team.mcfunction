#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スペクテイターモードへ変更
$execute as @a[predicate=mad:player/dead/$(team)] at @s run function mad:system/game/count_alive/spectate with storage mad: team.$(team)

## チーム終了を検出
$execute unless entity @p[predicate=mad:player/alive/$(team)] if score #mad_team_$(team) Phase matches 61 run function mad:system/game/count_alive/set_end with storage mad: team.$(team)