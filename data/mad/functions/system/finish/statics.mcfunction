###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Display statics
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"進捗 統計","color":"white","bold":"true"}]
execute as @a[team=Participant] run tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@s","color":"green","bold":true},{"text":"\n","color":"white"},{"text":"      達成進捗個数 : ","color":"white"},{"score":{"name":"@s","objective":"HasAdvancements"},"color":"red","bold":true},{"text":"個","color":"white"},{"text":"\n","color":"white"},{"text":"      獲得制限時間 : ","color":"white"},{"score":{"name":"@s","objective":"TimeLimit"},"color":"red","bold":true},{"text":"秒","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]