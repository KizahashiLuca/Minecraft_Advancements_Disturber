#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Leave from team
team leave @s

tellraw @a ["",{"text":"leave_team"}]

## Set inventory
function mad:system/begin/team_member/change_to