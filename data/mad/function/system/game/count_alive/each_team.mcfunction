#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スペクテイターモードへ変更
$execute as @a[predicate=mad:player/dead/$(team)] at @s run function mad:system/game/count_alive/spectate with storage mad: team.$(team)

## チーム終了を検出
$execute unless entity @p[predicate=mad:player/alive/$(team)] unless entity @p[predicate=mad:player/dying/$(team)] if score #mad_team_$(team) Phase matches 61 run function mad:system/game/count_alive/set_end with storage mad: team.$(team)