#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @a[tag=Participant] add NotSetTeam

## Change to team member
execute if score #mad SetTeamManual matches 0 run function mad:system/setting/team_member_setting/random_member_set
execute if score #mad SetTeamManual matches 1 run function mad:system/setting/team_member_setting/change_to
