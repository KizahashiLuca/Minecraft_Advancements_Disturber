#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Individual match
execute if predicate mad:gamerules/match_mode/individual run function mad:system/pre_preparation/change_to

## Team match
execute if predicate mad:gamerules/match_mode/team run tag @a[predicate=mad:player/participant] add NotSetTeam
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/team_member/random run function mad:system/begin/team_member/random_member_set
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/team_member/manual run function mad:system/begin/team_member/change_to