#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:clock{display:{Name:"\"\\u00A7r100秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:clock{display:{Name:"\"\\u00A7r200秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:clock{display:{Name:"\"\\u00A7r300秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:clock{display:{Name:"\"\\u00A7r400秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:clock{display:{Name:"\"\\u00A7r500秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Set nether_star above selected time limit
execute if score #mad TimeLimit matches 100 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad TimeLimit matches 200 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad TimeLimit matches 300 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad TimeLimit matches 400 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad TimeLimit matches 500 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1