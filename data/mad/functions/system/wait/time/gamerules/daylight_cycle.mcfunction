#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players reset 天候サイクル：なし Sidebar
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players reset 天候サイクル：あり Sidebar
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players set 昼夜サイクル：なし Sidebar 0
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players set 昼夜サイクル：あり Sidebar 1