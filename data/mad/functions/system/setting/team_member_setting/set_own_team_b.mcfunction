#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set own team b
team join TeamB @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"青チーム","color":"blue","bold":true},{"text":" に設定されました。","color":"green"}]
loot replace entity @s armor.head loot mad:team_member_setting/player_head/team_b

advancement revoke @s only mad:system/set_team/be_hit_by_team_b

function mad:system/setting/team_member_setting/change_to