#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー
#### 個人戦用チーム
team modify mad_player color white
team modify mad_player friendlyFire true
team modify mad_player collisionRule always
team modify mad_player nametagVisibility never
team modify mad_player seeFriendlyInvisibles false
team modify mad_player deathMessageVisibility never
#### チーム戦用チーム
function mad:system/wait/initialize/teams/each_team \
  with storage mad: team.a
function mad:system/wait/initialize/teams/each_team \
  with storage mad: team.b
function mad:system/wait/initialize/teams/each_team \
  with storage mad: team.c
function mad:system/wait/initialize/teams/each_team \
  with storage mad: team.d

## チームルール
function mad:system/wait/initialize/teams/team_rules \
  with storage mad: rules
