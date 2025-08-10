#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
$bossbar set minecraft:mad_team_$(team) max 100
$bossbar set minecraft:mad_team_$(team) value 100
$bossbar set minecraft:mad_team_$(team) players @a[predicate=mad:player/team/$(team)]