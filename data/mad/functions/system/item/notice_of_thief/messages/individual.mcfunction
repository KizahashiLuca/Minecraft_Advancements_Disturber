#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send message
tellraw @a[predicate=mad:system/item/notice_of_thief/detect_thief] ["",{"text":"[怪盗予告] 怪盗予告しました。 ","color":"green","bold":false,"italic":false},{"translate":"%s秒後に誰かからアイテムを盗みます。","with":[{"score":{"name":"#mad","objective":"ThiefSecond"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green","bold":false,"italic":false}]