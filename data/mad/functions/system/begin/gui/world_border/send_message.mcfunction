#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send world border messages
tellraw @a[predicate=mad:system/begin/gui/world_border/unlimited] ["",{"translate":"[ワールドボーダー] %s","with":[{"text":"制限なし","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:system/begin/gui/world_border/limited] ["",{"translate":"[ワールドボーダー] %s%s%s","with":[{"score":{"name":"#mad","objective":"WorldBorder"},"bold":true},{"text":"×","bold":true},{"score":{"name":"#mad","objective":"WorldBorder"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to