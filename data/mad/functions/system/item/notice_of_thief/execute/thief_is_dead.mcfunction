#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send message - to thief
tellraw @s ["",{"text":"[怪盗予告] あなたが死亡しているため、 ","color":"green","bold":false,"italic":false},{"text":"アイテムを盗めませんでした。","color":"green","bold":false,"italic":false}]

## Send message - to all player
tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief] ["",{"text":"[怪盗予告] 怪盗が死亡しているため、 ","color":"green","bold":false,"italic":false},{"text":"アイテムは盗まれませんでした。","color":"green","bold":false,"italic":false}]