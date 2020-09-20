#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Random member set
execute if score #mad TeamNumber matches 1.. run team join TeamA @r[team=Participant]
execute if score #mad TeamNumber matches 2.. run team join TeamB @r[team=Participant]
execute if score #mad TeamNumber matches 3.. run team join TeamC @r[team=Participant]
execute if score #mad TeamNumber matches 4.. run team join TeamD @r[team=Participant]
execute if score #mad TeamNumber matches 5.. run team join TeamE @r[team=Participant]

execute unless entity @p[team=Participant] run function mad:system/pre_preparation_team/change_to
execute if entity @p[team=Participant] run function mad:system/team_member_setting/random_member_set