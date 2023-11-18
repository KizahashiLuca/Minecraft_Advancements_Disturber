#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Game system
execute if predicate mad:phase/stop run function mad:system/finish/stop_game/main
execute if predicate mad:phase/exit run function mad:system/finish/exit_game/main
execute if predicate mad:phase/game run function mad:system/game/main
execute if predicate mad:phase/fall run function mad:system/fall/main
execute if predicate mad:phase/wait run function mad:system/wait/main
execute if predicate mad:phase/begin/team_member run function mad:system/begin/team_member/main
execute if predicate mad:phase/begin/gui run function mad:system/begin/gui/branch

## Item system
execute if predicate mad:phase/trial run function mad:system/trial/main 
execute if predicate mad:phase/in_game run function mad:system/item/main