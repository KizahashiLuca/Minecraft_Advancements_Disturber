#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send member setting messages
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_1] ["",{"text":"赤チーム","color":"red","bold":true,"italic":false},{"text":" メンバー : ","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_1] ["",{"selector":"@a[predicate=mad:player/team/a]"}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_2] ["",{"text":"青チーム","color":"blue","bold":true,"italic":false},{"text":" メンバー : ","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_2] ["",{"selector":"@a[predicate=mad:player/team/b]"}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_3] ["",{"text":"黄チーム","color":"yellow","bold":true,"italic":false},{"text":" メンバー : ","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_3] ["",{"selector":"@a[predicate=mad:player/team/c]"}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_4] ["",{"text":"緑チーム","color":"green","bold":true,"italic":false},{"text":" メンバー : ","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_4] ["",{"selector":"@a[predicate=mad:player/team/d]","italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_5] ["",{"text":"紫チーム","color":"dark_purple","bold":true},{"text":" メンバー : ","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/number_of_teams/ge_5] ["",{"selector":"@a[predicate=mad:player/team/e]","italic":false}]