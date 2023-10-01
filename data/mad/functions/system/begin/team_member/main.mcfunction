#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/begin/team_member/login_midtime] run function mad:system/begin/team_member/login_midtime

## Set block
execute positioned 0.5 310 0.5 unless block ~ ~1 ~ minecraft:beacon run function mad:system/begin/team_member/set_world/set_block

## Effect
execute positioned 0.5 311 0.5 run function mad:system/begin/team_member/effect/main

## Leave from team
execute run function mad:system/begin/team_member/leave_team/main

## Join to team
execute positioned 0.5 311 0.5 run function mad:system/begin/team_member/join_team/main

## Title message
function mad:system/begin/team_member/title

## Detect inventory
execute as @p[predicate=mad:system/begin/team_member/master] run function mad:system/begin/team_member/change_to
execute as @p[predicate=mad:system/begin/team_member/cancel] run function mad:system/begin/team_member/cancel
execute as @p[predicate=mad:system/begin/team_member/reset] run function mad:system/begin/team_member/reset
execute as @p[predicate=mad:system/begin/team_member/ok,predicate=mad:system/begin/team_member/all_team_exists_member] run function mad:system/begin/team_member/ok