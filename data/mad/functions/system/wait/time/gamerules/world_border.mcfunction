#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 物資投下間隔（秒）:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank

## World border
scoreboard players set ワールドボーダー Sidebar 2147483647
scoreboard players operation （ブロック四方）: Sidebar = #mad WorldBorder
scoreboard players display numberformat （ブロック四方）: Sidebar styled {"color":"green"}