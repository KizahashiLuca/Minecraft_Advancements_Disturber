#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:white_banner{display:{Name:'"\\u00A7r\\u00A7c前へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:white_banner{display:{Name:'"\\u00A7r\\u00A7c次へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set inventory of map
execute if score #mad WorldBorder matches 0 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f制限なし"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 100 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f100×100"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 200 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f200×200"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 300 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f300×300"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 400 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f400×400"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 500 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f500×500"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 600 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f600×600"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 700 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f700×700"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 800 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f800×800"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 900 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f900×900"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1000 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1000×1000"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1100 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1100×1100"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1200 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1200×1200"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1300 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1300×1300"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1400 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1400×1400"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1500 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1500×1500"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1600 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1600×1600"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1700 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1700×1700"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1800 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1800×1800"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 1900 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f1900×1900"'},HideFlags:39} 1
execute if score #mad WorldBorder matches 2000 run replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f2000×2000"'},HideFlags:39} 1
