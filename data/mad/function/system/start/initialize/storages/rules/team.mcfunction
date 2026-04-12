#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール - チーム戦
data modify storage mad: rules merge value \
  {\
    is_team: 1,\
    care_package_interval: 300,\
    world_border: 1500,\
    number_of_teams: 2,\
  }
