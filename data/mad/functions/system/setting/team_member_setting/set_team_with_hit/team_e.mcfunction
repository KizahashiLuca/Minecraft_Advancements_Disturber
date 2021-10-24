#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set own team e
tag @s remove NotSetTeam
team join TeamE @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に設定されました。","color":"green"}]
loot replace entity @s armor.head loot mad:team_member_setting/player_head/team_e

advancement revoke @s only mad:system/set_team/be_hit_by_team_e

function mad:system/setting/team_member_setting/change_to