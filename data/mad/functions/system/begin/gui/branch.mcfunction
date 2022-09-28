#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/begin/gui/login_midtime] run function mad:system/begin/gui/login_midtime

## Title message
function mad:system/begin/gui/title

## Branch
execute if predicate mad:phase/begin/gui/team_match/other_rules run function mad:system/begin/gui/team_match/other_rules/main
execute if predicate mad:phase/begin/gui/team_match/death_penalty_time run function mad:system/begin/gui/team_match/death_penalty_time/main
execute if predicate mad:phase/begin/gui/team_match/kill_time run function mad:system/begin/gui/team_match/kill_time/main
execute if predicate mad:phase/begin/gui/team_match run function mad:system/begin/gui/team_match/main
execute if predicate mad:phase/begin/gui/world_border run function mad:system/begin/gui/world_border/main
execute if predicate mad:phase/begin/gui/gamerules run function mad:system/begin/gui/gamerules/main
execute if predicate mad:phase/begin/gui/minecart_interval run function mad:system/begin/gui/minecart_interval/main
execute if predicate mad:phase/begin/gui/adding_time run function mad:system/begin/gui/adding_time/main
execute if predicate mad:phase/begin/gui/initial_time run function mad:system/begin/gui/initial_time/main
execute if predicate mad:phase/begin/gui/root run function mad:system/begin/gui/root/main