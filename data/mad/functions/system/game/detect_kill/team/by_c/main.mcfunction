#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## PvP on time
execute if predicate mad:phase/game/pvp_on run function mad:system/game/detect_kill/team/by_c/pvp_on

## PvP off time
execute if predicate mad:phase/game/pvp_off run function mad:system/game/detect_kill/team/by_c/pvp_off

## Revoke advancements
advancement revoke @s only mad:system/game/detect_kill/team/by_c