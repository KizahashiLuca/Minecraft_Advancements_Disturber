#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Select team member setting
team join Participant @a[team=TeamA]
team join Participant @a[team=TeamB]
team join Participant @a[team=TeamC]
team join Participant @a[team=TeamD]
team join Participant @a[team=TeamE]

clear @a
team join TeamA @p[tag=Host]

function mad:system/team_member_setting/change_to