#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set own team b
team join TeamB @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"青チーム","color":"blue","bold":true},{"text":" に設定されました。","color":"green"}]
replaceitem entity @s armor.head minecraft:light_blue_dye{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:39} 1

advancement revoke @s only mad:set_team/be_hit_by_team_b

function mad:system/team_member_setting/change_to