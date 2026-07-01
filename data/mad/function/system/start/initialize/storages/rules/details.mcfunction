#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームルール - 詳細設定用
#### 1人
execute if predicate mad:gamerule/num_of_players/solo run \
  data modify storage mad: rules \
    merge value \
    {\
      is_team: 0,\
      care_package_interval: 100,\
      world_border: 1000,\
      number_of_teams: 0,\
    }
#### 複数人
execute if predicate mad:gamerule/num_of_players/not_solo run \
  data modify storage mad: rules \
    merge value \
    {\
      is_team: 1,\
      care_package_interval: 300,\
      world_border: 1500,\
      number_of_teams: 2,\
    }
