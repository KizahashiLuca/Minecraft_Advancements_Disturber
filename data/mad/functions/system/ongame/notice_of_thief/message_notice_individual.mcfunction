#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Send message
tellraw @a[tag=DetectThief] ["",{"text":"[怪盗予告] 全員に怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]