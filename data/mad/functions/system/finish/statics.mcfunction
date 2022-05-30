#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Display statics
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"進捗 統計","color":"white","bold":true}]
execute if score #mad IsTeam matches 0 as @a[tag=Participant] run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@s","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@s","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@s","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@s","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤チーム","color":"red","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 2.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"青チーム","color":"blue","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 3.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"黄チーム","color":"yellow","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 4.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"緑チーム","color":"green","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad IsTeam matches 1 if score #mad TeamNumber matches 5.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      物資獲得回数 : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"GetMinecartCount"},"color":"red","bold":true},{"text":"回","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得生存時間 : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
function mad:system/finish/message_common_end