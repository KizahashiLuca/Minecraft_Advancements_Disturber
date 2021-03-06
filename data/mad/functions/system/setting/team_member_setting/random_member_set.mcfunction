#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Random member set
execute if score #mad TeamNumber matches 1.. as @p[tag=Participant,tag=NotSetTeam,sort=random] run function mad:system/setting/team_member_setting/set_team_random/team_a
execute if score #mad TeamNumber matches 2.. as @p[tag=Participant,tag=NotSetTeam,sort=random] run function mad:system/setting/team_member_setting/set_team_random/team_b
execute if score #mad TeamNumber matches 3.. as @p[tag=Participant,tag=NotSetTeam,sort=random] run function mad:system/setting/team_member_setting/set_team_random/team_c
execute if score #mad TeamNumber matches 4.. as @p[tag=Participant,tag=NotSetTeam,sort=random] run function mad:system/setting/team_member_setting/set_team_random/team_d
execute if score #mad TeamNumber matches 5.. as @p[tag=Participant,tag=NotSetTeam,sort=random] run function mad:system/setting/team_member_setting/set_team_random/team_e

execute unless entity @p[tag=Participant,tag=NotSetTeam] run function mad:system/pre_preparation/change_to
execute if entity @p[tag=Participant,tag=NotSetTeam] run function mad:system/setting/team_member_setting/random_member_set