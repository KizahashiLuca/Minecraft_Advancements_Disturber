#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set own team e
team join TeamE @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" に設定されました。","color":"green"}]
replaceitem entity @s armor.head minecraft:purple_dye{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:39} 1

function mad:system/team_member_setting/change_to