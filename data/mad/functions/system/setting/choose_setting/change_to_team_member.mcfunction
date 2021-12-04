#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @a[tag=Participant] add NotSetTeam

## Change to team member
execute if score #mad SetTeamManual matches 0 run function mad:system/setting/team_member_setting/random_member_set
execute if score #mad SetTeamManual matches 1 run function mad:system/setting/team_member_setting/change_to
