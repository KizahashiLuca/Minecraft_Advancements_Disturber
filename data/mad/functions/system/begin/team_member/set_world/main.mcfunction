#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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