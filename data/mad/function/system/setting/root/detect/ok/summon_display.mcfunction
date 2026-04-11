#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ディスプレイ召喚
#### 共通
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_member/manual/display/
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/wait/display/initial
#### チーム戦 - ランダム
execute if predicate mad:gamerule/team_rules/1/set_team_manual/false at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/wait/display/initial
