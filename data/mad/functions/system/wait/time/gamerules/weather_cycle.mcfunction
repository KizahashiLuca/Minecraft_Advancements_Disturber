#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
scoreboard players reset ワールドボーダー Sidebar
scoreboard players reset （ブロック四方）： Sidebar
execute if predicate mad:gamerules/weather_cycle/false run scoreboard players set 天候サイクル：なし Sidebar 0
execute if predicate mad:gamerules/weather_cycle/true run scoreboard players set 天候サイクル：あり Sidebar 1