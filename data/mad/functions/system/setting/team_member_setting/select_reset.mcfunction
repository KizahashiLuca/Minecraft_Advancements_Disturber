#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Select team member setting
team leave @a
tag @a[tag=Participant] add NotSetTeam

clear @a
team join TeamA @p[tag=Host]

function mad:system/setting/team_member_setting/change_to