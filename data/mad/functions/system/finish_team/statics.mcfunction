#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Display statics
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"進捗 統計","color":"white","bold":true}]
execute if score #mad TeamNumber matches 1.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"赤チーム","color":"red","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad TeamNumber matches 2.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"青チーム","color":"blue","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad TeamNumber matches 3.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"黄チーム","color":"yellow","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad TeamNumber matches 4.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"緑チーム","color":"green","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
execute if score #mad TeamNumber matches 5.. run tellraw @a ["",{"text":"    ","color":"white"},{"text":"紫チーム","color":"dark_purple","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]