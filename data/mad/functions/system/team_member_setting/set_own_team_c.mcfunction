#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set own team c
team join TeamC @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"黄チーム","color":"yellow","bold":true},{"text":" に設定されました。","color":"green"}]
replaceitem entity @s armor.head minecraft:yellow_dye{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:39} 1

advancement revoke @s only mad:set_team/be_hit_by_team_c

function mad:system/team_member_setting/change_to