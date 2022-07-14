#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/begin/team_member/login_midtime] run function mad:system/begin/team_member/login_midtime

## Set block
execute in mad:world unless block 0 1 0 minecraft:beacon run function mad:system/begin/team_member/set_world/set_block

## Effect
execute in mad:world run function mad:system/begin/team_member/effect/main

## Join to team
execute in mad:world run team leave @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 in mad:world positioned 5.0 1 5.0 as @a[predicate=mad:player/participant,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/a
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 in mad:world positioned -9.0 1 -9.0 as @a[predicate=mad:player/participant,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/b
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 in mad:world positioned 5.0 1 -9.0 as @a[predicate=mad:player/participant,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/c
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 in mad:world positioned -9.0 1 5.0 as @a[predicate=mad:player/participant,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/d
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 in mad:world positioned 5.0 1 -2.0 as @a[predicate=mad:player/participant,dx=4,dy=5,dz=4] run function mad:system/begin/team_member/join_team/e

## Title message
function mad:system/begin/team_member/title

## Detect inventory
execute as @p[predicate=mad:system/begin/team_member/master] run function mad:system/begin/team_member/change_to
execute as @p[predicate=mad:system/begin/team_member/cancel] run function mad:system/begin/team_member/cancel
execute as @p[predicate=mad:system/begin/team_member/reset] run function mad:system/begin/team_member/reset
execute as @p[predicate=mad:system/begin/team_member/ok,predicate=mad:system/begin/team_member/all_team_exists_member] run function mad:system/begin/team_member/ok