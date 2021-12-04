#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set own team d
tag @s remove NotSetTeam
team join TeamD @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
loot replace entity @s armor.head loot mad:team_member_setting/player_head/team_d

advancement revoke @s only mad:system/set_team/be_hit_by_team_d

function mad:system/setting/team_member_setting/change_to