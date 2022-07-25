#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send message - to thief
tellraw @s ["",{"text":"[怪盗予告] あなたが死亡しているため、アイテムを盗めませんでした。","color":"green","bold":false,"italic":false}]

## Send message - to all player
tellraw @a[predicate=mad:system/common/notice_of_thief/detect_not_thief] ["",{"text":"[怪盗予告] 怪盗が死亡しているため、アイテムは盗まれませんでした。","color":"green","bold":false,"italic":false}]