#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set own team c
team join TeamC @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に設定されました。","color":"green"}]
loot replace entity @s armor.head loot mad:team_member_setting/player_head/team_c

advancement revoke @s only mad:set_team/be_hit_by_team_c

function mad:system/team_member_setting/change_to