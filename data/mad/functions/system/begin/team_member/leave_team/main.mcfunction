#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Leave from team
execute if predicate mad:gamerules/team_match/number_of_teams/1p as @a[predicate=mad:system/begin/team_member/leave_team/1p] run function mad:system/begin/team_member/leave_team/sub
execute if predicate mad:gamerules/team_match/number_of_teams/2p as @a[predicate=mad:system/begin/team_member/leave_team/2p] run function mad:system/begin/team_member/leave_team/sub
execute if predicate mad:gamerules/team_match/number_of_teams/3p as @a[predicate=mad:system/begin/team_member/leave_team/3p] run function mad:system/begin/team_member/leave_team/sub
execute if predicate mad:gamerules/team_match/number_of_teams/4p as @a[predicate=mad:system/begin/team_member/leave_team/4p] run function mad:system/begin/team_member/leave_team/sub
execute if predicate mad:gamerules/team_match/number_of_teams/5p as @a[predicate=mad:system/begin/team_member/leave_team/5p] run function mad:system/begin/team_member/leave_team/sub