#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Join to team
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 positioned ~4.5 ~ ~4.5 as @a[predicate=mad:player/team/no,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/a
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 positioned ~-9.5 ~ ~-9.5 as @a[predicate=mad:player/team/no,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/b
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 positioned ~4.5 ~ ~-9.5 as @a[predicate=mad:player/team/no,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/c
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 positioned ~-9.5 ~ ~4.5 as @a[predicate=mad:player/team/no,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/d
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 positioned ~4.5 ~ ~-2.5 as @a[predicate=mad:player/team/no,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/e