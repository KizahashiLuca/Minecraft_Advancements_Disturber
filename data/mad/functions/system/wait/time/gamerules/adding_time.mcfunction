#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 初期生存時間（秒）:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat

## Adding time
scoreboard players operation 追加生存時間（秒）: Sidebar = #mad AddingTime
scoreboard players display numberformat 追加生存時間（秒）: Sidebar styled {"color":"green"}