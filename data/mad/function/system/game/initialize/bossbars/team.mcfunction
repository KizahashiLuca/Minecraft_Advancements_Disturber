#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
$bossbar set minecraft:mad_team_$(team) max 100
$bossbar set minecraft:mad_team_$(team) value 100
$bossbar set minecraft:mad_team_$(team) players @a[predicate=mad:player/team/$(team)]
