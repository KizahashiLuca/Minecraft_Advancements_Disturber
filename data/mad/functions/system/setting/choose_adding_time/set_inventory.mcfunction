#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f100秒"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f200秒"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f300秒"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f400秒"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f500秒"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set nether_star above selected time limit
execute if score #mad AddingTime matches 100 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39} 1
execute if score #mad AddingTime matches 200 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39} 1
execute if score #mad AddingTime matches 300 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39} 1
execute if score #mad AddingTime matches 400 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39} 1
execute if score #mad AddingTime matches 500 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39} 1