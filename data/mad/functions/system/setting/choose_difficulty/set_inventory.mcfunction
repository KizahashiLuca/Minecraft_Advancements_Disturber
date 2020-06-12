#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.12 minecraft:wooden_sword{display:{Name:"\"\\u00A7rイージー\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:stone_sword{display:{Name:"\"\\u00A7rノーマル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:diamond_sword{display:{Name:"\"\\u00A7rハード\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Set nether_star above selected difficulty
execute if score #mad Difficulty matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad Difficulty matches 2 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #mad Difficulty matches 3 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1