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
scoreboard objectives setdisplay sidebar Sidebar
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players reset 難易度：ピースフル Sidebar
execute if predicate mad:gamerules/difficulty/easy run scoreboard players reset 難易度：イージー Sidebar
execute if predicate mad:gamerules/difficulty/normal run scoreboard players reset 難易度：ノーマル Sidebar
execute if predicate mad:gamerules/difficulty/hard run scoreboard players reset 難易度：ハード Sidebar
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players reset 難易度：ハードコア Sidebar
execute if predicate mad:gamerules/match_mode/individual/one run scoreboard players set マッチモード：ソロ戦 Sidebar 1
execute if predicate mad:gamerules/match_mode/individual/not_one run scoreboard players operation マッチモード：個人戦 Sidebar = #mad NumOfParticipants
execute if predicate mad:gamerules/match_mode/team run scoreboard players operation マッチモード：チーム戦 Sidebar = #mad NumberOfTeams