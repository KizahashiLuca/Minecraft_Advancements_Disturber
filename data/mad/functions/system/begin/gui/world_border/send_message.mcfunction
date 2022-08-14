#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send world border messages
tellraw @a[predicate=mad:system/begin/gui/world_border/unlimited] ["",{"text":"[ワールドボーダー] ","color":"green"},{"text":"制限なし","color":"green","bold":true}]
tellraw @a[predicate=mad:system/begin/gui/world_border/limited] ["",{"text":"[ワールドボーダー] ","color":"green"},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green","bold":true},{"text":"×","color":"green","bold":true},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green","bold":true}]

## Change to root
function mad:system/begin/gui/root/change_to