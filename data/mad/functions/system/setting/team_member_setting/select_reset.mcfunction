#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Select team member setting
team leave @a
tag @a[tag=Participant] add NotSetTeam

clear @a
team join TeamA @p[tag=Host]

function mad:system/setting/team_member_setting/change_to