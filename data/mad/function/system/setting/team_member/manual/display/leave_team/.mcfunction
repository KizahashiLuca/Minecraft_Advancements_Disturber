#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム数変更時に無いチームは解体
execute if predicate mad:gamerule/team_rules/1/number_of_teams/change_number_of_teams run function mad:system/setting/team_member/manual/display/leave_team/change_number_of_teams/

## チーム数変更時にチームメンバー上限を超過していた場合メンバーを離脱
execute if predicate mad:gamerule/team_rules/1/number_of_teams/change_max_number_in_team run function mad:system/setting/team_member/manual/display/leave_team/change_max_number_in_team/