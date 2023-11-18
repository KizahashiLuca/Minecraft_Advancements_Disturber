#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Display statics
tellraw @a ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  ","color":"white","bold":false,"italic":false},{"text":"進捗 統計","color":"white","bold":true,"italic":false}]
execute if predicate mad:gamerules/match_mode/individual as @a[predicate=mad:player/participant] run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"selector":"@s","color":"green","bold":true},{"score":{"name":"@s","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"@s","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"@s","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"@s","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"text":"赤チーム","color":"red","bold":true},{"score":{"name":"#mad_team_a","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#mad_team_a","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"#mad_team_a","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"#mad_team_a","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"text":"青チーム","color":"blue","bold":true},{"score":{"name":"#mad_team_b","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#mad_team_b","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"#mad_team_b","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"#mad_team_b","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"text":"黄チーム","color":"yellow","bold":true},{"score":{"name":"#mad_team_c","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#mad_team_c","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"#mad_team_c","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"#mad_team_c","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"text":"緑チーム","color":"green","bold":true},{"score":{"name":"#mad_team_d","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#mad_team_d","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"#mad_team_d","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"#mad_team_d","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run tellraw @a ["",{"translate":"    %s\n      達成進捗個数 : %s個\n      物資獲得回数 : %s回\n      獲得生存時間 : %s秒\n        内,プレイヤー撃破ボーナス : %s秒","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"score":{"name":"#mad_team_e","objective":"HasAdvancements"},"color":"red","bold":true},{"score":{"name":"#mad_team_e","objective":"GetMinecartCount"},"color":"red","bold":true},{"score":{"name":"#mad_team_e","objective":"TimeLimit"},"color":"red","bold":true},{"score":{"name":"#mad_team_e","objective":"GetTimeLimit"},"color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
function mad:system/common/message/end