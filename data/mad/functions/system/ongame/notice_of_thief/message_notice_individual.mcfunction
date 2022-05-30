#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Send message
tellraw @a[tag=DetectThief] ["",{"text":"[怪盗予告] 全員に怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]