#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Random member set
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run team join TeamA @p[predicate=mad:player/team/no,sort=random]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run team join TeamB @p[predicate=mad:player/team/no,sort=random]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run team join TeamC @p[predicate=mad:player/team/no,sort=random]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run team join TeamD @p[predicate=mad:player/team/no,sort=random]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run team join TeamE @p[predicate=mad:player/team/no,sort=random]

execute unless entity @p[predicate=mad:player/team/no] run function mad:system/wait/change_to
execute if entity @p[predicate=mad:player/team/no] run function mad:system/begin/team_member/set_member_randomly