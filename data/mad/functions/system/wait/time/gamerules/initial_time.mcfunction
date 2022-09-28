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
execute if predicate mad:gamerules/match_mode/individual/one run scoreboard players reset マッチモード：ソロ戦 Sidebar
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players reset マッチモード：個人戦 Sidebar
execute if predicate mad:gamerules/match_mode/team run scoreboard players reset マッチモード：チーム戦 Sidebar
scoreboard players operation 初期生存時間（秒）： Sidebar = #mad TimeLimit