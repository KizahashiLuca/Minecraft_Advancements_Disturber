#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players reset 天候サイクル：なし Sidebar
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players reset 天候サイクル：あり Sidebar
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players set 昼夜サイクル：なし Sidebar 0
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players set 昼夜サイクル：あり Sidebar 1