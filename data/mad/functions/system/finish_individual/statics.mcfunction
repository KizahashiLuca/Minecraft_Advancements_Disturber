#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Display statics
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"進捗 統計","color":"white","bold":true}]
execute as @a[team=Participant] run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@s","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@s","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"},{"text":"\n","color":"white"},{"text":"        内,プレイヤー撃破ボーナス : ","color":"white"},{"score":{"name":"@s","objective":"GetTimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]