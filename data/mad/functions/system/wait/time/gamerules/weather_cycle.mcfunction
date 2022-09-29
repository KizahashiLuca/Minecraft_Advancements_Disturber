#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
scoreboard players reset ワールドボーダー Sidebar
scoreboard players reset （ブロック四方）： Sidebar
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players set 天候サイクル：なし Sidebar 0
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players set 天候サイクル：あり Sidebar 1