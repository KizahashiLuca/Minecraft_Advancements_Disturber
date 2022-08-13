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

## Leave from team
execute in mad:world run function mad:system/begin/team_member/leave_team/main

## Join to team
execute in mad:world run function mad:system/begin/team_member/join_team/main

## Title message
function mad:system/begin/team_member/title

## Detect inventory
execute as @p[predicate=mad:system/begin/team_member/master] run function mad:system/begin/team_member/change_to
execute as @p[predicate=mad:system/begin/team_member/cancel] run function mad:system/begin/team_member/cancel
execute as @p[predicate=mad:system/begin/team_member/reset] run function mad:system/begin/team_member/reset
execute as @p[predicate=mad:system/begin/team_member/ok,predicate=mad:system/begin/team_member/all_team_exists_member] run function mad:system/begin/team_member/ok