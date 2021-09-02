#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Give bonus time - green
scoreboard players operation @p[team=TeamD,tag=Leader] Second += #mad RandomAnswer
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += #mad RandomAnswer
scoreboard players add @p[team=TeamD,tag=Leader] GetMinecartCount 1
tellraw @a[team=TeamD] ["",{"text":"[支援物資]  ","color":"green"},{"text":"緑チーム","color":"green","bold":true},{"text":" に ","color":"green"},{"score":{"name":"#mad","objective":"RandomAnswer"},"color":"green","bold":true},{"text":" 秒のボーナスタイムが付与されました。","color":"green"}]

## Grant advancement
advancement grant @p[team=TeamD,tag=Leader] only mad:potage00/find_minecart