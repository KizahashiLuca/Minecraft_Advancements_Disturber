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
scoreboard players reset マッチモード:
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players reset 人数:
execute if predicate mad:gamerules/match_mode/team run scoreboard players reset チーム数:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat

## Initial time
scoreboard players operation 初期生存時間（秒）: Sidebar = #mad TimeLimit
scoreboard players display numberformat 初期生存時間（秒）: Sidebar styled {"color":"green"}