#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set own team d
team join TeamD @s
tellraw @s ["",{"text":"[チーム設定] あなたは ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
replaceitem entity @s armor.head minecraft:lime_dye{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:39} 1

function mad:system/team_member_setting/change_to