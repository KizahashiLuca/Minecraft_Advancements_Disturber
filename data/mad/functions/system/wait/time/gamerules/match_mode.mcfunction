#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 難易度:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank

## Common
scoreboard players set マッチモード: Sidebar 2147483647

## Solo mode
execute if predicate mad:gamerules/match_mode/individual/one run scoreboard players display numberformat マッチモード: Sidebar fixed [{"text":"ソロ","color":"green"}]

## Individual match mode
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players display numberformat マッチモード: Sidebar fixed [{"text":"個人戦","color":"green"}]
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players operation 人数: Sidebar = #mad NumOfParticipants
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players display numberformat 人数: Sidebar styled {"color":"green"}

## Team match mode
execute if predicate mad:gamerules/match_mode/team run scoreboard players display numberformat マッチモード: Sidebar fixed [{"text":"チーム戦","color":"green"}]
execute if predicate mad:gamerules/match_mode/team run scoreboard players operation チーム数: Sidebar = #mad NumberOfTeams
execute if predicate mad:gamerules/match_mode/team run scoreboard players display numberformat チーム数: Sidebar styled {"color":"green"}