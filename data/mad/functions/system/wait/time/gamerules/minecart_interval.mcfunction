#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 追加生存時間（秒）:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat

## Cart interval
scoreboard players operation 物資投下間隔（秒）: Sidebar = #mad CartInterval
scoreboard players display numberformat 物資投下間隔（秒）: Sidebar styled {"color":"green"}