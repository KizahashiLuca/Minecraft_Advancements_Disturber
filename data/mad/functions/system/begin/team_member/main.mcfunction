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