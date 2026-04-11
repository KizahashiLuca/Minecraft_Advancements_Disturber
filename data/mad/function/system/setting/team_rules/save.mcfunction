#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードのリセット
function mad:system/setting/scoreboards

## 設定値保存
$data modify storage mad: rules merge value \
  {\
    SetTeamManual: $(SetTeamManual),\
    NumberOfTeams: $(NumberOfTeams),\
    DeathPenaltyTime: $(DeathPenaltyTime),\
    friendlyFire: $(friendlyFire),\
    collisionRule: $(collisionRule),\
    nametagVisibility: $(nametagVisibility),\
    seeFriendlyInvisibles: $(seeFriendlyInvisibles),\
    deathMessageVisibility: $(deathMessageVisibility),\
  }

## ルートダイアログ表示
function mad:dialog/system/setting/root
