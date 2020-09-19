#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Time system
function mad:system/pre_preparation_team/tick

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation_team/change_to