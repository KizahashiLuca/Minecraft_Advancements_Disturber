#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
execute if score #mad TeamNumber matches 1.. run replaceitem entity @p[tag=Host] inventory.11 minecraft:pink_dye{display:{Name:'"\\u00A7r\\u00A7c赤チーム"'},Tags:["TeamA","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 2.. run replaceitem entity @p[tag=Host] inventory.12 minecraft:light_blue_dye{display:{Name:'"\\u00A7r\\u00A79青チーム"'},Tags:["TeamB","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 3.. run replaceitem entity @p[tag=Host] inventory.13 minecraft:yellow_dye{display:{Name:'"\\u00A7r\\u00A7e黄チーム"'},Tags:["TeamC","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 4.. run replaceitem entity @p[tag=Host] inventory.14 minecraft:lime_dye{display:{Name:'"\\u00A7r\\u00A7a緑チーム"'},Tags:["TeamD","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 5.. run replaceitem entity @p[tag=Host] inventory.15 minecraft:purple_dye{display:{Name:'"\\u00A7r\\u00A75紫チーム"'},Tags:["TeamE","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 1.. run replaceitem entity @p[tag=Host] hotbar.2 minecraft:pink_dye{display:{Name:'"\\u00A7r\\u00A7c赤チーム"'},Tags:["TeamA","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 2.. run replaceitem entity @p[tag=Host] hotbar.3 minecraft:light_blue_dye{display:{Name:'"\\u00A7r\\u00A79青チーム"'},Tags:["TeamB","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 3.. run replaceitem entity @p[tag=Host] hotbar.4 minecraft:yellow_dye{display:{Name:'"\\u00A7r\\u00A7e黄チーム"'},Tags:["TeamC","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 4.. run replaceitem entity @p[tag=Host] hotbar.5 minecraft:lime_dye{display:{Name:'"\\u00A7r\\u00A7a緑チーム"'},Tags:["TeamD","MADitem"],HideFlags:39} 1
execute if score #mad TeamNumber matches 4.. run replaceitem entity @p[tag=Host] hotbar.6 minecraft:purple_dye{display:{Name:'"\\u00A7r\\u00A75紫チーム"'},Tags:["TeamE","MADitem"],HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.22 minecraft:map{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set nether_star above selected time limit
replaceitem entity @p[tag=Host,team=TeamA] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7c赤チーム"'},HideFlags:39} 1
replaceitem entity @p[tag=Host,team=TeamB] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A79青チーム"'},HideFlags:39} 1
replaceitem entity @p[tag=Host,team=TeamC] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7e黄チーム"'},HideFlags:39} 1
replaceitem entity @p[tag=Host,team=TeamD] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7a緑チーム"'},HideFlags:39} 1
replaceitem entity @p[tag=Host,team=TeamE] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A75紫チーム"'},HideFlags:39} 1