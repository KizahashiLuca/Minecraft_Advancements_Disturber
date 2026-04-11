#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール - 詳細設定用
#### 1人
execute if predicate mad:gamerule/num_of_players/solo run \
  data modify storage mad: rules merge value \
    {\
      IsTeam: 0,\
      CarePackageInterval: 100,\
      WorldBorder: 1000,\
      NumberOfTeams: 0,\
    }
#### 複数人
execute if predicate mad:gamerule/num_of_players/not_solo run \
  data modify storage mad: rules merge value \
    {\
      IsTeam: 1,\
      CarePackageInterval: 300,\
      WorldBorder: 1500,\
      NumberOfTeams: 2,\
    }
