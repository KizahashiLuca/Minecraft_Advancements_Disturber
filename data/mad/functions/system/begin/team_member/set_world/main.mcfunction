#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set world
worldborder set 32 0

## Teleport
tp @a 0.5 312.5 0.5 0 0

## Set block
execute positioned 0.5 310 0.5 run function mad:system/begin/team_member/set_world/set_block

## Effect
function mad:system/begin/team_member/effect/main