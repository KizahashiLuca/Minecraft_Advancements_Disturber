#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Select team member setting
team leave @a
tag @a[tag=Participant] add NotSetTeam

clear @a
team join TeamA @p[tag=Host]

function mad:system/setting/team_member_setting/change_to