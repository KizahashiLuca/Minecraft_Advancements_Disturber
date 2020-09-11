#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.9 minecraft:wooden_sword{display:{Name:'"\\u00A7r\\u00A7fフレンドリーファイア"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.10 minecraft:stone_sword{display:{Name:'"\\u00A7r\\u00A7f当たり判定"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:golden_sword{display:{Name:'"\\u00A7r\\u00A7fネームタグ表示"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:iron_sword{display:{Name:'"\\u00A7r\\u00A7f透明可視化"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:diamond_sword{display:{Name:'"\\u00A7r\\u00A7f死亡メッセージ"'},HideFlags:39} 1
#execute if score #mad SetTeamManual matches 0 run replaceitem entity @p[tag=Host] inventory.15 minecraft:carved_pumpkin{display:{Name:'"\\u00A7r\\u00A7fチームメンバー ランダム選択"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:jack_o_lantern{display:{Name:'"\\u00A7r\\u00A7fチームメンバー 手動選択"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:armor_stand{display:{Name:'"\\u00A7r\\u00A7fチーム数"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.22 minecraft:map{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set nether_star above selected time limit
execute if score #mad friendlyFire matches 0 run replaceitem entity @p[tag=Host] inventory.0 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad collisionRule matches 0 run replaceitem entity @p[tag=Host] inventory.1 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad VisibleName matches 0 run replaceitem entity @p[tag=Host] inventory.2 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad VisibleInvis matches 0 run replaceitem entity @p[tag=Host] inventory.3 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad VisibleDeath matches 0 run replaceitem entity @p[tag=Host] inventory.4 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad SetTeamManual matches 0 run replaceitem entity @p[tag=Host] inventory.6 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad friendlyFire matches 1 run replaceitem entity @p[tag=Host] inventory.0 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad collisionRule matches 1 run replaceitem entity @p[tag=Host] inventory.1 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad VisibleName matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad VisibleInvis matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad VisibleDeath matches 1 run replaceitem entity @p[tag=Host] inventory.4 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad SetTeamManual matches 1 run replaceitem entity @p[tag=Host] inventory.6 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1

execute if score #mad TeamNumber matches 2 run replaceitem entity @p[tag=Host] inventory.8 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f2チーム"'},HideFlags:39} 2
execute if score #mad TeamNumber matches 3 run replaceitem entity @p[tag=Host] inventory.8 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f3チーム"'},HideFlags:39} 3
execute if score #mad TeamNumber matches 4 run replaceitem entity @p[tag=Host] inventory.8 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f4チーム"'},HideFlags:39} 4
execute if score #mad TeamNumber matches 5 run replaceitem entity @p[tag=Host] inventory.8 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f5チーム"'},HideFlags:39} 5