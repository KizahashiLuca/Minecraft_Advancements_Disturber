#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Game system
execute if score #mad Phase matches 99 run function mad:system/finish/stop_game/main
execute if score #mad Phase matches 22 run function mad:system/finish/exit_game/main
execute if score #mad Phase matches 21 if score #mad IsTeam matches 0 run function mad:system/ongame_individual/main
execute if score #mad Phase matches 21 if score #mad IsTeam matches 1 run function mad:system/ongame_team/main
execute if predicate mad:phase/fall run function mad:system/fall/main
execute if predicate mad:phase/wait run function mad:system/wait/main
execute if predicate mad:phase/begin/team_member run function mad:system/begin/team_member/main
execute if predicate mad:phase/begin/gui run function mad:system/begin/gui/branch

## Item system
execute if predicate mad:phase/in_game run function mad:system/item/main