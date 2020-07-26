#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
execute if score #mad IsTeam matches 0 run replaceitem entity @p[tag=Host] inventory.4 minecraft:carved_pumpkin{display:{Name:'"\\u00A7r\\u00A7f個人戦"'},HideFlags:39} 1
execute if score #mad IsTeam matches 1 run replaceitem entity @p[tag=Host] inventory.4 minecraft:jack_o_lantern{display:{Name:'"\\u00A7r\\u00A7fチーム戦"'},HideFlags:39} 1

replaceitem entity @p[tag=Host] inventory.11 minecraft:clock{display:{Name:'"\\u00A7r\\u00A7f初期時間制限設定"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:iron_sword{display:{Name:'"\\u00A7r\\u00A7f難易度設定"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7fワールドボーダー設定"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:writable_book{display:{Name:'"\\u00A7r\\u00A7fゲームルール設定"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:emerald{display:{Name:'"\\u00A7r\\u00A7f追加時間設定"'},HideFlags:39} 1

execute if score #mad IsTeam matches 1 run replaceitem entity @p[tag=Host] inventory.17 minecraft:phantom_membrane{display:{Name:'"\\u00A7r\\u00A7fチーム戦設定"'},HideFlags:39} 1

replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dゲームキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7bゲームスタート"'},HideFlags:39} 1