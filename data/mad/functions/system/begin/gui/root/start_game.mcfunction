#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Individual match
execute if predicate mad:gamerules/match_mode/individual run function mad:system/wait/change_to

## Team match
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/team_member/random run function mad:system/begin/team_member/set_member_randomly
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/team_member/manual run function mad:system/begin/team_member/change_to